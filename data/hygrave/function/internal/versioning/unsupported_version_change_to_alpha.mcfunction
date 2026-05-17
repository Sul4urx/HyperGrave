#@> Executed from:
#@>   function hygrave:internal/load

tellraw @a {\
  "translate": "hygrave.versioning.unsupported_version_change_message.to_alpha",\
  "fallback": "\n§cFailed to downgrade/upgrade HyperGrave to version 2.1.0-alpha.\n\n§6(If you are not the one who installed HyperGrave or don't know what HyperGrave is, you should probably ignore this. One player must resolve this error though.)\n\n§6You seem to be trying to downgrade or upgrade HyperGrave to version 2.1.0-alpha. You should ABSOLUTELY NOT downgrade or upgrade from a version to an alpha version (You shouldn't even be using an alpha version in the first place, unless you want to test it). Right now, HyperGrave won't work or run at all until you resolve this error.\nHere is how you can solve this issue:\n\n§7• §cGoing back to the previous version§c: §6You can simply do this by removing this old HyperGrave file and replacing it with the previous version of HyperGrave. This is the recommended method, because it's safe and no data is lost. If you want to test this version, do it in another world.\n\n§7• §cChanging to version 2.1.0-alpha: §6If you really want to test version 2.1.0-alpha in this world (which you probably shouldn't do), you have to first go back to the newer version, then uninstall HyperGrave from there and then switch back to version 2.1.0-alpha. §nBe careful! This will delete all of your data!§r\n",\
}

schedule clear hygrave:internal/loop/1t
schedule clear hygrave:internal/loop/1s