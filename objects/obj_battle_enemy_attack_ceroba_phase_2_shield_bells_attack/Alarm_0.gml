if (live_call())
    return global.live_result;

if (!instance_exists(obj_ceroba_phase_2_shield))
    exit;

var shot_offset = 6;
var wave_offset = 15;
var bullet_number = 5;
var bullet_speed = 6;
var spawn_dir = bullet_spawn_direction;

if (current_bell == -4)
{
    bullet_spawn_direction = irandom_range(0, 360);
    
    do
        current_bell = instance_find(obj_ceroba_phase_2_bell, irandom(instance_number(obj_ceroba_phase_2_bell) - 1));
    until (current_bell != last_bell || instance_number(obj_ceroba_phase_2_bell) <= 1);
    
    last_bell = current_bell;
}

if (instance_exists(current_bell))
{
    with (current_bell)
    {
        var i = spawn_dir;
        
        while (i < (360 + spawn_dir))
        {
            var fireball = instance_create_depth(x, y, depth + 1, obj_ceroba_attack_fireball);
            fireball.direction = i;
            fireball.speed = bullet_speed;
            i += (360 / bullet_number);
        }
        
        image_xscale = 1.5;
        image_yscale = 1.5;
    }
}
else
{
    alarm[0] = wave_offset;
    current_bell = -4;
    shot_count = shot_count_max;
    exit;
}

if (shot_count > 1)
{
    alarm[0] = shot_offset;
    shot_count -= 1;
    bullet_spawn_direction += bullet_spawn_direction_inc;
}
else
{
    alarm[0] = wave_offset;
    current_bell = -4;
    shot_count = shot_count_max;
}
