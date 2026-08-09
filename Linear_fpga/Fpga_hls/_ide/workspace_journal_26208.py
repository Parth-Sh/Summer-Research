# 2026-06-25T10:54:14.923891
import vitis

client = vitis.create_client()
client.set_workspace(path="Fpga_hls")

vitis.dispose()

