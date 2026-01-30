tellraw @s [\
    {\
        "translate": "hygrave.uninstall.confirmation_ask",\
        "fallback": "\n§cAre you sure you want to uninstall HyperGrave?\n\n- Uninstalling HyperGrave will remove EVERYTHING, §nincluding backups§r§c.\n- You should NOT uninstall HyperGrave when there is at least one active grave.\n- You should only really do this if something broke or when updating HyperGrave, but please report it if something did break so that others don't have to deal with the same thing.\n- Otherwise it's best to just remove HyperGrave using §n/datapack disable§r§c or by removing the data pack file from the §odatapacks§r§c folder. This will not remove any data and is the safer method to remove HyperGrave.\n\n"\
    },\
    {\
        "translate": "hygrave.uninstall.button",\
        "fallback": "§7<§bUninstall anyway§7>",\
        "hover_event": {\
            "action": "show_text",\
            "value": {\
                "translate": "hygrave.uninstall.instructions",\
                "fallback": "If you really want to uninstall HyperGrave, run the following command:\n\n/function hygrave:internal/misc/uninstall {confirm:\"UNINSTALL\"}\n\nIf you don't want to use HyperGrave again, use §n/datapack disable§r to remove HyperGrave. If you don't do this, HyperGrave will reinstall after a reload. You can also remove the data pack file from the §odatapacks§r folder."\
            }\
        }\
    },\
    "\n"\
]