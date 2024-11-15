var count;

if (live_call())
    return global.live_result;

if (!instance_exists(obj_heart_battle_fighting_parent))
{
    instance_destroy();
    exit;
}

if (state < 1)
{
    attack_target_x = target.x;
    attack_target_y = target.y;
}

x = attack_target_x + lengthdir_x(attack_distance, attack_dir);
y = attack_target_y + lengthdir_y(attack_distance, attack_dir);

if (image_alpha < 1 && can_move == false)
{
    image_alpha += 0.2;
    
    if (image_alpha > 1)
        image_alpha = 1;
}

if (attack_dir < 360)
    attack_dir += bullet_speed;
else
    attack_dir = bullet_speed;

if (state == 0)
{
}

if (state == 1 || state == 2)
{
    if (attack_distance > 0)
    {
        attack_distance -= homing_speed;
    }
    else
    {
        count = 0;
        
        with (object_index)
        {
            if (bullet_spawner == other.bullet_spawner)
                count += 1;
        }
        
        if (count == 1)
            instance_create_depth(attack_target_x, attack_target_y, -200, obj_battle_enemy_attack_ceroba_flower_circle_explosion);
        
        instance_destroy();
        instance_destroy(bullet_spawner);
    }
    
    if (state != 2)
    {
        homing_speed += 0.1;
        
        if (global.hotland_flag[2] == 3)
            homing_speed += 0.1;
    }
}
