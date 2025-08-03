return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`RejoinMission` encountered an error loading the Darktide Mod Framework.")

		new_mod("RejoinMission", {
			mod_script       = "RejoinMission/scripts/mods/RejoinMission/RejoinMission",
			mod_data         = "RejoinMission/scripts/mods/RejoinMission/RejoinMission_data",
			mod_localization = "RejoinMission/scripts/mods/RejoinMission/RejoinMission_localization",
		})
	end,
	packages = {},
}
