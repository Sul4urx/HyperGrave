tellraw @s [\
    {\
        "translate": "sgrave2.uninstall.confirmation_ask",\
        "fallback": "\n§cAre you sure you want to uninstall SGrave?\n\n- Uninstalling SGrave will remove EVERYTHING, §nincluding backups§r§c.\n- You should NOT uninstall SGrave when there is at least one active grave.\n- You should only really do this if something broke or when updating SGrave, but please report it if something did break so that others don't have to deal with the same thing.\n- Otherwise it's best to just remove SGrave using §n/datapack disable§r§c or by removing the data pack file from the §odatapacks§r§c folder. This will not remove any data and is the safer method to remove SGrave.\n\n"\
    },\
    {\
        "translate": "sgrave2.uninstall.button",\
        "fallback": "§7<§bUninstall anyway§7>",\
        "hover_event": {\
            "action": "show_text",\
            "value": {\
                "translate": "sgrave2.uninstall.instructions",\
                "fallback": "If you really want to uninstall SGrave, run the following command:\n\n/function sgrave2:internal/uninstall {confirm:\"UNINSTALL\"}\n\nsIf you don't want to use SGrave again, use §n/datapack disable§r to remove SGrave. If you don't do this, SGrave will reinstall after a reload. You can also remove the data pack file from the §odatapacks§r folder."\
            }\
        }\
    },\
    "\n"\
]