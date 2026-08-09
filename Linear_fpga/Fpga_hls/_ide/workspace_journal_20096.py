# 2026-06-30T09:57:12.531261900
import vitis

client = vitis.create_client()
client.set_workspace(path="Fpga_hls")

comp = client.create_hls_component(name = "hls_component_lreg",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="hls_component_lreg")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="IMPLEMENTATION")

vitis.dispose()

