_server_restart = format 
["

	if (serverCommandAvailable ""#restart"") then 
	{
		disableUserInput true;
	};

"];