def apply(config, args):
    config["baseimg"] = "baserom.gba"
    config["myimg"] = "sa3.gba"
    config["mapfile"] = "sa3.map"
    config["source_directories"] = ["./src"]
    config["arch"] = "arm32"
    config["expected_dir"] = "expected/"
    config["objdump_executable"] = "arm-none-eabi-objdump"
