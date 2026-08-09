set SynModuleInfo {
  {SRCNAME linear_model MODELNAME linear_model RTLNAME linear_model IS_TOP 1
    SUBMODULES {
      {MODELNAME linear_model_mul_32s_32s_32_2_1 RTLNAME linear_model_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME linear_model_HLS_LINEAR_PERIPH_BUS_s_axi RTLNAME linear_model_HLS_LINEAR_PERIPH_BUS_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
