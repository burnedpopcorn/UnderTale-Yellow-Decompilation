if (!instance_exists(obj_heart_battle_fighting_parent))
{
    instance_destroy();
    exit;
}

attack_target_x = creator.x;
attack_target_y = creator.y;
x = attack_target_x + lengthdir_x(attack_distance, attack_dir);
y = attack_target_y + lengthdir_y(attack_distance, attack_dir);

if (attack_dir < 360)
    attack_dir += bullet_speed;
else
    attack_dir = bullet_speed;

attack_distance += bullet_speed_2;
bullet_speed_2 = lerp(bullet_speed_2, 2, 0.1);

if (fade_out == true)
{
    if (image_alpha > 0)
        image_alpha -= 0.1;
    else
        instance_destroy();
}
