fx_version 'cerulean'
game 'gta5'

author 'Szilko121 (SzCore Team)'
description 'World & environment manager: map blips, ambient ped density, blackout systems, and synchronized weather/time.'
version '1.0.0'

lua54 'yes'

shared_scripts {
    '@ox_lib/init.lua',
    '@szcore/shared/init.lua',
    'config.lua',
    'shared/**/*.lua'
}

client_scripts {
    'client/**/*.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/**/*.lua'
}

dependencies {
    'szcore',
    'oxmysql'
}
