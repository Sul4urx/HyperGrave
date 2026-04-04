#@> Executed from:
#@>   function hygrave:internal/load

tellraw @a {\
  "translate": "hygrave.versioning.unsupported_version_change_message.unknown_schema_version.2_0_0",\
  "fallback": "\n§cFailed to downgrade/upgrade HyperGrave to version 2.0.0.\n\n§6(If you are not the one who installed HyperGrave or don't know what HyperGrave is, you should probably ignore this. One player must resolve this error though.)\n\n§6You seem to be trying to downgrade or upgrade HyperGrave to version 2.0.0 from an unknown version. This is not a good idea and you can't do this without completely uninstalling HyperGrave. Right now, HyperGrave won't work or run at all until you resolve this error.\nHere is how you can solve this issue:\n\n§7• §cGoing back to the newer version§c: §6You can simply do this by removing this old HyperGrave file and replacing it with the previous version of HyperGrave. This is the recommended method, because it's safe and no data is lost.\n\n§7• §cChanging to version 2.0.0: §6If you really want to stay in version 2.0.0, you have to first go back to the newer version, then uninstall HyperGrave from there and then switch back to version 2.0.0. §nBe careful! This will delete all of your data!§r\n"\
}

schedule clear hygrave:internal/loop/1t
schedule clear hygrave:internal/loop/1s