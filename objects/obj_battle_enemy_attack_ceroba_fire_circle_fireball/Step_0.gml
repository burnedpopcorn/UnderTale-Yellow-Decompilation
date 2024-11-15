var count;

if (!instance_exists(obj_heart_battle_fighting_parent))
{
    instance_destroy();
    exit;
}

if (state < 3)
{
    attack_target_x = obj_heart_battle_fighting_parent.x;
    attack_target_y = obj_heart_battle_fighting_parent.y;
}

x = attack_target_x + lengthdir_x(attack_distance, attack_dir);
y = attack_target_y + lengthdir_y(attack_distance, attack_dir);

if (state == 0)
{
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
}

if (state == 1)
{
    if (attack_dir < 360)
        attack_dir += bullet_speed;
    else
        attack_dir = bullet_speed;
    
    bullet_speed = lerp(bullet_speed, 0, 0.75);
    
    if (round(bullet_speed) == 0)
        state = 2;
}

if (state == 2)
{
    attack_distance = lerp(attack_distance, attack_distance_max, 0.5);
    
    if (round(attack_distance) == attack_distance_max)
    {
        state = 3;
        audio_play_sound(snd_ceroba_swoosh, 1, 0);
    }
}

if (state == 3)
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
            instance_create(attack_target_x, attack_target_y, obj_battle_enemy_attack_ceroba_fire_circle_explosion);
        
        instance_destroy();
        instance_destroy(bullet_spawner);
    }
    
    homing_speed += 1;
}
