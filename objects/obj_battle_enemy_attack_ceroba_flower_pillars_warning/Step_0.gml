switch (image_index)
{
    case 4:
    case 6:
    case 8:
        audio_play_sound(snd_bullet_warning, 1, 0);
        break;
}

if (image_index >= (image_number - 1))
{
    var bullet = instance_create(x + lengthdir_x(128, direction), y + lengthdir_y(128, direction), obj_battle_enemy_attack_ceroba_flower_pillars_bullet_2);
    bullet.direction = point_direction(bullet.x, bullet.y, x, y);
    instance_destroy();
}
