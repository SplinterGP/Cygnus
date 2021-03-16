/datum/keybinding/client
    category = CATEGORY_CLIENT
    weight = WEIGHT_HIGHEST

/datum/keybinding/client/ahelp
    hotkey_keys = list("F1")
    name = "ahelp"
    full_name = "adminhelp"
    description = "ask an admin for help"
    keybind_signal = COMSIG_KB_ADMINHELP_DOWN

/datum/keybinding/client/ahelp/down(client/user)
    . = ..()
    if(.)
        return
    user.adminhelp()
    return TRUE

/datum/keybinding/client/ooc
    hotkey_keys = list("F2")
    classic_keys = list("F2")
    name = "ooc"
    full_name = "OOC"
    description = "Speak in OOC"
    keybind_signal = COMSIG_KB_CLIENT_OOC_DOWN

/datum/keybinding/client/ooc/down(client/user)
    . = ..()
    if(.)
        return
    user.ooc()
    return TRUE

/datum/keybinding/client/looc
    hotkey_keys = list("L")
    classic_keys = list("L")
    name = "looc"
    full_name = "LOOC"
    keybind_signal = COMSIG_KB_CLIENT_LOOC_DOWN

/datum/keybinding/client/looc/down(client/user)
    . = ..()
    if(.)
        return
    user.looc()
    return TRUE


