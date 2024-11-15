if (live_call())
    return global.live_result;

if (room != rm_dunes_07 && room != rm_battle && room != rm_death_screen)
{
    instance_destroy();
    exit;
}
