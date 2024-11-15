if (scene < 13)
{
    with (obj_axis_npc)
    {
        action_sprite = false;
        
        if (abs(y - obj_pl.y) < 20)
        {
            if (obj_pl.x < x)
                npc_direction = "left";
            else if (obj_pl.x > x)
                npc_direction = "right";
        }
        else if (obj_pl.y > y)
        {
            npc_direction = "down";
        }
        else if (obj_pl.y < y)
        {
            npc_direction = "up";
        }
    }
    
    scr_audio_fade_out(event_music, 300);
    scene = 45;
}
