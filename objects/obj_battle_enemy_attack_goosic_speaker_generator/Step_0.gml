var box, xx;

if (live_call())
    return global.live_result;

box = 3154;
audio_listener_position(audio_pos_x_current, 0, 0);

switch (audio_pos)
{
    case "left":
        audio_pos_x = -300;
        break;
    
    case "middle":
        audio_pos_x = 0;
        break;
    
    case "right":
        audio_pos_x = 300;
        break;
}

attack_duration = 60;
spawn_offset_x_max = 40;
audio_pos_x_current = lerp(audio_pos_x_current, audio_pos_x, 0.1);
spawn_interval_max = 2;

if (spawn_notes == true)
{
    switch (audio_pos)
    {
        case "left":
            xx = 290;
            break;
        
        case "right":
            xx = 340;
            break;
    }
    
    if (spawn_interval > 0)
    {
        spawn_interval--;
    }
    else
    {
        instance_create_depth(xx + spawn_offset_x, box.bbox_bottom + 10, obj_heart_battle_fighting_red.depth - 1, obj_battle_enemy_attack_goosic_speaker_note);
        spawn_interval = spawn_interval_max;
        spawn_offset_x += (spawn_offset_x_inc * spawn_offset_dir);
        
        if (spawn_offset_x >= spawn_offset_x_max || spawn_offset_x <= -spawn_offset_x_max)
        {
            spawn_offset_dir *= -1;
            spawn_offset_x += (spawn_offset_x_inc * spawn_offset_dir * 2);
        }
    }
}
