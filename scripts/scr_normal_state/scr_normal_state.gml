function scr_normal_state()
{
    if (live_call())
        return global.live_result;
    
    scr_get_input();
    
    if (DEBUG_DANCE == false)
    {
    }
    else if (DEBUG_DANCE)
    {
        if (sprite_index != spr_pl_dance)
        {
            sprite_index = spr_pl_dance;
            image_speed = 1;
        }
        
        if (global.right_key + global.left_key + global.up_key + global.down_key)
            DEBUG_DANCE = false;
        else
            exit;
    }
    
    if (global.cutscene == true)
        exit;
    
    var hsp = 0;
    var vsp = 0;
    var pl_spd = plspd;
    
    if (global.option_autorun ^^ keyboard_multicheck(vk_anykey) && global.player_can_run == true)
    {
        is_sprinting = true;
        pl_spd = plspd + 2;
    }
    else if (is_sprinting == true)
    {
        is_sprinting = false;
    }
    
    hsp = sign(global.right_key - (global.left_key * 2)) * pl_spd;
    vsp = sign(global.down_key - (global.up_key * 2)) * pl_spd;
    
    if (place_meeting(x + 1, y, obj_dr) || place_meeting(x, y + 1, obj_dr))
    {
        x = xprevious;
        y = yprevious;
        
        if (hsp > 0 && vsp > 0)
        {
            hsp = 0;
            vsp = 0;
        }
        else if (hsp > 0)
        {
            vsp = -pl_spd - 1;
        }
        else if (vsp > 0)
        {
            hsp = -pl_spd - 1;
        }
    }
    
    if (place_meeting(x - 1, y, obj_dl) || place_meeting(x, y + 1, obj_dl))
    {
        x = xprevious;
        y = yprevious;
        
        if (hsp < 0 && vsp > 0)
        {
            hsp = 0;
            vsp = 0;
        }
        else if (hsp < 0)
        {
            vsp = -pl_spd - 1;
        }
        else if (vsp > 0)
        {
            hsp = pl_spd + 1;
        }
    }
    
    if (place_meeting(x + 1, y, obj_ur) || place_meeting(x, y - 1, obj_ur))
    {
        x = xprevious;
        y = yprevious;
        
        if (hsp > 0 && vsp < 0)
        {
            hsp = 0;
            vsp = 0;
        }
        else if (hsp > 0)
        {
            vsp = pl_spd + 1;
        }
        else if (vsp < 0)
        {
            hsp = -pl_spd - 1;
        }
    }
    
    if (place_meeting(x + 1, y, obj_ul) || place_meeting(x, y - 1, obj_ul))
    {
        x = xprevious;
        y = yprevious;
        
        if (hsp < 0 && vsp < 0)
        {
            hsp = 0;
            vsp = 0;
        }
        else if (hsp < 0)
        {
            vsp = pl_spd + 1;
        }
        else if (vsp < 0)
        {
            hsp = pl_spd + 1;
        }
    }
    
    if (place_meeting(x, y, obj_stairs))
    {
        x = xprevious;
        y = yprevious;
        
        if (global.right_key)
        {
            if (place_free(x + pl_spd, y))
                hsp = pl_spd;
            
            if (place_free(x, y - 2))
                vsp = -2;
        }
        
        if (global.left_key)
        {
            if (place_free(x - pl_spd, y))
                hsp = -pl_spd;
            
            if (place_free(x, y + 2))
                vsp = 2;
        }
        
        if (global.up_key && !global.right_key && !global.down_key)
        {
            if (place_free(x, y - 3))
                vsp = -pl_spd;
        }
        
        if (global.down_key && !global.left_key && !global.up_key)
        {
            if (place_free(x, y + 3))
                vsp = pl_spd;
        }
    }
    
    if (!global.debugmove)
    {
        if (!place_free(x + hsp, y))
        {
            while (place_free(x + sign(hsp), y))
                x += sign(hsp);
            
            hsp = 0;
        }
        
        if (!place_free(x, y + vsp))
        {
            while (place_free(x, y + sign(vsp)))
                y += sign(vsp);
            
            vsp = 0;
        }
        
        if (!place_free(x + hsp, y + vsp))
        {
            while (place_free(x + sign(hsp), y + sign(vsp)))
            {
                x += sign(hsp);
                y += sign(vsp);
            }
            
            hsp = 0;
            vsp = 0;
        }
    }
    
    if (vsp == 0 && hsp == 0)
    {
        image_speed = 0;
        image_index = 0;
        is_sprinting = false;
        global.walking = false;
    }
    else if (global.walking == false)
    {
        image_index = 1;
        global.walking = true;
        image_speed = 0.2;
    }
    
    if (is_sprinting)
    {
        if (image_speed != 0)
            image_speed = 1/3;
    }
    else if (global.walking)
    {
        image_speed = 0.2;
    }
    
    var can_pause = true;
    
    if (instance_exists(obj_flowey_world_controller) || instance_exists(obj_flowey_1_controller_base) || room == rm_battle_flashback_final_2 || room == rm_battle_flashback_07 || (room == rm_steamworks_21 && instance_exists(obj_steamworks_21_controller) && obj_steamworks_21_controller.axis_is_running))
        can_pause = false;
    
    if (keyboard_multicheck_pressed(2) && !instance_exists(obj_transition) && can_pause)
    {
        instance_create(0, 0, obj_pause_menu);
        state = scr_frozen_state;
    }
    
    if (sliding == false)
    {
        if (dirStore == false)
        {
            if (global.right_key)
            {
                direction = 0;
                dirStore = true;
            }
            
            if (global.left_key)
            {
                direction = 180;
                dirStore = true;
            }
            
            if (global.down_key)
            {
                direction = 270;
                dirStore = true;
            }
            
            if (global.up_key)
            {
                direction = 90;
                dirStore = true;
            }
        }
        else
        {
            if (direction == 0)
            {
                if (!global.right_key)
                    dirStore = false;
                
                if (global.left_key)
                    direction = 180;
                
                if (hsp == 0 && vsp != 0)
                {
                    if (global.up_key == 1)
                        direction = 90;
                    
                    if (global.down_key == 1)
                        direction = 270;
                }
            }
            
            if (direction == 90)
            {
                if (!global.up_key)
                    dirStore = false;
                
                if (vsp == 0 && hsp != 0)
                {
                    if (global.left_key == 1)
                        direction = 180;
                    
                    if (global.right_key == 1)
                        direction = 0;
                }
            }
            
            if (direction == 180)
            {
                if (!global.left_key)
                    dirStore = false;
                
                if (hsp == 0 && vsp != 0)
                {
                    if (global.up_key == 1)
                        direction = 90;
                    
                    if (global.down_key == 1)
                        direction = 270;
                }
            }
            
            if (direction == 270)
            {
                if (!global.down_key)
                    dirStore = false;
                
                if (global.up_key)
                    direction = 90;
                
                if (vsp == 0 && hsp != 0)
                {
                    if (global.left_key == 1)
                        direction = 180;
                    
                    if (global.right_key == 1)
                        direction = 0;
                }
            }
        }
    }
    
    if (place_meeting(x, y, obj_slippery_ice) && sliding == false)
    {
        if (hsp_slide == 0 && vsp_slide == 0)
        {
            hsp_slide = hsp + sign(hsp);
            vsp_slide = vsp + sign(vsp);
        }
        
        sliding = true;
    }
    
    if (sliding == true)
    {
        hsp = hsp_slide;
        vsp = vsp_slide;
        
        if (!place_meeting(x, y, obj_slippery_ice) || (place_meeting(x, y, obj_slippery_ice) && hsp == 0 && vsp == 0) || !place_free(x + hsp, y + vsp))
        {
            hsp_slide = 0;
            vsp_slide = 0;
            hsp = 0;
            vsp = 0;
            sliding = false;
        }
        
        x += hsp;
        y += vsp;
        exit;
    }
    
    if (vsp > pl_spd)
        vsp = pl_spd;
    
    if (hsp > pl_spd)
        hsp = pl_spd;
    
    if (vsp < -pl_spd)
        vsp = -pl_spd;
    
    if (hsp < -pl_spd)
        hsp = -pl_spd;
    
    x += hsp;
    y += vsp;
}
