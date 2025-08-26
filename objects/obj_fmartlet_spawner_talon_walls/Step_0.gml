if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;

switch (attack_tick)
{
    case 30:
        instance_create_depth(320, battle_box.bbox_top - 40, -100, obj_martlet_attack_talon_giant);
        break;
    
    case 80:
        scr_screenshake_battle_custom(5, 5);
        audio_play_sound(snd_undertale_explosion, 1, 0);
        instance_destroy(obj_martlet_attack_talon_giant);
        
        for (var j = 0; j < array_length(xx); j++)
        {
            for (var i = 0; i < 180; i += 3)
                instance_create_depth(xx[j], battle_box.bbox_top + i, -100, obj_fmartlet_spawner_talon_wall);
        }
        
        break;
    
    case 85:
        var feather = instance_create_depth(battle_box.bbox_left + 25, battle_box.bbox_top - 20, -100, obj_fmartlet_feather_straight);
        feather.direction = 270;
        feather.can_play_sound = true;
        feather = instance_create_depth(battle_box.bbox_left + 75, battle_box.bbox_bottom + 20, -100, obj_fmartlet_feather_straight);
        feather.direction = 90;
        feather = instance_create_depth(battle_box.bbox_left + 125, battle_box.bbox_top - 20, -100, obj_fmartlet_feather_straight);
        feather.direction = 270;
        feather = instance_create_depth(battle_box.bbox_left + 175, battle_box.bbox_bottom + 20, -100, obj_fmartlet_feather_straight);
        feather.direction = 90;
        break;
    
    case 125:
        var attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        attack_instance.attack_delay = 5;
        break;
    
    case 145:
        var attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        attack_instance.image_xscale = -1;
        attack_instance.attack_delay = 1;
        break;
    
    case 165:
        var attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        attack_instance.attack_delay = 1;
        break;
    
    case 185:
        var attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        attack_instance.image_xscale = -1;
        attack_instance.attack_delay = 50;
        break;
    
    case 210:
        var inc = 25.714285714285715;
        
        for (var i = 0; i < 180; i += inc)
        {
            var feather;
            
            if (((i / inc) % 2) == 1)
            {
                feather = instance_create_depth(battle_box.bbox_left - 20, battle_box.bbox_top + i, -100, obj_fmartlet_feather_straight);
                feather.direction = 0;
            }
            else
            {
                feather = instance_create_depth(battle_box.bbox_right + 20, battle_box.bbox_top + i, -100, obj_fmartlet_feather_straight);
                feather.direction = 180;
            }
            
            if (i == 0)
                feather.can_play_sound = true;
        }
        
        break;
    
    case 300:
        instance_destroy();
        break;
}

attack_tick += 1;
