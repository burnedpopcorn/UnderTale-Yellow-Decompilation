if (live_call())
    return global.live_result;

if (destroy_self > 0)
{
    if (stage == 3)
    {
        obj_ceroba_npc.npc_direction = "right";
        obj_ceroba_npc.action_sprite = false;
    }
    
    if (destroy_self == 1)
    {
        vspeed = -3;
        gravity = 0.25;
        destroy_self = 2;
    }
    else
    {
        if (image_alpha <= 0)
            instance_destroy();
        
        image_angle += 10;
        image_alpha -= 0.1;
    }
    
    exit;
}

switch (stage)
{
    case 0:
        if (x <= 395)
        {
            gravity = 0.2;
            
            if (vspeed > vspeed_max)
                vspeed = vspeed_max;
            
            if (y >= 610)
            {
                vspeed_old = 0;
                vspeed = 0;
                gravity = 0;
                y = 610;
                audio_play_sound(choose(snd_mart_impact_1, snd_mart_impact_2, snd_mart_impact_3), 1, 0);
                stage++;
            }
        }
        
        break;
    
    case 1:
        if ((item_type == "trash" && item_wrap == false) || item_wrap == false)
        {
            if (x <= 235)
            {
                depth = -1000;
                gravity = 0.2;
                
                if (vspeed > vspeed_max)
                    vspeed = vspeed_max;
                
                if (y >= 620)
                {
                    audio_play_sound(choose(snd_mart_impact_1, snd_mart_impact_2, snd_mart_impact_3), 1, 0);
                    hspeed = 0;
                    vspeed = -3;
                    
                    if (item_type != "trash")
                    {
                        obj_factory_02_conveyor_puzzle.conveyor_item_number_wrong -= 1;
                        audio_play_sound(snd_fail, 1, 0);
                    }
                    
                    y = 620;
                    stage++;
                }
            }
        }
        else if (x <= 240)
        {
            if (instance_exists(obj_ceroba_npc))
            {
                if (obj_ceroba_npc.action_sprite == true)
                {
                    with (obj_factory_02_conveyor_item)
                        hspeed = 0;
                    
                    obj_conveyor_belt.image_speed = 0;
                    exit;
                }
                
                with (obj_factory_02_conveyor_item)
                    hspeed = -hsp_base;
                
                obj_conveyor_belt.image_speed = 1;
                hspeed = 0;
                image_alpha = 0;
                obj_ceroba_npc.action_sprite = true;
                obj_ceroba_npc.image_speed = 1;
                
                if (sprite_index == spr_conveyor_items_red_wrapped)
                    obj_ceroba_npc.sprite_index = spr_conveyor_ceroba_throw_red;
                else
                    obj_ceroba_npc.sprite_index = spr_conveyor_ceroba_throw_blue;
                
                obj_ceroba_npc.image_index = 0;
                stage = 3;
            }
        }
        
        break;
    
    case 2:
        if (image_alpha <= 0)
            instance_destroy();
        
        image_angle += 10;
        image_alpha -= 0.1;
        break;
    
    case 3:
        if (obj_ceroba_npc.image_index >= 9 && item_throw_noloop == false)
        {
            x = obj_ceroba_npc.x - 10;
            y = obj_ceroba_npc.y;
            image_alpha = 1;
            path_start(pt_steamworks_factory_02_throw, 5, path_action_stop, false);
            path_change_point(pt_steamworks_factory_02_throw, 0, obj_ceroba_npc.x, obj_ceroba_npc.y, 100);
            item_throw_noloop = true;
        }
        
        if (obj_ceroba_npc.image_index >= (obj_ceroba_npc.image_number - 1))
        {
            obj_ceroba_npc.npc_direction = "right";
            obj_ceroba_npc.action_sprite = false;
            stage++;
        }
        
        break;
    
    case 4:
        if (path_position >= 1)
        {
            if (item_wrap_correct == true)
            {
                obj_factory_02_conveyor_puzzle.conveyor_item_number -= 1;
                audio_play_sound(snd_factory_puzzle_correct, 1, 0);
            }
            else
            {
                obj_factory_02_conveyor_puzzle.conveyor_item_number_wrong -= 1;
                audio_play_sound(snd_fail, 1, 0);
            }
            
            instance_destroy();
        }
        
        break;
}

vspeed += gravity;
x += hspeed;
y += vspeed;
