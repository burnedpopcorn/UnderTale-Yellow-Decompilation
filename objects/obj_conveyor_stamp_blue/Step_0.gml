if (activate == true)
{
    if (scene == 0)
        scene = 1;
    
    activate = false;
}

switch (scene)
{
    case 0:
        if (y > ystart)
            y -= (drop_speed * 0.5);
        
        break;
    
    case 1:
        if (y < 568)
        {
            y += drop_speed;
        }
        else
        {
            y = 568;
            scene++;
        }
        
        break;
    
    case 2:
        audio_play_sound(snd_undertale_thud, 1, 0);
        scr_screenshake(6, 1);
        active_item = instance_place(x, y, obj_factory_02_conveyor_item);
        
        if (active_item != -4 && (active_item.item_wrap == true || active_item.vspeed != 0))
            active_item = -4;
        
        if (active_item != -4)
        {
            with (obj_factory_02_conveyor_item)
            {
                if (hspeed != 0)
                {
                    hspeed_old = hspeed;
                    vspeed_old = vspeed;
                    hspeed = 0;
                    alarm[0] = 5;
                    obj_conveyor_belt.image_speed = 0;
                }
            }
            
            with (active_item)
            {
                if (other.sprite_index == spr_conveyor_stamp_blue)
                {
                    sprite_index = spr_conveyor_items_blue_wrapped;
                    
                    if (item_type == "blue")
                        item_wrap_correct = true;
                }
                else if (other.sprite_index == spr_conveyor_stamp_red)
                {
                    sprite_index = spr_conveyor_items_red_wrapped;
                    
                    if (item_type == "red")
                        item_wrap_correct = true;
                }
                
                item_wrap = true;
                x = other.x + 16;
            }
            
            active_item = -4;
            scene++;
        }
        else
        {
            scene++;
        }
        
        break;
    
    case 3:
        cutscene_wait(0.5);
        break;
    
    case 4:
        if (y > ystart)
            y -= (drop_speed * 0.5);
        
        if (cutscene_wait(0.2))
            scene = 0;
        
        break;
}
