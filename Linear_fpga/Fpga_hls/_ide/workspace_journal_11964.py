# 2026-06-30T11:32:01.944537
import vitis

client = vitis.create_client()
client.set_workspace(path="Fpga_hls")

comp = client.create_hls_component(name = "hls_component_mmul",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="hls_component_mmul")
comp.run(operation="C_SIMULATION")

vitis.dispose()

