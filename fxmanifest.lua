fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'YB DEV / YoshiTv#4337'
description 'ATM Robbery'

shared_script {
    '@ox_lib/init.lua',
    'shared/**.lua'
}

server_scripts {
    'server/*.lua'
}

client_scripts {
    'client/*.lua'
}

files {
	'locales/*.json',
}