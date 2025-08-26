palette_index = obj_pl.palette_index;
shader_on = obj_pl.shader_on;

if (keyboard_multicheck_pressed(vk_nokey) && scr_interact() && waiter == 0)
    waiter = 1;

if (waiter == 1)
{
    scr_text();
    
    with (msg)
    {
        sndfnt_array[0] = snd_talk_default;
        message[0] = "* (An empty cart sits#  on the rails.)";
        message[1] = "* (Hop in?)";
        ch_msg = 1;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (outcome == 1)
        {
            if (global.party_member != -4)
            {
                message[2] = "* You takin' a ride? No#  worries! I'll catch up!";
                prt[2] = spr_martlet_head_regular;
                sndfnt_array[2] = snd_talk_martlet;
            }
            
            other.waiter = 2;
            scr_cutscene_start();
        }
        
        if (outcome == 2)
        {
            global.dialogue_open = false;
            other.waiter = 0;
        }
    }
}

if (waiter == 2 && !instance_exists(obj_npc_clover_dunes_20))
{
    obj_pl.image_alpha = 0;
    instance_create(obj_pl.x, obj_pl.y, obj_npc_clover_dunes_20);
    waiter = 3;
}

if (waiter == 3)
{
    if (global.party_member != -4)
    {
        if (global.dialogue_open)
            exit;
        
        with (obj_martlet_follower)
        {
            if (!instance_exists(obj_martlet_npc))
            {
                instance_create_depth(x, y, -y, obj_martlet_fly_away_cart);
                instance_destroy();
            }
        }
    }
    
    if (!instance_exists(obj_clover_minesjump) && !instance_exists(obj_npc_clover_dunes_20))
    {
        obj_pl.image_alpha = 0;
        sprite_index = spr_player_cart;
        
        if (global.route == 3)
            sprite_index = spr_player_cart_geno;
        
        image_speed = 0;
        
        if (room == rm_dunes_22)
            image_xscale = -1;
        
        waiter = 0;
        alarm[0] = 30;
    }
}

if (can_move)
{
    image_speed = 0.2;
    obj_pl.x = x;
    
    if (room == rm_dunes_20)
    {
        if (hspeed < 3)
            hspeed += 0.05;
        
        if (x > room_width && !alarm[1])
            alarm[1] = 15;
    }
    else if (room == rm_dunes_22)
    {
        if (hspeed > -3)
            hspeed -= 0.05;
        
        if (x < 0 && !alarm[1])
            alarm[1] = 15;
    }
}
