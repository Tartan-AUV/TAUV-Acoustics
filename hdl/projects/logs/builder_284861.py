# 2024-05-07T14:51:13.268715
import vitis

client = vitis.create_client()
client.set_workspace(path="/home/tartanauv/TAUV-Acoustics/hdl/projects")

comp = client.get_component(name="ADC-Test-Application")
comp.build()

comp = client.get_component(name="hello_world")
comp.build()

vitis.dispose()

