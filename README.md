# Summer-Research
# Edge AI Performance Benchmarking on Mobile and FPGA Platforms

## Overview

This repository contains the work completed as part of the **UH SURF Summer 2026** research program at the **University of Houston**.

The project investigates the performance and resource trade-offs involved in deploying machine learning models on resource-constrained edge platforms, including smartphones and FPGA-based embedded systems.

The research was conducted under the guidance of **Prof. Biresh Kumar Joardar** in the Department of Electrical and Computer Engineering.

---

## Research Objectives

The primary goal of this project was to develop a setup for evaluating AI/ML models on edge devices and to study factors such as:

- Inference latency
- Memory consumption
- Battery usage
- Temperature changes
- CPU/GPU performance
- Hardware acceleration

The project consists of two major components:

1. **Android-based AI benchmarking application**
2. **FPGA implementation of a Linear Regression model**

---

# 1. Android AI Benchmarking Application

The `AI/` directory contains an Android application designed to run and benchmark machine learning models locally on a smartphone.

The application allows the user to select an AI model and an execution platform, then records performance metrics during inference.

### Supported Models

The application currently supports five models:

- **Linear Regression**
- **K-Nearest Neighbors (KNN)**
- **Graph Convolutional Network (GCN)**
- **Custom 4-Layer CNN**
- **Decision Tree**

### Execution Platforms

Models can be executed using:

- CPU
- GPU

### Collected Metrics

The application records performance information including:

- Per-sample inference results
- Average inference latency
- Total inference latency
- Model loading memory
- Peak memory growth during inference
- Total memory change
- Final memory change
- Battery usage
- Temperature rise

This allows different models and execution platforms to be compared under similar conditions.

---

# 2. FPGA Implementation

The `Linear_fpga/` directory contains the FPGA-based implementation of the Linear Regression model.

The design was developed and tested using a **ZedBoard** platform.

### Tools Used

- Vitis HLS
- Vitis
- Vivado

The Linear Regression model was implemented using FPGA hardware to investigate its performance characteristics and explore hardware acceleration for machine learning workloads.
