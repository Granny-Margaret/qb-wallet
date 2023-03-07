local QBCore = exports['qb-core']:GetCoreObject()

--handy_wallet
RegisterNetEvent('qb-items:client:use:handy_walletwallet')
AddEventHandler('qb-items:client:use:handy_walletwallet', function()
	TriggerServerEvent("inventory:server:OpenInventory", "stash", 'handy_wallet', {maxweight = 10, slots = 7})
	TriggerEvent("inventory:client:SetCurrentStash", 'handy_walletwallet')
end)

-- Originally from Nema#2245

-- Edited and Fixed by myself Granny Margaret 06-03-2023
