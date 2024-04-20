fx_version "cerulean"
game "gta5"
version "1.0"


client_scripts {
    "config.lua",
    "client/functions.lua",
    "client/client.lua"
} 
server_script {
    "config.lua",
    "server/server.lua",
    '@oxmysql/lib/MySQL.lua'
}

files {
    "ui/*",
}

ui_page {"ui/index.html"}