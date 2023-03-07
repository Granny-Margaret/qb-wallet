local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("handy_wallet", function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-items:client:use:handy_wallet', source, item.info.walletid)
    end
end)


-- Originally from Nema#2245

-- Edited and Fixed by myself Granny Margaret 06-03-2023
