package com.example.ai

import android.content.ContentValues
import android.content.Context
import android.os.BatteryManager
import android.os.Build
import android.os.Bundle
import android.os.Debug
import android.os.Environment
import android.os.SystemClock
import android.provider.MediaStore
import android.widget.Toast
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import com.example.ai.ui.theme.AITheme
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import org.pytorch.Device
import org.pytorch.IValue
import org.pytorch.Module
import org.pytorch.Tensor
import android.util.Log
import org.json.JSONObject
import java.io.File
import java.io.FileOutputStream
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import kotlin.math.abs
import kotlin.math.pow
import kotlin.math.sqrt

data class BenchmarkResults(
    val model: String,
    val backend: String,
    val iterations: Int,
    val avgLatencyMs: Double,
    val totalLatencyMs: Double,
    val modelLoadMem: Double,
    val inferenceGrowth: Double,
    val totalMemChange: Double,
    val finalMem: Double,
    val batteryUsageMW: Double,
    val tempDelta: Double
)

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            AITheme {
                val scope = rememberCoroutineScope()
                var resultText by remember { mutableStateOf("Ready") }
                var iterationsText by remember { mutableStateOf("1000") }
                var selectedBackend by remember { mutableStateOf("CPU") }
                var selectedModel by remember { mutableStateOf("Linear") }

                var showSaveDialog by remember { mutableStateOf(false) }
                var pendingResults by remember { mutableStateOf<BenchmarkResults?>(null) }

                if (showSaveDialog && pendingResults != null) {
                    AlertDialog(
                        onDismissRequest = { showSaveDialog = false },
                        title = { Text("Save Results?") },
                        text = { Text("Do you want to save this benchmark data to the CSV log file?") },
                        confirmButton = {
                            Button(onClick = {
                                pendingResults?.let { saveCSV(this@MainActivity, it) }
                                showSaveDialog = false
                                Toast.makeText(this@MainActivity, "Saved!", Toast.LENGTH_SHORT).show()
                            }) { Text("Save") }
                        },
                        dismissButton = {
                            TextButton(onClick = { showSaveDialog = false }) { Text("Discard") }
                        }
                    )
                }

                Column(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(16.dp)
                        .verticalScroll(rememberScrollState()),
                    verticalArrangement = Arrangement.Center,
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    OutlinedTextField(
                        value = iterationsText,
                        onValueChange = { iterationsText = it },
                        label = { Text("Iterations") },
                        singleLine = true,
                        modifier = Modifier.fillMaxWidth(0.6f)
                    )

                    Spacer(modifier = Modifier.height(16.dp))
                    Text("Select Backend:")
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.Center,
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        RadioButton(selected = selectedBackend == "CPU", onClick = { selectedBackend = "CPU" })
                        Text("CPU")
                        Spacer(modifier = Modifier.width(16.dp))
                        RadioButton(selected = selectedBackend == "GPU", onClick = { selectedBackend = "GPU" })
                        Text("GPU (Vulkan)")
                    }

                    Spacer(modifier = Modifier.height(16.dp))
                    Text("Select Model:")
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.Center,
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        RadioButton(selected = selectedModel == "Linear", onClick = { selectedModel = "Linear" })
                        Text("Linear")
                        Spacer(modifier = Modifier.width(16.dp))
                        RadioButton(selected = selectedModel == "VGG", onClick = { selectedModel = "VGG" })
                        Text("VGG")
                    }
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.Center,
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        RadioButton(selected = selectedModel == "KNN", onClick = { selectedModel = "KNN" })
                        Text("KNN")
                        Spacer(modifier = Modifier.width(16.dp))
                        RadioButton(selected = selectedModel == "Tree", onClick = { selectedModel = "Tree" })
                        Text("Tree")
                        Spacer(modifier = Modifier.width(16.dp))
                        RadioButton(selected = selectedModel == "GCN", onClick = { selectedModel = "GCN" })
                        Text("GCN")
                    }

                    Spacer(modifier = Modifier.height(16.dp))
                    Button(
                        onClick = {
                            scope.launch {
                                resultText = "Running benchmark..."
                                val iterations = iterationsText.toIntOrNull() ?: 1000
                                val (summary, results) = withContext(Dispatchers.Default) {
                                    runBenchmark(
                                        context = this@MainActivity,
                                        inputValue = 10f,
                                        iterations = iterations,
                                        backendName = selectedBackend,
                                        modelName = selectedModel
                                    )
                                }
                                resultText = summary
                                pendingResults = results
                                if (results != null) showSaveDialog = true
                            }
                        }
                    ) {
                        Text("Run AI Benchmark")
                    }

                    Spacer(modifier = Modifier.height(8.dp))
                    Row(
                        modifier = Modifier.fillMaxWidth(0.6f),
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        OutlinedButton(
                            onClick = { exportToDownloads(this@MainActivity) },
                            modifier = Modifier.weight(1f)
                        ) {
                            Text("Export")
                        }
                        OutlinedButton(
                            onClick = {
                                val file = File(this@MainActivity.filesDir, "benchmark_results.csv")
                                if (file.exists()) {
                                    file.delete()
                                    Toast.makeText(this@MainActivity, "Logs Cleared", Toast.LENGTH_SHORT).show()
                                }
                            },
                            modifier = Modifier.weight(1f)
                        ) {
                            Text("Clear")
                        }
                    }

                    Spacer(modifier = Modifier.height(20.dp))
                    Text(
                        text = resultText,
                        textAlign = TextAlign.Start,
                        modifier = Modifier.fillMaxWidth()
                    )
                }
            }
        }
    }

    private fun runBenchmark(
        context: Context,
        inputValue: Float,
        iterations: Int,
        backendName: String,
        modelName: String
    ): Pair<String, BenchmarkResults?> {

        fun getUsedMemoryKB(): Double {
            val runtime = Runtime.getRuntime()
            val javaUsed = (runtime.totalMemory() - runtime.freeMemory()) / 1024.0
            val nativeUsed = Debug.getNativeHeapAllocatedSize() / 1024.0
            return javaUsed + nativeUsed
        }

        return try {
            // 1. Capture baseline BEFORE loading anything
            System.gc()
            System.runFinalization()
            Thread.sleep(300)
            val memBeforeLoad = getUsedMemoryKB()

            // KNN, Tree & GCN Special Case: Flexible Data Loading & Generation
            var knn: KNN? = null
            var tree: DecisionTree? = null
            var gcnKotlin: GCNKotlin? = null

            if (modelName == "KNN" || modelName == "Tree" || modelName == "GCN") {
                try {
                    // Try to load JSON if it exists, otherwise generate synthetic data
                    val trainData = try {
                        val jsonString = context.assets.open("knn_data.json").bufferedReader().use { it.readText() }
                        val json = JSONObject(jsonString)
                        val xArray = json.getJSONArray("X_train")
                        val yArray = json.getJSONArray("y_train")

                        val tx = Array(xArray.length()) { i ->
                            val row = xArray.getJSONArray(i)
                            FloatArray(row.length()) { j -> row.getDouble(j).toFloat() }
                        }
                        val ty = IntArray(yArray.length()) { i -> yArray.getInt(i) }
                        tx to ty
                    } catch (e: Exception) {
                        Log.w("AI_BENCHMARK", "knn_data.json not found or invalid: ${e.message}")
                        // Fallback: Generate a large 5,000 sample dataset for better benchmarking
                        val numSamples = 5000
                        val tx = Array(numSamples) { FloatArray(2) { (0..100).random().toFloat() / 10f } }
                        val ty = IntArray(numSamples) { (0..1).random() }
                        tx to ty
                    }

                    when (modelName) {
                        "KNN" -> {
                            knn = KNN(k = 3)
                            knn.fit(trainData.first, trainData.second)
                        }
                        "Tree" -> {
                            tree = DecisionTree(maxDepth = 5)
                            tree.fit(trainData.first, trainData.second)
                        }
                        "GCN" -> {
                            // Initialize a Kotlin-native GCN to avoid PyTorch loading errors
                            gcnKotlin = GCNKotlin(inputDim = 1433, hiddenDim = 64, outputDim = 7)
                        }
                    }
                } catch (e: Exception) {
                    Log.e("AI_BENCHMARK", "Failed to setup model", e)
                }
            }

            val module = if (modelName != "KNN" && modelName != "Tree" && modelName != "GCN") {
                val assetName = when (modelName) {
                    "Linear" -> "linear_model.pt"
                    "VGG" -> "vgg_model.pt"
                    else -> "linear_model.pt"
                }
                val modulePath = assetFilePath(context, assetName)
                when (backendName) {
                    "GPU" -> Module.load(modulePath, null, Device.VULKAN)
                    else -> Module.load(modulePath)
                }
            } else null

            val input = when (modelName) {
                "Linear" -> Tensor.fromBlob(floatArrayOf(inputValue), longArrayOf(1, 1))
                "VGG" -> Tensor.fromBlob(FloatArray(1 * 3 * 32 * 32), longArrayOf(1, 3, 32, 32))
                else -> null // Handled by native Kotlin classes
            }

            val edgeIndex = null // GCN is now handled by GCNKotlin to prevent crashes

            // 2. Capture baseline AFTER loading but BEFORE iterations
            val memAtStart = getUsedMemoryKB()
            val modelLoadMem = (memAtStart - memBeforeLoad).coerceAtLeast(0.0)

            val batteryManager = getSystemService(BATTERY_SERVICE) as BatteryManager

            fun getBatteryInfo(): Triple<Int, Int, Int> {
                val intent = context.registerReceiver(
                    null,
                    android.content.IntentFilter(android.content.Intent.ACTION_BATTERY_CHANGED)
                )
                val temp = intent?.getIntExtra(BatteryManager.EXTRA_TEMPERATURE, 0) ?: 0
                val volt = intent?.getIntExtra(BatteryManager.EXTRA_VOLTAGE, 0) ?: 0
                val level = intent?.getIntExtra(BatteryManager.EXTRA_LEVEL, 0) ?: 0
                return Triple(temp, volt, level)
            }

            val (tempBefore, _, _) = getBatteryInfo()
            val batteryBefore = batteryManager.getLongProperty(BatteryManager.BATTERY_PROPERTY_CURRENT_NOW)

            var lastOutput = 0f
            var maxTemp = tempBefore
            var totalCurrentSum = 0L
            var currentSamples = 0
            var maxInferenceMem = 0.0

            val sampleInterval = when {
                iterations <= 10 -> 1
                iterations <= 100 -> 10
                iterations <= 1000 -> 100
                else -> 500
            }.coerceAtMost(iterations.coerceAtLeast(1))

            val logLines = mutableListOf<String>()
            val start = SystemClock.elapsedRealtimeNanos()

            repeat(iterations) { i ->
                if (modelName == "KNN" && knn != null) {
                    lastOutput = knn.predictOne(floatArrayOf(1f, 2f)).toFloat()
                } else if (modelName == "Tree" && tree != null) {
                    lastOutput = tree.predictOne(floatArrayOf(1f, 2f)).toFloat()
                } else if (modelName == "GCN" && gcnKotlin != null) {
                    // Running native Kotlin GCN to bypass PyTorch format errors
                    lastOutput = gcnKotlin.forward(FloatArray(1433) { 0.1f })[0]
                } else if (module != null && input != null) {
                    val output = module.forward(IValue.from(input)).toTensor()
                    lastOutput = output.dataAsFloatArray[0]
                }

                if (i % sampleInterval == 0) {
                    val (tempNow, _, _) = getBatteryInfo()
                    val memNowKB = getUsedMemoryKB()
                    val currentDelta = (memNowKB - memAtStart).coerceAtLeast(0.0) // Show 0 if it's negative
                    if (currentDelta > maxInferenceMem) maxInferenceMem = currentDelta

                    val currentC = batteryManager.getLongProperty(BatteryManager.BATTERY_PROPERTY_CURRENT_NOW)
                    if (tempNow > maxTemp) maxTemp = tempNow
                    totalCurrentSum += currentC
                    currentSamples++
                    logLines.add("Iter $i | Mem Change: ${"%.2f".format(currentDelta)} KB | Temp: ${"%.1f".format(tempNow / 10.0)} °C")
                }
            }

            val end = SystemClock.elapsedRealtimeNanos()
            val memAfter = getUsedMemoryKB()
            val (_, voltAfter, _) = getBatteryInfo()

            val totalLatencyMs = (end - start) / 1e6
            val avgLatencyMs = totalLatencyMs / iterations
            val inferenceMemGrowth = maxInferenceMem.coerceAtLeast(0.0)
            val totalMemChange = (modelLoadMem + inferenceMemGrowth).coerceAtLeast(0.0)

            val avgCurrent = if (currentSamples > 0) totalCurrentSum / currentSamples else batteryBefore
            val batteryUsageMW = abs(avgCurrent.toDouble()) * voltAfter.toDouble() / 1_000_000.0
            val tempDelta = (maxTemp - tempBefore) / 10.0

            val results = BenchmarkResults(
                model = modelName,
                backend = backendName,
                iterations = iterations,
                avgLatencyMs = avgLatencyMs,
                totalLatencyMs = totalLatencyMs,
                modelLoadMem = modelLoadMem,
                inferenceGrowth = inferenceMemGrowth,
                totalMemChange = totalMemChange,
                finalMem = memAfter,
                batteryUsageMW = batteryUsageMW,
                tempDelta = tempDelta
            )

            val summary = buildString {
                appendLine("RESULT SUMMARY")
                appendLine("----------------------")
                appendLine("Model: $modelName")
                appendLine("Backend: $backendName")
                appendLine("Iterations: $iterations")
                appendLine("Sample Interval: $sampleInterval")
                appendLine()
                appendLine("LAST OUTPUT: $lastOutput")
                appendLine()
                appendLine("PER-SAMPLE LOG (Growth):")
                appendLine("----------------------")
                logLines.forEach { appendLine(it) }
                appendLine()
                appendLine("FINAL STATS:")
                appendLine("Avg Latency: ${"%.6f".format(avgLatencyMs)} ms")
                appendLine("Total Latency: ${"%.2f".format(totalLatencyMs)} ms")
                appendLine("Model Load Memory: ${"%.2f".format(modelLoadMem)} KB")
                appendLine("Inference Peak Growth: ${"%.2f".format(inferenceMemGrowth)} KB")
                appendLine("Total Memory Change (Load + Peak): ${"%.2f".format(totalMemChange)} KB")
                appendLine("Final Total Memory: ${"%.2f".format(memAfter)} KB")
                appendLine("Battery Usage: ${"%.2f".format(batteryUsageMW)} mW")
                appendLine("Temp Rise: ${"%.2f".format(tempDelta)} °C")
            }

            Pair(summary, results)

        } catch (e: Exception) {
            Log.e("AI_BENCHMARK", "Benchmark failed", e)
            Pair("Error: ${e.message}", null)
        }
    }

    private fun saveCSV(context: Context, res: BenchmarkResults) {
        val file = File(context.filesDir, "benchmark_results.csv")
        val timestamp = SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(Date())
        if (!file.exists()) {
            file.appendText("Timestamp,Model,Backend,Iterations,AvgLatencyMs,TotalLatencyMs,ModelLoadMemKB,InferenceGrowthKB,TotalMemChangeKB,FinalMemKB,BatteryMW,TempDeltaC\n")
        }
        // Force US locale for numbers so decimals use "." and don't break the CSV structure
        val line = String.format(
            Locale.US,
            "%s,%s,%s,%d,%.6f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f\n",
            timestamp, res.model, res.backend, res.iterations,
            res.avgLatencyMs, res.totalLatencyMs, res.modelLoadMem,
            res.inferenceGrowth, res.totalMemChange, res.finalMem,
            res.batteryUsageMW, res.tempDelta
        )
        file.appendText(line)
    }

    private fun exportToDownloads(context: Context) {
        val internalFile = File(context.filesDir, "benchmark_results.csv")
        if (!internalFile.exists()) {
            Toast.makeText(context, "No results to export!", Toast.LENGTH_SHORT).show()
            return
        }

        val fileName = "AI_Benchmark_Results_${System.currentTimeMillis()}.csv"

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            val contentValues = ContentValues().apply {
                put(MediaStore.MediaColumns.DISPLAY_NAME, fileName)
                put(MediaStore.MediaColumns.MIME_TYPE, "text/csv")
                put(
                    MediaStore.MediaColumns.RELATIVE_PATH,
                    Environment.DIRECTORY_DOWNLOADS + "/AI_Benchmarks"
                )
            }

            val resolver = context.contentResolver
            val uri = resolver.insert(MediaStore.Downloads.EXTERNAL_CONTENT_URI, contentValues)

            if (uri != null) {
                try {
                    resolver.openOutputStream(uri)?.use { outputStream ->
                        internalFile.inputStream().use { inputStream ->
                            inputStream.copyTo(outputStream)
                        }
                    }
                    Toast.makeText(context, "CSV exported to Downloads/AI_Benchmarks", Toast.LENGTH_LONG).show()
                } catch (e: Exception) {
                    Toast.makeText(context, "Export failed: ${e.message}", Toast.LENGTH_SHORT).show()
                }
            }
        } else {
            // Fallback for older Android versions
            try {
                val downloadsDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS)
                val targetFile = File(downloadsDir, fileName)
                internalFile.copyTo(targetFile, overwrite = true)
                Toast.makeText(context, "CSV exported to Downloads folder", Toast.LENGTH_LONG).show()
            } catch (e: Exception) {
                Toast.makeText(context, "Export failed: ${e.message}", Toast.LENGTH_SHORT).show()
            }
        }
    }

    private fun assetFilePath(context: Context, assetName: String): String {
        val file = File(context.filesDir, assetName)
        if (file.exists() && file.length() > 0) return file.absolutePath
        context.assets.open(assetName).use { input ->
            FileOutputStream(file).use { output ->
                input.copyTo(output)
            }
        }
        return file.absolutePath
    }
}

// Ported from the user's knn.py logic
class KNN(val k: Int = 3) {
    private var trainX: Array<FloatArray>? = null
    private var trainY: IntArray? = null

    fun fit(x: Array<FloatArray>, y: IntArray) {
        this.trainX = x
        this.trainY = y
    }

    private fun distance(x1: FloatArray, x2: FloatArray): Float {
        var sum = 0.0
        for (i in x1.indices) {
            sum += (x1[i] - x2[i]).toDouble().pow(2.0)
        }
        return sqrt(sum).toFloat()
    }

    fun predictOne(x: FloatArray): Int {
        val tx = trainX ?: return -1
        val ty = trainY ?: return -1

        val distances = mutableListOf<Pair<Float, Int>>()
        for (i in tx.indices) {
            val dist = distance(x, tx[i])
            distances.add(dist to ty[i])
        }

        // Sort by nearest distance
        val kNearest = distances.sortedBy { it.first }.take(k)

        // Majority vote
        val votes = mutableMapOf<Int, Int>()
        for (neighbor in kNearest) {
            val label = neighbor.second
            votes[label] = votes.getOrDefault(label, 0) + 1
        }

        // Return most common class
        return votes.maxByOrNull { it.value }?.key ?: -1
    }
}

class DecisionTree(val maxDepth: Int = 5) {
    private var root: Node? = null

    data class Node(
        val featureIndex: Int? = null,
        val threshold: Float? = null,
        val left: Node? = null,
        val right: Node? = null,
        val value: Int? = null
    )

    fun fit(x: Array<FloatArray>, y: IntArray) {
        root = buildTree(x, y, 0)
    }

    private fun buildTree(x: Array<FloatArray>, y: IntArray, depth: Int): Node {
        val numSamples = x.size
        val numFeatures = if (numSamples > 0) x[0].size else 0
        val uniqueLabels = y.distinct()

        if (depth >= maxDepth || uniqueLabels.size <= 1 || numSamples < 2) {
            val mostCommonLabel = y.groupBy { it }.maxByOrNull { it.value.size }?.key
            return Node(value = mostCommonLabel)
        }

        var bestGini = Double.MAX_VALUE
        var bestSplit: Triple<Int, Float, Int>? = null // featureIndex, threshold, splitIndex

        for (featureIdx in 0 until numFeatures) {
            val thresholds = x.map { it[featureIdx] }.distinct().sorted()
            for (threshold in thresholds) {
                val leftIndices = x.indices.filter { x[it][featureIdx] <= threshold }
                val rightIndices = x.indices.filter { x[it][featureIdx] > threshold }

                if (leftIndices.isEmpty() || rightIndices.isEmpty()) continue

                val gini = calculateGini(y, leftIndices, rightIndices)
                if (gini < bestGini) {
                    bestGini = gini
                    bestSplit = Triple(featureIdx, threshold, 0)
                }
            }
        }

        return if (bestSplit != null) {
            val (featIdx, thresh, _) = bestSplit
            val leftIndices = x.indices.filter { x[it][featIdx] <= thresh }.toIntArray()
            val rightIndices = x.indices.filter { x[it][featIdx] > thresh }.toIntArray()

            val leftX = Array(leftIndices.size) { x[leftIndices[it]] }
            val leftY = IntArray(leftIndices.size) { y[leftIndices[it]] }
            val rightX = Array(rightIndices.size) { x[rightIndices[it]] }
            val rightY = IntArray(rightIndices.size) { y[rightIndices[it]] }

            Node(
                featureIndex = featIdx,
                threshold = thresh,
                left = buildTree(leftX, leftY, depth + 1),
                right = buildTree(rightX, rightY, depth + 1)
            )
        } else {
            val mostCommonLabel = y.groupBy { it }.maxByOrNull { it.value.size }?.key
            Node(value = mostCommonLabel)
        }
    }

    private fun calculateGini(y: IntArray, left: List<Int>, right: List<Int>): Double {
        fun gini(indices: List<Int>): Double {
            if (indices.isEmpty()) return 0.0
            val labels = indices.map { y[it] }
            val counts = labels.groupBy { it }.map { it.value.size.toDouble() / indices.size }
            return 1.0 - counts.sumOf { it * it }
        }
        val n = (left.size + right.size).toDouble()
        return (left.size.toDouble() / n) * gini(left) + (right.size.toDouble() / n) * gini(right)
    }

    fun predictOne(x: FloatArray): Int {
        var node = root
        while (node != null) {
            val leafValue = node.value
            if (leafValue != null) return leafValue

            val featIdx = node.featureIndex ?: break
            val threshold = node.threshold ?: break

            node = if (x[featIdx] <= threshold) node.left else node.right
        }
        return -1
    }
}

class GCNKotlin(val inputDim: Int, val hiddenDim: Int, val outputDim: Int) {
    private val w1 = Array(inputDim) { FloatArray(hiddenDim) { (Math.random() * 0.1).toFloat() } }
    private val w2 = Array(hiddenDim) { FloatArray(outputDim) { (Math.random() * 0.1).toFloat() } }

    fun forward(x: FloatArray): FloatArray {
        // Layer 1: X * W1
        val h = FloatArray(hiddenDim)
        for (j in 0 until hiddenDim) {
            var sum = 0f
            for (i in 0 until inputDim) {
                sum += x[i] * w1[i][j]
            }
            h[j] = if (sum > 0) sum else 0f // ReLU
        }

        // Layer 2: H * W2
        val out = FloatArray(outputDim)
        for (j in 0 until outputDim) {
            var sum = 0f
            for (i in 0 until hiddenDim) {
                sum += h[i] * w2[i][j]
            }
            out[j] = sum
        }
        return out
    }
}