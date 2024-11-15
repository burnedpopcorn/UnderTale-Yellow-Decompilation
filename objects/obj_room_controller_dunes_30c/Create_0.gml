if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;

if (global.dunes_flag[41] >= 2 && global.dunes_flag[41] != 4 && global.dunes_flag[41] != 5)
{
    instance_destroy();
    exit;
}
else if (global.dunes_flag[41] == 4)
{
    instance_create(470, 520, obj_ed_npc);
    obj_ed_npc.npc_direction = "up";
    instance_create(420, 500, obj_mooch_npc);
    obj_mooch_npc.npc_direction = "up";
    instance_create(520, 520, obj_ace_npc);
    obj_ace_npc.npc_direction = "up";
    instance_create(550, 500, obj_moray_npc);
    obj_moray_npc.npc_direction = "up";
    scene = 9;
    
    with (obj_radio)
        audio_stop_sound(current_song);
}
else if (global.dunes_flag[41] == 5)
{
    scene = 46;
}
