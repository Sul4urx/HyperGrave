#@> Executed from:
#@>   function hygrave:internal/load

tellraw @a {\
  "translate": "hygrave.versioning.unsupported_upgrade_message.schema_version_1.2_0_0",\
  "fallback": "\n§cFailed to upgrade HyperGrave from version %s§c to version 2.0.0.\n\n§6(If you are not the one who installed HyperGrave or don't know what HyperGrave is, you should probably ignore this. One player must resolve this error though.)\n\n§6You seem to be trying to upgrade HyperGrave to version 2.0.0. This is not a good idea and you can't do this without completely uninstalling HyperGrave. Right now, HyperGrave won't work or run at all until you resolve this error.\nHere is how you can solve this issue:\n\n§7• §cDowngrading back to version %s§c: §6You can simply do this by removing this old HyperGrave file and replacing it with the older version of HyperGrave. This is the recommended method, because it's safe and no data is lost.\n\n§7• §cUninstall§c: §6If you really want to stay in version 2.0.0, you have to reinstall HyperGrave by running `/function hygrave:run/uninstall`. §nBe careful! This will delete all of your data!§r\n",\
  "with": [\
    {\
      "nbt": "data.schema_version_1.hygrave.data_version.version.form.string",\
      "storage": "hygrave:common",\
      "color": "red"\
    },\
    {\
      "nbt": "data.schema_version_1.hygrave.data_version.version.form.string",\
      "storage": "hygrave:common",\
      "color": "red"\
    },\
  ]\
}

schedule clear hygrave:internal/loop/1t
schedule clear hygrave:internal/loop/1s