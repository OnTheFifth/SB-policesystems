fx_version 'adamant'

game 'gta5'

client_scripts {
   'config.lua',
   'client/client.lua',
   'client/functions.lua',
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'server/server.lua',
}
