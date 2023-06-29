Config = {}

Config.Icon = {
    accessatm = 'fa-solid fa-money-check-dollar', -- WebSite For Icon https://fontawesome.com/icons
}

Config.Atm = {
    modelli = {
        "prop_atm_01", -- WebSite For Prop https://gtahash.ru/
        "prop_atm_02", -- WebSite For Prop https://gtahash.ru/
        "prop_atm_03", -- WebSite For Prop https://gtahash.ru/
        "prop_fleeca_atm" -- WebSite For Prop https://gtahash.ru/
    },
}

Config.Item = {
    togliere = 'tablet',
    ricevere = 'BLACK_MONEY'
} 

Config.Progress =  {
    tempo = 20000, -- 120 Seconds = 120000, 180 Seconds = 180000, 200 Seconds = 200000
    posizione = 'middle' -- middle or bottom
} 

Config.QuantitaRicevere = math.random(10000, 20000)

Config.TempoAttesa = 600000 -- 10 Minutes

Config.Testo = {
    oxtarget = 'Deruba ATM',
    progress = 'Derubando ATM',
    erroratm = 'Non hai un tablet per derubare l\'ATM',
    waitrobbery = 'Questo ATM è già stato derubato ripassa tra 10 minuti'
}