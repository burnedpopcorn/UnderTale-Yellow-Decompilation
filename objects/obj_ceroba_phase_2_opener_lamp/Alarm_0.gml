if (live_call())
    return global.live_result;

var bullet_number = 6;
var bullet_spawn_timer = 12;
var wave_spawn_timer = bullet_spawn_timer * 3;
var bullet_speed = 4;
var i = bullet_spawn_direction;

while (i < (360 + bullet_spawn_direction))
{
    var fireball = instance_create_depth(x, y, depth + 1, obj_ceroba_attack_fireball);
    ds_list_add(fireball_list, fireball);
    fireball.direction = i;
    fireball.speed = bullet_speed;
    i += (360 / bullet_number);
}

bullet_spawn_direction += bullet_spawn_direction_inc;
image_xscale = 1.5;
image_yscale = 1.5;
shot_count -= 1;

if (shot_count > 0)
{
    alarm[0] = bullet_spawn_timer;
}
else if (wave_count > 1)
{
    shot_count = 3;
    wave_count -= 1;
    alarm[0] = wave_spawn_timer;
}
else
{
    fade_out = true;
}
