# Handy wallet for qb-core
# Originally from Nema#2245

# Edited and Fixed by myself Granny Margaret 06-03-2023

# About
- Script for QBCore.
- The script allows you to buy a wallet in a store and then when using it, it gives the option of 7 slots to put the player's personal documents.

# Required
- qb-core/shared/items.lua info

		["handy_wallet"] 			 = {["name"] = "handy_wallet", 			["label"] = "Handy Wallet", 		["weight"] = 500, 		["type"] = "item", 		["image"] = "wallet.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Handy Wallet)"},



# - go to qb-inventory\html\js\app.js
# Find: stickynote and paste below

	} else if (itemData.name == "handy_wallet") {
		    $(".item-info-title").html('<p>'+itemData.label+'</p>')
		    $(".item-info-description").html('<p><strong>Identification number wallet: </strong><span>' + itemData.info.walletid);

# -go to qb-inventory/server/main.lua
# Find:
- **elseif QBCore.Shared.SplitStr(shopType, "_")[1] == "Itemshop" then**

- After that if and cash put this: 
	
		if itemData.name == 'handy_wallet' then itemData.info.walletid = math.random(11111,99999) end -- handy_wallet item

# Find:
- **elseif itemData["name"] == "markedbills" then**

- After that elseif put this:

		elseif itemData['name'] == 'handy_wallet' then
							info.walletid = math.random(11111,99999)

- qb-shops/config.lua
 
		 [20] = {
			    name = "handy_wallet",
			    price = 25,
			    amount = 150,
			    info = {},
			    type = "item",
			    slot = 20,
			}, 
	

- jim-shops/config.lua

{ name = "handy_wallet", price = 25, amount = 150, },

