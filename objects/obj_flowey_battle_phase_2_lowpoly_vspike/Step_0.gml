event_inherited();

if (live_call())
    return global.live_result;

if (hp_self <= 0)
{
    instance_create(x, y, obj_flowey_battle_phase_2_lowpoly_vspike_dead);
    var dir_mul = 360 / bullet_number;
    
    for (var i = 0; i < bullet_number; i++)
    {
        var bullet = instance_create_depth(x, y, -100, obj_flowey_battle_phase_2_lowpoly_pellet);
        bullet.speed = 10;
        bullet.direction = (i + 1) * dir_mul;
    }
    
    instance_destroy();
}

if (y > 700)
    instance_destroy();
