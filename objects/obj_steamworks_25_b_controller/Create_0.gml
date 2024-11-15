scene = 0;
cutscene_timer = 0;
steam_audio_noloop = false;
pacifist_skip = false;

if (global.route == 1 || global.route == 3)
{
    pacifist_skip = true;
    scene = 7;
}

if (global.sworks_flag[54] == 1)
{
    instance_create(750, 290, obj_ceroba_npc);
    scene = 7;
    exit;
}

if (global.sworks_flag[54] == 2)
{
    with (obj_steamworks_steam_blaster)
        instance_destroy();
    
    instance_destroy();
}
