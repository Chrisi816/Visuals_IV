fx_version "cerulean"
games {"gta5"}

resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

description "Register System for the German Visuals IV Server"

author "꧁☬ℭ𝔥𝔯𝔦𝔰𝔦☬꧂#6411"

version "1.0.0"

client_scripts {
    "config.lua",
    "client.lua"
}
ui_page {
    "html/index.html"
}
server_scripts {
    "@mysql-async/lib/MySQL.lua",
    "config.lua",
    "server.lua"
}
files {
    "html/src/*.png",
    "html/src/appsymbols/*png",
    "html/src/background/*.png",
    "html/src/background/*.jpg",
    "html/src/tools/*.png",
    "html/src/sounds/*.ogg",
    "html/*.css",
    "html/*.js",
    "html/index.html",
    "html/*.ttf"
}
shared_script "@es_extended/imports.lua"
