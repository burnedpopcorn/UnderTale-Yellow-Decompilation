if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        cutscene_wait(1.5);
        break;
    
    case 1:
        instance_create_depth(442, 55, -100, obj_flowey_world_toriel_fire);
        instance_create_depth(506, 55, -100, obj_flowey_world_toriel_fire);
        audio_play_sound(snd_undertale_appear, 1, 0);
        cutscene_advance();
        break;
    
    case 2:
        cutscene_wait(1.5);
        break;
    
    case 3:
        obj_toriel_npc.npc_direction = "down";
        break;
}
