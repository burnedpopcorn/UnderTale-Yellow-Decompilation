scene = 0;
cutscene_timer = 0;
steam_audio_noloop = false;

if (global.sworks_flag[8] >= 1)
{
    with (obj_steamworks_steam_blaster)
        instance_destroy();
    
    instance_destroy();
}
