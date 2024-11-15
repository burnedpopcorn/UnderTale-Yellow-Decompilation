var box, robot_b, hands_b, robot_a, hands_a, adv, x_target, current_ball, max_shards, shard_spread, i, shard;

if (live_call())
    return global.live_result;

box = 3154;

switch (scene)
{
    case 0:
        if (obj_guardener_guy_a.active == false && obj_guardener_guy_a.is_on_target && obj_guardener_guy_b.is_on_target)
        {
            robot_b = instance_create(-40, box.y, obj_guardener_guy_b_noarms);
            hands_b = instance_create_depth(robot_b.x, robot_b.y, robot_b.depth - 1, obj_guardener_guy_throwing_hands);
            hands_b.robot_parent = robot_b;
            hands_b.bombs = true;
            robot_a = instance_create(room_width + 40, box.y, obj_guardener_guy_a_noarms);
            hands_a = instance_create_depth(robot_a.x, robot_a.y, robot_a.depth - 1, obj_guardener_guy_throwing_hands);
            hands_a.robot_parent = robot_a;
            hands_a.image_xscale = -1;
            hands_a.throw_delay += hands_a.image_number - 0.5;
            hands_a.bombs = true;
            cutscene_advance();
        }
        
        obj_guardener_guy_a.active = false;
        obj_guardener_guy_b.active = false;
        break;
    
    case 1:
        adv = 2;
        
        with (obj_guardener_guy_a_noarms)
        {
            x_target = box.bbox_right + 40;
            x = lerp(x, x_target, 0.2);
            y = lerp(y, box.y, 0.2);
            
            if ((abs(x + y) - abs(x_target + box.y)) < 1)
                adv -= 1;
        }
        
        with (obj_guardener_guy_b_noarms)
        {
            x_target = box.bbox_left - 40;
            x = lerp(x, x_target, 0.2);
            y = lerp(y, box.y, 0.2);
            
            if ((abs(x + y) - abs(x_target + box.y)) < 1)
                adv -= 1;
        }
        
        if (adv <= 0)
            cutscene_advance();
        
        break;
    
    case 2:
        break;
    
    case 3:
        adv = 2;
        
        with (obj_guardener_guy_a_noarms)
        {
            x_target = 720;
            x = lerp(x, x_target, 0.2);
            
            if (x > (x_target - 40))
                adv -= 1;
        }
        
        with (obj_guardener_guy_b_noarms)
        {
            x_target = -40;
            x = lerp(x, x_target, 0.2);
            
            if (x < (x_target + 20))
                adv -= 1;
        }
        
        if (adv <= 0)
            cutscene_advance();
        
        break;
    
    case 4:
        obj_guardener_guy_a.active = true;
        obj_guardener_guy_b.active = true;
        instance_destroy();
        break;
}

if (instance_exists(obj_guardener_guy_b_shield))
{
    current_ball = instance_find(obj_battle_enemy_attack_guardener_bullet, 0);
    
    if (instance_exists(obj_battle_enemy_attack_guardener_bullet))
        obj_guardener_guy_b_shield.y = lerp(obj_guardener_guy_b_shield.y, current_ball.y + 20, 0.4);
}

with (obj_guardener_guy_a_flintlock)
{
    if (image_index >= (image_number - 1))
    {
        switch (sprite_index)
        {
            case spr_guardener_guy_b_flintlock_reload:
                sprite_index = spr_guardener_guy_b_flintlock;
                image_index = 0;
                break;
            
            case spr_guardener_guy_b_flintlock_shoot:
                sprite_index = spr_guardener_guy_b_flintlock_reload;
                image_index = 0;
                break;
        }
    }
}

with (obj_battle_enemy_attack_guardener_bullet)
{
    if (x < (obj_guardener_guy_b_shield.x + 40))
    {
        max_shards = 3;
        shard_spread = 45;
        
        for (i = 0; i < max_shards; i++)
        {
            shard = instance_create_depth(x, y, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_guardener_bullet_shard);
            shard.speed = 4;
            shard.direction = -45 + (i * shard_spread);
        }
        
        audio_play_sound(snd_guardener_flintlock_shield, 1, 0);
        instance_destroy();
    }
}
