# 2024-05-08T17:35:57.537024
import vitis

client = vitis.create_client()
client.set_workspace(path="/home/tartanauv/TAUV-Acoustics/hdl/projects")

platform = client.get_platform_component(name="som_platform")
status = platform.update_hw(hw = "/home/tartanauv/TAUV-Acoustics/hdl/projects/ADC-Test/top_wrapper.xsa")

status = platform.build()

comp = client.get_component(name="ADC-Test-Application")
comp.build()

comp = client.get_component(name="hello_world")
comp.build()

vitis.dispose()

