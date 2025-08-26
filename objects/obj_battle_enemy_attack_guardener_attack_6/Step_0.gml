if (live_call())
    return global.live_result;

var box = obj_dialogue_box_battle_transformation_any;

switch (scene)
{
    case 0:
        if (obj_guardener_guy_a.active == false && obj_guardener_guy_a.is_on_target && obj_guardener_guy_b.is_on_target)
        {
            instance_create(-40, box.y, obj_guardener_guy_b_shield);
            instance_create(room_width + 40, box.y, obj_guardener_guy_a_flintlock);
            cutscene_advance();
        }
        
        obj_guardener_guy_a.active = false;
        obj_guardener_guy_b.active = false;
        break;
    
    case 1:
    case 3:
        var adv = 2;
        
        with (obj_guardener_guy_a_flintlock)
        {
            var x_target = box.bbox_right + 80;
            x = lerp(x, x_target, 0.2);
            y = lerp(y, box.y, 0.2);
            
            if ((abs(x + y) - abs(x_target + box.y)) < 1)
                adv -= 1;
        }
        
        with (obj_guardener_guy_b_shield)
        {
            var x_target = box.bbox_left - 40;
            x = lerp(x, x_target, 0.2);
            y = lerp(y, box.y, 0.2);
            
            if ((abs(x + y) - abs(x_target + box.y)) < 1)
                adv -= 1;
        }
        
        if (adv <= 0)
            cutscene_advance();
        
        break;
    
    case 2:
        var lerp_amount_new = 0.1;
        
        if (obj_guardener_guy_a_flintlock.sprite_index != spr_guardener_guy_b_flintlock_shoot)
        {
            lerp_amount_new = 0.01;
            lerp_amount = lerp_amount_new;
        }
        
        lerp_amount = 0.1;
        obj_guardener_guy_a_flintlock.y = lerp(obj_guardener_guy_a_flintlock.y, obj_heart_battle_fighting_red.y + 30, lerp_amount);
        
        if (shoot_timer > 0)
        {
            shoot_timer -= 1;
        }
        else
        {
            with (obj_guardener_guy_a_flintlock)
            {
                audio_play_sound(snd_guardener_flintlock, 1, 0);
                sprite_index = spr_guardener_guy_b_flintlock_shoot;
                image_index = 0;
                instance_create_depth(x - 40, y - 30, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_guardener_bullet);
            }
            
            shoot_timer = shoot_timer_max;
            shoot_count -= 1;
            
            if (shoot_count == 0)
                cutscene_advance();
        }
        
        break;
    
    case 4:
        obj_guardener_guy_a_flintlock.sprite_index = spr_guardener_guy_b_flintlock;
        cutscene_wait(1);
        break;
    
    case 5:
        var adv = 2;
        
        with (obj_guardener_guy_a_flintlock)
        {
            var x_target = 720;
            x = lerp(x, x_target, 0.2);
            
            if (x > (x_target - 40))
                adv -= 1;
        }
        
        with (obj_guardener_guy_b_shield)
        {
            var x_target = -40;
            x = lerp(x, x_target, 0.2);
            
            if (x < (x_target + 20))
                adv -= 1;
        }
        
        if (adv <= 0)
            cutscene_advance();
        
        break;
    
    case 6:
        obj_guardener_guy_a.active = true;
        obj_guardener_guy_b.active = true;
        instance_destroy();
        break;
}

if (instance_exists(obj_guardener_guy_b_shield))
{
    var current_ball = instance_find(obj_battle_enemy_attack_guardener_bullet, 0);
    
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
        var max_shards = 3;
        var shard_spread = 45;
        
        for (var i = 0; i < max_shards; i++)
        {
            var shard = instance_create_depth(x, y, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_guardener_bullet_shard);
            shard.speed = 4;
            shard.direction = -45 + (i * shard_spread);
        }
        
        audio_play_sound(snd_guardener_flintlock_shield, 1, 0);
        instance_destroy();
    }
}
