local data = LoadResourceFile(CurrentResourceName,'config.lua')
local Config = assert(load(data))()?.AntiStopper
while not Fiveguard do Wait(0) end
if GetResourceState(Fiveguard) ~= 'started' then return end
if not Config?.enable then return end
local playerStates = {}

local function check()
    for playerId, state in pairs(playerStates) do
        if not state then
            exports[Fiveguard]:fg_BanPlayer(playerId, "Stopped fiveguard", true)
        end
    end
    Citizen.SetTimeout(Config.checkInterval * 1000, check)
end
check()

RegisterNetEvent("fg:addon:resourceState", function(isResourceActive, beBanned)
    if beBanned then
        return exports[Fiveguard]:fg_BanPlayer(source, "Try to stop a resource.", true) -- Susano Advenced Anti Stopper.
    end

    Debug(('[AntiStopper] Fiveguard state received from %s with status %s'):format(source,isResourceActive))
    playerStates[source] = isResourceActive
end)

AddEventHandler('playerDropped', function()
    if playerStates[source] then
        playerStates[source] = nil
    end
end)