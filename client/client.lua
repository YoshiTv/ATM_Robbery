ESX = exports["es_extended"]:getSharedObject()
local ped = PlayerPedId()

local options = {
    {
        name = 'ox:option1',
        event = 'deruba:atm',
        icon = Config.Icon.accessatm,
        label = Config.Testo.oxtarget
    },
}
for k, v in pairs(Config.Atm.modelli) do
    exports.ox_target:addModel(v, options)
end

RegisterNetEvent('deruba:atm', function()
    if not tempo then
        local tablet = exports.ox_inventory:Search('count', Config.Item.togliere)
        if tablet >= 1 then
            tempo = true
            FreezeEntityPosition(ped, true)
            if lib.progressCircle({
                duration = Config.Progress.tempo,
                label = Config.Testo.progress,
                position = Config.Progress.posizione,
                useWhileDead = false,
                canCancel = true,
                anim = {
                    dict = 'amb@code_human_in_bus_passenger_idles@female@tablet@idle_a',
                    clip = 'idle_a'
                },
                prop = {
                    model = `prop_cs_tablet`,
                    pos = vec3(0.03, 0.03, 0.02),
                    rot = vec3(0.0, 0.0, -1.5)
                },
            }) then TriggerServerEvent('atm', 1) end
            ESX.ShowNotification("Hai ricevuto "..Config.QuantitaRicevere.."$ ora scappa prima che arriva la Polizia!")
            FreezeEntityPosition(ped, false)
        else
            ESX.ShowNotification(Config.Testo.erroratm)
        end
        Wait(Config.TempoAttesa)
        tempo = false
    else
        ESX.ShowNotification(Config.Testo.waitrobbery)   
    end
end)