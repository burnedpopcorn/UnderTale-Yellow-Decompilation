if (live_call())
    return global.live_result;

var collider = instance_place(x, y, obj_battle_enemy_attack_bigfrog_frog_tongue_tip);

if (is_caught == false && collider != -4)
{
    tongue_parent = collider;
    is_caught = true;
}

if (tongue_parent != -4)
{
    if (instance_exists(tongue_parent))
    {
        x = tongue_parent.x;
        y = tongue_parent.y;
    }
    else
    {
        instance_destroy();
    }
    
    exit;
}

x_offset = random_range(-jitter, jitter);
x_normal += hsp;
x = x_normal + x_offset;
y_offset = random_range(-jitter, jitter);
y = ystart + y_offset;
