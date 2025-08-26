function scr_autowalk_state()
{
    var hsp = 0;
    var vsp = 0;
    
    if (autowalk_direction == "right")
    {
        if (place_free(x + global.player_speed, y))
        {
            hsp = global.player_speed;
            image_speed = 0.2;
            global.walking = true;
        }
        
        if (global.debugmove == true)
            hsp = global.player_speed;
    }
    
    if (autowalk_direction == "left")
    {
        if (place_free(x - global.player_speed, y))
        {
            hsp = -global.player_speed;
            image_speed = 0.2;
            global.walking = true;
        }
        
        if (global.debugmove == true)
            hsp = -global.player_speed;
    }
    
    if (autowalk_direction == "down")
    {
        if (place_free(x, y + global.player_speed))
        {
            vsp = global.player_speed;
            image_speed = 0.2;
            global.walking = true;
        }
        
        if (global.debugmove == true)
            vsp = global.player_speed;
    }
    
    if (autowalk_direction == "up")
    {
        if (place_free(x, y - global.player_speed))
        {
            vsp = -global.player_speed;
            image_speed = 0.2;
            global.walking = true;
        }
        
        if (global.debugmove == true)
            vsp = -global.player_speed;
    }
    
    if (vsp == 0 && hsp == 0)
    {
        image_speed = 0;
        image_index = 0;
        global.walking = false;
    }
    
    if (place_meeting(x + global.player_speed, y + global.player_speed, obj_dr))
    {
        x = xprevious;
        y = yprevious;
        
        if (keyboard_check(vk_right) && keyboard_check(vk_down) == false)
        {
            if (place_free(x + global.player_speed, y))
                hsp = global.player_speed;
            
            if (place_free(x, y - global.player_speed))
                vsp = -global.player_speed;
        }
        
        if (keyboard_check(vk_right) == false && keyboard_check(vk_down))
        {
            if (place_free(x - global.player_speed, y))
                hsp = -global.player_speed;
            
            if (place_free(x, y + global.player_speed))
                vsp = global.player_speed;
        }
    }
    
    if (place_meeting(x - global.player_speed, y + global.player_speed, obj_dl))
    {
        x = xprevious;
        y = yprevious;
        
        if (keyboard_check(vk_left) && keyboard_check(vk_down) == false)
        {
            if (place_free(x - global.player_speed, y))
                hsp = -global.player_speed;
            
            if (place_free(x, y - global.player_speed))
                vsp = -global.player_speed;
        }
        
        if (keyboard_check(vk_left) == false && keyboard_check(vk_down))
        {
            if (place_free(x + global.player_speed, y))
                hsp = global.player_speed;
            
            if (place_free(x, y + global.player_speed))
                vsp = global.player_speed;
        }
    }
    
    if (place_meeting(x - global.player_speed, y - global.player_speed, obj_ul))
    {
        x = xprevious;
        y = yprevious;
        
        if (keyboard_check(vk_left) && keyboard_check(vk_up) == false)
        {
            if (place_free(x - global.player_speed, y))
                hsp = -global.player_speed;
            
            if (place_free(x, y + global.player_speed))
                vsp = global.player_speed;
        }
        
        if (keyboard_check(vk_left) == false && keyboard_check(vk_up))
        {
            if (place_free(x + global.player_speed, y))
                hsp = global.player_speed;
            
            if (place_free(x, y - global.player_speed))
                vsp = -global.player_speed;
        }
    }
    
    if (place_meeting(x + global.player_speed, y - global.player_speed, obj_ur))
    {
        x = xprevious;
        y = yprevious;
        
        if (keyboard_check(vk_right) && keyboard_check(vk_up) == false)
        {
            if (place_free(x + global.player_speed, y))
                hsp = global.player_speed;
            
            if (place_free(x, y + global.player_speed))
                vsp = global.player_speed;
        }
        
        if (keyboard_check(vk_right) == false && keyboard_check(vk_up))
        {
            if (place_free(x - global.player_speed, y))
                hsp = -global.player_speed;
            
            if (place_free(x, y - global.player_speed))
                vsp = -global.player_speed;
        }
    }
    
    if (place_meeting(x, y, obj_stairs))
    {
        x = xprevious;
        y = yprevious;
        
        if (keyboard_check(vk_right))
        {
            if (place_free(x + global.player_speed, y))
                hsp = global.player_speed;
            
            if (place_free(x, y - 2))
                vsp = -2;
        }
        
        if (keyboard_check(vk_left))
        {
            if (place_free(x - global.player_speed, y))
                hsp = -global.player_speed;
            
            if (place_free(x, y + 2))
                vsp = 2;
        }
        
        if (keyboard_check(vk_up) && !keyboard_check(vk_right))
        {
            if (place_free(x, y - 3))
                vsp = -global.player_speed;
        }
        
        if (keyboard_check(vk_down) && !keyboard_check(vk_left))
        {
            if (place_free(x, y + 3))
                vsp = global.player_speed;
        }
    }
    
    if (vsp > global.player_speed)
        vsp = global.player_speed;
    
    if (hsp > global.player_speed)
        hsp = global.player_speed;
    
    if (vsp < -global.player_speed)
        vsp = -global.player_speed;
    
    if (hsp < -global.player_speed)
        hsp = -global.player_speed;
    
    x += hsp;
    y += vsp;
    
    if (dirStore == false)
    {
        if (autowalk_direction == "right")
        {
            direction = 0;
            dirStore = true;
        }
        
        if (autowalk_direction == "left")
        {
            direction = 180;
            dirStore = true;
        }
        
        if (autowalk_direction == "down")
        {
            direction = 270;
            dirStore = true;
        }
        
        if (autowalk_direction == "up")
        {
            direction = 90;
            dirStore = true;
        }
    }
    else
    {
        if (direction == 0)
        {
            if (autowalk_direction != "right")
                dirStore = false;
            
            if (autowalk_direction == "left")
                direction = 180;
            
            if (hsp == 0 && vsp != 0)
            {
                if (autowalk_direction == "up")
                    direction = 90;
                
                if (autowalk_direction == "down")
                    direction = 270;
            }
        }
        
        if (direction == 90)
        {
            if (autowalk_direction == "up")
                dirStore = false;
            
            if (vsp == 0 && hsp != 0)
            {
                if (autowalk_direction == "left")
                    direction = 180;
                
                if (autowalk_direction == "right")
                    direction = 0;
            }
        }
        
        if (direction == 180)
        {
            if (autowalk_direction != "left")
                dirStore = false;
            
            if (hsp == 0 && vsp != 0)
            {
                if (autowalk_direction == "up")
                    direction = 90;
                
                if (autowalk_direction == "down")
                    direction = 270;
            }
        }
        
        if (direction == 270)
        {
            if (autowalk_direction != "down")
                dirStore = false;
            
            if (autowalk_direction == "up")
                direction = 90;
            
            if (vsp == 0 && hsp != 0)
            {
                if (autowalk_direction == "left")
                    direction = 180;
                
                if (autowalk_direction == "right")
                    direction = 0;
            }
        }
    }
}
