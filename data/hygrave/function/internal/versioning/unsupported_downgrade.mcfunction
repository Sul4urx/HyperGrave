tellraw @a {\
  "translate": "hygrave.versioning.unsupported_downgrade_message.schema_version_1",\
  "fallback": "\n§cFailed to downgrade HyperGrave from version %s§c to version 0.5.0.\n\n§6(If you are not the one who installed HyperGrave or don't know what HyperGrave is, you should probably ignore this. One player must resolve this error though.)\n\n§6You seem to be trying to downgrade HyperGrave to version 0.5.0. This is not a good idea and you can't do this without completely uninstalling HyperGrave. Right now, HyperGrave won't work or run at all until you resolve this error.\nHere is how you can solve this issue:\n\n§7• §cUpgrading back to version %s§c: §6You can simply do this by removing this old HyperGrave file and replacing it with the newer version of HyperGrave. This is the recommended method, because it's safe and no data is lost.\n\n§7• §cDowngrading to version 0.5.0§c: §6If you really want to stay in version 0.5.0, you have to first upgrade back to version %s§6, then uninstall HyperGrave from there and then switch back to version 0.5.0. §nBe careful! This method comes with data loss!§6\n",\
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
    {\
      "nbt": "data.schema_version_1.hygrave.data_version.version.form.string",\
      "storage": "hygrave:common",\
      "color": "gold"\
    },\
  ]\
}

schedule clear hygrave:internal/loop/1t
schedule clear hygrave:internal/loop/1s