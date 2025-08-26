if (live_call())
    return global.live_result;

state = 2;
var xx = obj_heart_battle_fighting_parent.x;
var yy = obj_heart_battle_fighting_parent.y + 5;
var point_dir = point_direction(x, y, xx, yy);

if (abs(angle_difference(direction, 0)) > 1 && state == 0)
{
    direction -= (angle_difference(direction, 0) * 0.3);
}
else
{
    state = 1;
    image_angle = 0;
}

if (state == 1)
{
    direction -= (angle_difference(direction, point_dir) * 0.15);
    
    if (shoot_timer > 0)
    {
        if (can_shoot == false)
            shoot_timer--;
    }
    else
    {
        draw_aim_line = true;
        audio_play_sound(snd_bullet_warning, 1, 0);
        can_shoot = true;
        shoot_timer = shoot_timer_max;
    }
    
    if (can_shoot == true)
    {
        if (shoot_delay > 0)
        {
            shoot_delay--;
        }
        else
        {
            sprite_index = spr_guardener_guy_gun_gun_shoot;
            var bullet = instance_create_depth(x + 2, y - 6, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_guardener_bullet_b);
            bullet.image_angle = direction;
            audio_play_sound(snd_guardener_shoot, 1, 0);
            random_y_offset = choose(-10, 10);
            direction += (45 + random_y_offset);
            draw_aim_line = false;
            can_shoot = false;
            shoot_delay = shoot_delay_max;
            
            if (shoot_number > 0)
                shoot_number -= 1;
            else
                alarm[0] = 15;
        }
    }
}

image_alpha = lerp(image_alpha, 1, 0.2);
image_angle = direction;
x = obj_guardener_guy_c_gun.x + 20;
y = obj_guardener_guy_c_gun.y - 15;
