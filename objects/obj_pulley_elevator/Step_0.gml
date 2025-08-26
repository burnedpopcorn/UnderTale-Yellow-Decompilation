if (elevator_can_collide)
{
    var elevator_collided_player;
    
    if (place_meeting(x, y, obj_pl))
        elevator_collided_player = true;
    else
        elevator_collided_player = false;
    
    if (elevator_active == false)
    {
        if (!elevator_collided_player)
            elevator_active = true;
        
        exit;
    }
    
    if (elevator_collided_player)
    {
        if (!alarm[0])
            alarm[0] = 30;
    }
    else
    {
        alarm[0] = -1;
    }
}

if (act == 0)
{
    if (scene == 1)
    {
        if (player_x == 0)
            player_x = obj_pl.x;
        
        if (player_y == 0)
            player_y = obj_pl.y;
        
        obj_pl.x = player_x;
        obj_pl.y = player_y;
        x = xstart;
        y = ystart;
        
        if (shake_strength > 0)
            shake_strength -= 0.05;
        
        var shake_x = random_range(-shake_strength, shake_strength);
        var shake_y = random_range(-shake_strength, shake_strength);
        x += shake_x;
        y += shake_y;
        obj_pl.x += shake_x;
        obj_pl.y += shake_y;
        
        if (instance_exists(obj_martlet_npc))
        {
            obj_martlet_npc.x = follower_x_target;
            obj_martlet_npc.y = follower_y_target;
            obj_martlet_npc.x += shake_x;
            obj_martlet_npc.y += shake_y;
            obj_martlet_npc.depth = depth - 1;
        }
        
        if (scr_timer())
        {
            x = xstart;
            y = ystart;
            timer = 30;
            layer_depth("ground_tiles", -9999998);
            layer_depth("grass_tiles", -9999999);
            scene++;
        }
    }
    
    if (scene == 2)
    {
        if (scr_timer())
        {
            if (!audio_is_playing(snd_helivator))
            {
                audio_sound_gain(snd_helivator, 0, 0);
                audio_sound_gain(snd_helivator, 1, 600);
                audio_play_sound(snd_helivator, 20, 1);
            }
            
            obj_pl.depth = depth - 1;
            obj_pl.y += (pull_speed * sign(target_y - starting_y));
            
            if (instance_exists(obj_martlet_npc))
            {
                obj_martlet_npc.y = obj_pl.y;
                obj_martlet_npc.depth = depth - 1;
            }
            
            y += (pull_speed * sign(target_y - starting_y));
            
            if (pull_speed < 2.5)
                pull_speed += (0.01 + (0.03 * abs(pull_speed)));
            
            if (abs(target_y - y) <= pull_speed)
            {
                if (!instance_exists(obj_transition))
                {
                    var trn = instance_create(x, y, obj_transition);
                    trn.newRoom = elevator_next_room;
                    trn.xx = 195;
                    trn.yy = 440;
                }
            }
        }
    }
}

if (act == 1)
{
    obj_pl.depth = depth - 1;
    
    if (scene == 0)
    {
        obj_pl.y += (pull_speed * sign(starting_y - y));
        
        if (instance_exists(obj_martlet_npc))
        {
            obj_martlet_npc.y = obj_pl.y;
            obj_martlet_npc.depth = depth - 1;
        }
        
        y += (pull_speed * sign(starting_y - y));
        
        if (abs(starting_y - y) <= 50 && pull_speed > 0)
            pull_speed -= (0.01 + (0.03 * abs(pull_speed)));
        
        if (abs(starting_y - y) <= pull_speed)
        {
            y = starting_y;
            timer = 15;
            scene++;
        }
    }
    
    if (scene == 1)
    {
        if (!scr_timer())
        {
            act = 0;
            pull_speed = 0;
            timer = 20;
            elevator_can_collide = true;
            scr_audio_fade_out(snd_helivator, 600);
            
            if (instance_exists(obj_martlet_npc))
            {
                with (obj_martlet_npc)
                {
                    instance_create(x, y, obj_martlet_follower);
                    obj_martlet_follower.dir_new[1] = 270;
                    obj_martlet_follower.npc_reset = true;
                    obj_martlet_follower.image_blend = image_blend;
                    instance_destroy();
                }
            }
            
            if (room == rm_dunes_27)
            {
                layer_depth("grass_tiles", 1000000);
                layer_depth("ground_tiles", 1000001);
            }
            
            scene = 0;
            alarm[1] = 5;
        }
    }
}

if (instance_exists(obj_martlet_npc))
    obj_martlet_npc.image_blend = obj_pl.image_blend;
