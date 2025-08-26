var battle_box = obj_dialogue_box_battle_transformation_any;

switch (scene)
{
    case 0:
        if (image_alpha < 0.99)
            image_alpha = lerp(image_alpha, 1, 0.4);
        else
            image_alpha = 1;
        
        x = obj_heart_battle_fighting_parent.x;
        y = obj_heart_battle_fighting_parent.y;
        
        if (image_xscale > 1.05)
        {
            image_xscale = lerp(image_xscale, 1, 0.4);
        }
        else
        {
            image_index = 1;
            obj_heart_battle_fighting_parent.image_alpha = 0;
            obj_battle_enemy_attack_axis_shield.image_alpha = 0;
            audio_play_sound(snd_mart_impact_2, 1, 0);
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_wait(0.25);
        break;
    
    case 2:
        if (image_alpha > 0.1)
        {
            image_alpha = lerp(image_alpha, 0, 0.5);
        }
        else
        {
            image_alpha = 0;
            cutscene_advance();
        }
        
        break;
    
    case 3:
        cutscene_wait(0.25);
        break;
    
    case 4:
        if (obj_heart_battle_fighting_axis.movement_mode == 1)
        {
            x = battle_box.x;
            y = battle_box.y - 20;
        }
        else
        {
            x = battle_box.x;
            y = battle_box.bbox_bottom - 20;
        }
        
        image_xscale = 2.5;
        image_yscale = 2.5;
        cutscene_advance();
        break;
    
    case 5:
        if (image_alpha < 0.99)
            image_alpha = lerp(image_alpha, 1, 0.4);
        else
            image_alpha = 1;
        
        if (image_xscale > 1.01)
        {
            image_xscale = lerp(image_xscale, 1, 0.4);
        }
        else
        {
            audio_play_sound(snd_rock_break, 1, 0);
            image_index = 0;
            scr_screenshake_battle(1, 2);
            
            if (obj_heart_battle_fighting_axis.movement_mode == 1)
                obj_heart_battle_fighting_parent.movement_mode = 2;
            else
                obj_heart_battle_fighting_axis.movement_mode = 1;
            
            obj_heart_battle_fighting_parent.image_alpha = 1;
            obj_battle_enemy_attack_axis_shield.image_alpha = 1;
            cutscene_advance();
        }
        
        break;
    
    case 6:
        if (image_alpha > 0.01)
            image_alpha = lerp(image_alpha, 0, 0.25);
        else
            instance_destroy();
        
        break;
}

image_yscale = image_xscale;
