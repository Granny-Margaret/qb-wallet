local QBCore = exports['qb-core']:GetCoreObject()

--wallet
RegisterNetEvent('qb-items:client:use:wallet')
AddEventHandler('qb-items:client:use:wallet', function()
	TriggerServerEvent("inventory:server:OpenInventory", "stash", 'wallet', {maxweight = 10, slots = 7})
	TriggerEvent("inventory:client:SetCurrentStash", 'wallet')
end)

-- Originally from Nema#2245

-- Edited and Fixed by myself Granny Margaret 06-03-2023
