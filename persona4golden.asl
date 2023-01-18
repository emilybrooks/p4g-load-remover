state("P4G", "Legacy Steam")
{
	short loading: "P4G.exe", 0x49DC372;
}

init
{
	switch (modules.First().ModuleMemorySize)
	{	
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
