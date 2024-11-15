var random_sound;

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
        
        if (bbox_bottom >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4))
        {
            while (bbox_bottom > (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4))
                y -= 1;
            
            instance_create(x, y, obj_battle_enemy_attack_rorrim_mirror_shard);
            instance_create(x, y, obj_battle_enemy_attack_rorrim_mirror_shard);
            instance_create(x, y, obj_battle_enemy_attack_rorrim_mirror_shard);
            random_sound = irandom_range(0, 2);
            
            switch (random_sound)
            {
                case 0:
                    audio_play_sound(snd_mirrorbreak1, 20, 0);
                    break;
                
                case 1:
                    audio_play_sound(snd_mirrorbreak2, 20, 0);
                    break;
                
                case 2:
                    audio_play_sound(snd_mirrorbreak3, 20, 0);
                    break;
            }
            
            instance_destroy();
            exit;
        }
    }
}
