state("P4G", "Remaster 1.0")
{
	short loading: 0x51BCD12;
}

state("p4pc_DT_mc", "Remaster 1.0")
{
	short loading: 0x57885D2;
}

state("P4G", "Legacy Steam")
{
	short loading: 0x49DC372;
}

init
{
	switch (game.MainModule.ModuleMemorySize)
	{	
		case 913334272:
		case 884142080: 
			version = "Remaster 1.0";
			break;
		case 677085184:
			version = "Legacy Steam";
			break;
		default:
			version = "<unknown>";
			break;
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
