if (instance_exists(obj_heart_battle_fighting_parent))
{
    if (image_alpha < 1 && can_move == false)
    {
        image_alpha += 0.1;
        
        if (image_alpha > 1)
            image_alpha = 1;
        
        if (image_alpha == 1)
            can_move = true;
    }
    
    if (can_move == true)
    {
        x += hsp;
        vsp += grav;
        
        if (vsp > terminal_velocity)
            vsp = terminal_velocity;
        
        y += vsp;
        image_angle += image_angle_increase;
        
        if (bbox_bottom >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4) && can_bounce == true)
        {
            while (bbox_bottom > (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4))
                y -= 1;
            
            image_index = 1;
            hsp = hsp_bounce;
            vsp = -jump_speed - grav;
            image_angle_increase = -image_angle_increase;
            can_bounce = false;
            var random_pitch = irandom_range(-1, 1);
            audio_play_sound(snd_washpan_bonk, 20, 0);
            audio_sound_pitch(snd_washpan_bonk, 1 + (random_pitch * 0.3));
        }
        
        if (place_meeting(x, y, obj_dialogue_box_battle_transformation_any))
            can_vanish = true;
        
        if (!place_meeting(x, y, obj_dialogue_box_battle_transformation_any) && can_vanish == true)
        {
            if (image_alpha > 0)
            {
                image_alpha -= 0.1;
                
                if (image_alpha < 0)
                    image_alpha = 0;
                
                if (image_alpha == 0)
                    instance_destroy();
            }
        }
    }
}
