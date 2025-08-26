if (attack_spray_state == 1)
{
    x += lengthdir_x(5, point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y));
    y += lengthdir_y(5, point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y));
    image_blend = c_white;
    
    if (attack_flower_timer < attack_flower_timer_max)
    {
        attack_flower_timer++;
    }
    else
    {
        image_blend = c_red;
        audio_play_sound(snd_bullet_warning, 1, 0);
        attack_flower_timer = 0;
        attack_flower_beep_count -= 1;
        
        if (attack_flower_beep_count <= 0)
            attack_spray_state += 1;
    }
    
    exit;
}

if (attack_spray_state == 2)
{
    instance_destroy();
    
    with (instance_create(x, y, obj_battle_enemy_attack_ceroba_opener_explosion))
        ring_object = 2726;
    
    exit;
}

if (image_alpha < 1)
    image_alpha += 0.1;
else if (!alarm[0])
    alarm[0] = 10;

if (image_xscale > 1)
    image_xscale -= 0.05;

if (image_yscale > 1)
    image_yscale -= 0.05;

var xx, yy;

switch (current_position)
{
    case 3:
        xx = 320;
        yy = 60;
        break;
    
    case 2:
        xx = 440;
        yy = 110;
        break;
    
    case 1:
        xx = 200;
        yy = 110;
        break;
}

x = lerp(x, xx, 0.5);
y = lerp(y, yy, 0.5);

if (round(x) != xx || (round(y) != yy && alarm[0] > 0))
    alarm[0] = -1;
else if (!alarm[0])
    alarm[0] = 1;
