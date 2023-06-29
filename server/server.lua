ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent("atm", function(item)
    exports.ox_inventory:RemoveItem(source, Config.Item.togliere, item, false, false)
    exports.ox_inventory:AddItem(source, Config.Item.ricevere, Config.QuantitaRicevere, false, false)
end)