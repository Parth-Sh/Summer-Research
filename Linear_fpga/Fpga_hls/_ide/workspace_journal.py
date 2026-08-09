# 2026-06-30T12:39:07.637119800
import vitis

client = vitis.create_client()
client.set_workspace(path="Fpga_hls")

comp = client.create_hls_component(name = "hls_component_linear",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="hls_component_linear")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="IMPLEMENTATION")

