tellraw @s [\
    {\
        "translate": "hygrave.reinstall.confirmation_ask",\
        "fallback": "\n§cAre you sure you want to reinstall HyperGrave?\n\n- Reinstalling HyperGrave will remove EVERYTHING, §nincluding backups§r§c.\n- You should NOT reinstall HyperGrave when there is at least one active grave.\n- You should only do this if something broke or when updating HyperGrave, but please report it if something did break so that others don't have to deal with the same thing.\n"\
    },\
    {\
        "translate": "hygrave.reinstall.button",\
        "fallback": "§7<§bReinstall anyway§7>",\
        "hover_event": {\
            "action": "show_text",\
            "value": {\
                "translate": "hygrave.reinstall.instructions",\
                "fallback": "If you really want to reinstall HyperGrave, run the following command:\n\n/function hygrave:internal/reinstall {confirm:\"REINSTALL\"}"\
            }\
        }\
    },\
    "\n"\
]