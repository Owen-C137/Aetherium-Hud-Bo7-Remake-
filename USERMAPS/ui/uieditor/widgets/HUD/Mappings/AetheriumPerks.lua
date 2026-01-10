-- NOTE: The last entry should NOT have a comma ","
CoD.AetheriumPerks = {
	{
		name = "MULE KICK",
		cost = 4000,
		description = "Carry a third primary weapon",
		image = "bl3_3guns",
		specialty = "specialty_additionalprimaryweapon",
		clientFieldName = "additional_primary_weapon"
	},
	{
		name = "DEADSHOT DAIQUIRI",
		cost = 1500,
		description = "Aim down sights snaps to zombie heads",
		image = "bl3_deadshot",
		specialty = "specialty_deadshot",
		clientFieldName = "dead_shot"
	},
	{
		name = "DOUBLE TAP",
		cost = 2000,
		description = "Bullets deal double damage",
		image = "bl3_doubletap",
		specialty = "specialty_doubletap2",
		clientFieldName = "doubletap2"
	},
	{
		name = "JUGGER-NOG",
		cost = 2500,
		description = "Raises maximum health to withstand more damage",
		image = "bl3_jug",
		specialty = "specialty_armorvest",
		clientFieldName = "juggernaut"
	},
	{
		name = "STAMIN-UP",
		cost = 2000,
		description = "Sprint faster and for a longer duration",
		image = "bl3_marathon",
		specialty = "specialty_staminup",
		clientFieldName = "marathon"
	},
	{
		name = "QUICK REVIVE",
		cost = 1500,
		description = "Faster revives in co-op / Self-revive up to 3 times in solo",
		image = "bl3_qr",
		specialty = "specialty_quickrevive",
		clientFieldName = "quick_revive"
	},
	{
		name = "SPEED COLA",
		cost = 3000,
		description = "Reload weapons significantly faster",
		image = "bl3_speed_cola",
		specialty = "specialty_fastreload",
		clientFieldName = "sleight_of_hand"
	},
	{
		name = "WIDOW'S WINE",
		cost = 4000,
		description = "Melee and grenade hits slow and web zombies",
		image = "bl3_widows",
		specialty = "specialty_widowswine",
		clientFieldName = "widows_wine"
	},
	{
		name = "ELECTRIC CHERRY",
		cost = 2000,
		description = "Emit an electric shock when reloading",
		image = "bl3_electriccherry",
		specialty = "specialty_electriccherry",
		clientFieldName = "electric_cherry"
	}
	-- NOTE: Make sure to add the perk images to your zone file (aetherium_hud.zpkg):
	-- image,i_mtl_sat_ui_icon_perks_zm_doubletap
	-- image,i_mtl_sat_ui_icon_perks_zm_widowswine
	-- image,i_mtl_sat_ui_icon_perks_zm_electriccherry
}