# 2024-05-07T14:38:33.353180
import vitis

client = vitis.create_client()
client.set_workspace(path="/home/tartanauv/TAUV-Acoustics/hdl/projects")

platform = client.create_platform_component(name = "som_platform",hw = "/home/tartanauv/TAUV-Acoustics/hdl/projects/ADC-Test/top_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0")

comp = client.create_app_component(name="ADC-Test-Application",platform = "/home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/export/som_platform/som_platform.xpfm",domain = "standalone_ps7_cortexa9_0")

platform = client.get_platform_component(name="som_platform")
status = platform.build()

comp = client.get_component(name="ADC-Test-Application")
comp.build()

comp.build()

comp.build()

comp = client.create_app_component(name="hello_world",platform = "/home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/export/som_platform/som_platform.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

comp = client.get_component(name="hello_world")
comp.build()

comp.build()

comp.build()

vitis.dispose()

