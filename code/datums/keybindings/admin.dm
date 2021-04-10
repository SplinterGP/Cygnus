/datum/keybinding/admin
    category = CATEGORY_ADMIN
    weight = WEIGHT_ADMIN

/datum/keybinding/admin/admin_say
    hotkey_keys = list("F5")
    classic_keys = list("F5")
    name = "admin_say"
    full_name = "Admin say"
    description = "Talk with other admins."
    keybind_signal = COMSIG_KB_ADMIN_ASAY_DOWN

/datum/keybinding/admin/admin_say/down(client/user)
	. = ..()
	if(.)
		return
	user.get_asay()
	return TRUE

/datum/keybinding/admin/player_panel_new
    name = "player_panel_new"
    full_name = "Open new player panel"
    description = "Open admin player panel"
    hotkey_keys = list("F6")
    classic_keys = list("F6")
    keybind_signal = COMSIG_KB_ADMIN_PLAYER_PANEL_DOWN

/datum/keybinding/admin/player_panel_new/down(client/user)
    . = ..()
    if(.)
        return
    user.player_panel_new()
    return TRUE

/datum/keybinding/admin/admin_pm
    name = "admin_pm"
    full_name = "Admin PM"
    description = "Send an admin PM"
    hotkey_keys = list("F7")
    classic_keys = list("F7")
    keybind_signal = COMSIG_KB_ADMIN_PM_DOWN

/datum/keybinding/admin/admin_pm/down(client/user)
    . = ..()
    if(.)
        return
    user.cmd_admin_pm_panel()
    return TRUE