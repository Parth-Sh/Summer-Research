# 2026-06-30T11:30:17.518237200
import vitis

client = vitis.create_client()
client.set_workspace(path="Fpga_hls")

vitis.dispose()

