# 2026-06-30T12:29:21.719652300
import vitis

client = vitis.create_client()
client.set_workspace(path="Arm_lreg")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../Vivado/project_2/design_1_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.create_app_component(name="app_component",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

comp = client.get_component(name="app_component")
status = comp.import_files(from_loc="", files=["D:\ELEC_522\FpgaEx\Arm_lreg\main_l_reg.c"])

comp = client.get_component(name="app_component")
comp.build()

comp.build()

vitis.dispose()

