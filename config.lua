return {
    Debug = false,
    CheckUpdates = true, --RECOMMENDED Enable this to be notified when an update is available!

    -- prevent cheaters to stop client side of this resource
    Heartbeat = {
        enable = true,
        timeOut = 10, -- How long after the difference with os.time is the ban? (If not, in how many seconds is the ban (10 seconds is fine))
        ThreadTime = 5, -- Thread Time (5 seconds is fine)
        ban = true
    },

    -- prevent cheaters to take and launch vehicles
    AntiCarry = {
        enable = true,
        recordPlayer = true, --send a clip in your whebhook before player get banned
        webhookURL = "https://discord.com/api/webhooks/URL", -- Discord webhook URL (store recorded clips)
        recordTime = 1000, -- in seconds
        whitelistedZones = {
            -- { -- EXAMPLE
            --     coords = vector3(0, 0, 0),
            --     radius = 100.0
            -- },
            GetResourceState('rtx_themepark') ~= 'missing' and { --JUST A WHITELIST FOR A SPECIFIC SCRIPT
                coords = vector3(-1659.5439, -1102.4888, 13.1184),  -- RTX ThemePark (Beach ThemePark)
                radius = 150.0
            } or nil
        }
    },

    --Fiveguard AntiStopper
    AntiStopper = {
        enable = false,
        checkInterval = 5 --interval in seconds
    },

    --Enable this if u have rtx_themepark to prevent false bans, now it will detect automatically
    RTX_ThemePark_Bypass = {
        enable = GetResourceState('rtx_themepark') ~= 'missing'
    },

    --Enable this if u have rcore_clothing to prevent false bans, now it will detect automatically
    rcore_clothing_bypass = {
        enable = GetResourceState('rcore_clothing') ~= 'missing'
    },

    -- Check for a specified time if a player have a model, if true he will be banned/kicked
    BlacklistedModels = {
        enable = true,
        ban = true, --if false player is kicked
        checkInterval = 10, --in seconds
        blacklist = { -- a list of ped/animal models that player can't use
            "a_c_fish",
            'A_C_Boar',
            'A_C_Boar_02',
            'A_C_Cat_01',
            'A_C_Chickenhawk',
            'A_C_Chimp',
            'A_C_Chimp_02'
        }
    },

    -- !! DO NOT ENABLE MORE THAN 1 PERMISSION SYSTEM AT SAME TIME !!
    -- Bypass txAdmin admins
    txAdminPermissions = {
        enable = false,
        fgPermissions = { -- Permissions that'll be set if player has TxAdmin Access
            --[[ AdminMenu ]]  --
                "AdminMenuAccess",
                "AnnouncementAccess",
                "ESPAccess",
                "ClearEntitiesAccess",
                "BanAndKickAccess",
                "GotoAndBringAccess",
                "VehicleAccess",
                "MiscAccess",
                "LogsAccess",
                "PlayerSelectorAccess",
                "BanListAndUnbanAccess",
                "ModelChangerAccess",
            --[[ Client ]] --
                "BypassSpectate",
                "BypassGodMode",
                "BypassInvisible",
                "BypassStealOutfit",
                "BypassInfStamina",
                "BypassNoclip",
                "BypassSuperJump",
                "BypassFreecam",
                "BypassSpeedHack",
                "BypassTeleport",
                "BypassNightVision",
                "BypassThermalVision",
                "BypassOCR",
                "BypassNuiDevtools",
                "BypassBlacklistedTextures",
                "BlipsBypass",
                "BypassCbScanner",
            --[[ Weapon ]] --
                "BypassWeaponDmgModifier",
                "BypassInfAmmo",
                "BypassNoReload",
                "BypassRapidFire",
            --[[ Vehicle ]] --
                "BypassVehicleFixAndGodMode",
                "BypassVehicleHandlingEdit",
                "BypassVehicleModifier",
                "BypassBulletproofTires",
            --[[ Blacklist ]] --
                "BypassModelChanger",
                "BypassWeaponBlacklist",
            --[[ Misc ]] --
                "FGCommands",
                "BypassVPN",
                "BypassExplosion",
                "BypassClearTasks",
                "BypassParticle"
        }
    },

    -- Use framework permission to determinate when add or remove fg perms
    FrameworkPermissions = {
        enable = false,
        customFramework = {
            enable = false, -- enable this only if u have a custom settings and u know what u are doing
            customEvent = '', -- name of the events that's triggered when a player get/lose a group
            invokerResource = '', -- name of the resource that's triggers the event (security check)
        },
        groups = {
            ['god'] = {
                --[[ AdminMenu ]] --
                "AdminMenuAccess",
                "AnnouncementAccess",
                "ESPAccess",
                "ClearEntitiesAccess",
                "BanAndKickAccess",
                "GotoAndBringAccess",
                "VehicleAccess",
                "MiscAccess",
                "LogsAccess",
                "PlayerSelectorAccess",
                "BanListAndUnbanAccess",
                "ModelChangerAccess",
                --[[ Client ]] --
                "BypassSpectate",
                "BypassGodMode",
                "BypassInvisible",
                "BypassStealOutfit",
                "BypassInfStamina",
                "BypassNoclip",
                "BypassSuperJump",
                "BypassFreecam",
                "BypassSpeedHack",
                "BypassTeleport",
                "BypassNightVision",
                "BypassThermalVision",
                "BypassOCR",
                "BypassNuiDevtools",
                "BypassBlacklistedTextures",
                "BlipsBypass",
                "BypassCbScanner",
                --[[ Weapon ]] --
                "BypassWeaponDmgModifier",
                "BypassInfAmmo",
                "BypassNoReload",
                "BypassRapidFire",
                --[[ Vehicle ]] --
                "BypassVehicleFixAndGodMode",
                "BypassVehicleHandlingEdit",
                "BypassVehicleModifier",
                "BypassBulletproofTires",
                --[[ Blacklist ]] --
                "BypassModelChanger",
                "BypassWeaponBlacklist",
                --[[ Misc ]] --
                "FGCommands",
                "BypassVPN",
                "BypassExplosion",
                "BypassClearTasks",
                "BypassParticle"
            },
            ['admin'] = {
                --[[ AdminMenu ]] --
                "AdminMenuAccess",
                "AnnouncementAccess",
                "ESPAccess",
                "ClearEntitiesAccess",
                "BanAndKickAccess",
                "GotoAndBringAccess",
                "VehicleAccess",
                "MiscAccess",
                "LogsAccess",
                "PlayerSelectorAccess",
                "BanListAndUnbanAccess",
                "ModelChangerAccess",
                --[[ Client ]] --
                "BypassSpectate",
                "BypassGodMode",
                "BypassInvisible",
                "BypassStealOutfit",
                "BypassInfStamina",
                "BypassNoclip",
                "BypassSuperJump",
                "BypassFreecam",
                "BypassSpeedHack",
                "BypassTeleport",
                "BypassNightVision",
                "BypassThermalVision",
                "BypassOCR",
                "BypassNuiDevtools",
                "BypassBlacklistedTextures",
                "BlipsBypass",
                "BypassCbScanner",
                --[[ Weapon ]] --
                "BypassWeaponDmgModifier",
                "BypassInfAmmo",
                "BypassNoReload",
                "BypassRapidFire",
                --[[ Vehicle ]] --
                "BypassVehicleFixAndGodMode",
                "BypassVehicleHandlingEdit",
                "BypassVehicleModifier",
                "BypassBulletproofTires",
                --[[ Blacklist ]] --
                "BypassModelChanger",
                "BypassWeaponBlacklist",
                --[[ Misc ]] --
                "FGCommands",
                "BypassVPN",
                "BypassExplosion",
                "BypassClearTasks",
                "BypassParticle"
            },
            ['mod'] = {
                --[[ Client ]] --
                "BypassSpectate",
                "BypassGodMode",
                "BypassInvisible",
                "BypassStealOutfit",
                "BypassInfStamina",
                "BypassNoclip",
                "BypassSuperJump",
                "BypassFreecam",
                "BypassSpeedHack",
                "BypassTeleport",
                "BypassNightVision",
                "BypassThermalVision",
                "BypassOCR",
                "BypassNuiDevtools",
                "BypassBlacklistedTextures",
                "BlipsBypass",
                "BypassCbScanner",
                --[[ Weapon ]] --
                "BypassWeaponDmgModifier",
                "BypassInfAmmo",
                "BypassNoReload",
                "BypassRapidFire",
                --[[ Vehicle ]] --
                "BypassVehicleFixAndGodMode",
                "BypassVehicleHandlingEdit",
                "BypassVehicleModifier",
                "BypassBulletproofTires",
                --[[ Blacklist ]] --
                "BypassModelChanger",
                "BypassWeaponBlacklist",
                --[[ Misc ]] --
                "BypassVPN",
                "BypassExplosion",
                "BypassClearTasks",
                "BypassParticle"
            },
            ['helper'] = {
                --[[ Client ]] --
                "BypassSpectate",
                "BypassGodMode",
                "BypassInvisible",
                "BypassStealOutfit",
                "BypassInfStamina",
                "BypassNoclip",
                "BypassSuperJump",
                "BypassFreecam",
                "BypassSpeedHack",
                "BypassTeleport",
                "BypassNightVision",
                "BypassThermalVision",
                "BypassOCR",
                "BypassNuiDevtools",
                "BypassBlacklistedTextures",
                "BlipsBypass",
                "BypassCbScanner",
                --[[ Vehicle ]] --
                "BypassVehicleFixAndGodMode",
                "BypassVehicleHandlingEdit",
                "BypassVehicleModifier",
                "BypassBulletproofTires",
                --[[ Misc ]] --
                "BypassVPN",
                "BypassExplosion",
                "BypassClearTasks",
                "BypassParticle"
            },
        }
    },

    -- Use ACE Permissions from FiveM natives
    AcePermissions = {
        enable = false, -- Group Ace Permissions // ONLY ESX FOR THE MOMENT (Soon QbCore & vRP)
        groups = {      -- define wich perms you want to add for a specific group
            ['admin'] = {
                --[[ AdminMenu ]] --
                "AdminMenuAccess",
                "AnnouncementAccess",
                "ESPAccess",
                "ClearEntitiesAccess",
                "BanAndKickAccess",
                "GotoAndBringAccess",
                "VehicleAccess",
                "MiscAccess",
                "LogsAccess",
                "PlayerSelectorAccess",
                "BanListAndUnbanAccess",
                "ModelChangerAccess",
                --[[ Client ]] --
                "BypassSpectate",
                "BypassGodMode",
                "BypassInvisible",
                "BypassStealOutfit",
                "BypassInfStamina",
                "BypassNoclip",
                "BypassSuperJump",
                "BypassFreecam",
                "BypassSpeedHack",
                "BypassTeleport",
                "BypassNightVision",
                "BypassThermalVision",
                "BypassOCR",
                "BypassNuiDevtools",
                "BypassBlacklistedTextures",
                "BlipsBypass",
                "BypassCbScanner",
                --[[ Weapon ]] --
                "BypassWeaponDmgModifier",
                "BypassInfAmmo",
                "BypassNoReload",
                "BypassRapidFire",
                --[[ Vehicle ]] --
                "BypassVehicleFixAndGodMode",
                "BypassVehicleHandlingEdit",
                "BypassVehicleModifier",
                "BypassBulletproofTires",
                --[[ Blacklist ]] --
                "BypassModelChanger",
                "BypassWeaponBlacklist",
                --[[ Misc ]] --
                "FGCommands",
                "BypassVPN",
                "BypassExplosion",
                "BypassClearTasks",
                "BypassParticle"
            },
            ['mod'] = {
                --[[ Client ]] --
                "BypassSpectate",
                "BypassGodMode",
                "BypassInvisible",
                "BypassStealOutfit",
                "BypassInfStamina",
                "BypassNoclip",
                "BypassSuperJump",
                "BypassFreecam",
                "BypassSpeedHack",
                "BypassTeleport",
                "BypassNightVision",
                "BypassThermalVision",
                "BypassOCR",
                "BypassNuiDevtools",
                "BypassBlacklistedTextures",
                "BlipsBypass",
                "BypassCbScanner",
                --[[ Weapon ]] --
                "BypassWeaponDmgModifier",
                "BypassInfAmmo",
                "BypassNoReload",
                "BypassRapidFire",
                --[[ Vehicle ]] --
                "BypassVehicleFixAndGodMode",
                "BypassVehicleHandlingEdit",
                "BypassVehicleModifier",
                "BypassBulletproofTires",
                --[[ Blacklist ]] --
                "BypassModelChanger",
                "BypassWeaponBlacklist",
                --[[ Misc ]] --
                "BypassVPN",
                "BypassExplosion",
                "BypassClearTasks",
                "BypassParticle"
            },
            ['helper'] = {
                --[[ Client ]] --
                "BypassSpectate",
                "BypassGodMode",
                "BypassInvisible",
                "BypassStealOutfit",
                "BypassInfStamina",
                "BypassNoclip",
                "BypassSuperJump",
                "BypassFreecam",
                "BypassSpeedHack",
                "BypassTeleport",
                "BypassNightVision",
                "BypassThermalVision",
                "BypassOCR",
                "BypassNuiDevtools",
                "BypassBlacklistedTextures",
                "BlipsBypass",
                "BypassCbScanner",
                --[[ Vehicle ]] --
                "BypassVehicleFixAndGodMode",
                "BypassVehicleHandlingEdit",
                "BypassVehicleModifier",
                "BypassBulletproofTires",
                --[[ Misc ]] --
                "BypassVPN",
                "BypassExplosion",
                "BypassClearTasks",
                "BypassParticle"
            },
        }
    }
}
