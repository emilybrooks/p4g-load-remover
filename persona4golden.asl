state("P4G", "19/01/2023 Steam")
{
	short loading: 0x51BCD12;
}

state("p4pc_DT_mc", "19/01/2023 Game Pass")
{
	short loading: 0x57885D2;
}

state("P4G", "Legacy Steam")
{
	short loading: 0x49DC372;
}

init
{
	if (modules.First().ModuleName == "P4G.exe") {
		switch (modules.First().ModuleMemorySize)
		{	
			case 913334272:
				version = "19/01/2023 Steam";
				break;
			case 677085184:
				version = "Legacy Steam";
				break;
			default:
				version = "<unknown>";
				break;
		}
	} 
	else {
		version = "19/01/2023 Game Pass";
	}

	timer.IsGameTimePaused = false;
}

exit
{
    timer.IsGameTimePaused = true;
}

isLoading
{
	return current.loading != 1;
}
