#@> Executed from:
#@>   function hygrave:internal/versioning/upgrade

tellraw @a {\
  "translate": "hygrave.versioning.unsupported_upgrade_message.existing_grave_entity.schema_version_1.2_3_0",\
  "fallback": "\n§cFailed to upgrade HyperGrave from version %s§c to version 2.3.0.\n\n§6(If you are not the one who installed HyperGrave or don't know what HyperGrave is, you should probably ignore this. One player must resolve this error though.)\n\n§6You seem to be trying to upgrade HyperGrave to version 2.3.0. This is not a good idea, because a grave is still active in your world right now. You should never upgrade HyperGrave when there is an active grave. Right now, HyperGrave won't work or run at all until you resolve this error.\nHere is how you can solve this issue:\n\n§7• §cBreaking the grave in the older version: §6You can simply do this by removing this new HyperGrave file and replacing it with the older version of HyperGrave. Then, break the grave from there and switch back to the newer version. This is the recommended method.\n\n§7• §cForce break the grave: §6You can forcefully break the grave altogether using the command `/function hygrave:internal/versioning/force_break_grave {gid: 1000}` (replace 1000 with the GID of the grave). This will delete the grave and its items (Although you might be able to restore it with the built-in item backups). This method is not recommended.\n",\
  "with": [\
    {\
      "nbt": "data.schema_version_1.hygrave.data_version.version.form.string",\
      "storage": "hygrave:common",\
      "color": "red",\
      "interpret": true\
    }\
  ]\
}

schedule clear hygrave:internal/loop/1t
schedule clear hygrave:internal/loop/1s