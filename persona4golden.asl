state("P4G")
{
	short loading: "P4G.exe", 0x49DC372;
}

init
{
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
