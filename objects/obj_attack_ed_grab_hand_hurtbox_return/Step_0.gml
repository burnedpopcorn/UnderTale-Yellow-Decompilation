with (obj_heart_battle_fighting_parent)
{
    if (moveable == false)
        instance_destroy(other);
}

if (!instance_exists(spawner))
    instance_destroy();

if (spawner == -4 || !instance_exists(spawner))
{
    show_debug_message("NO SPAWNER FOR THE HAND HURTBOX DETECTED!");
    exit;
}

x = spawner.x;
y = spawner.y;

if (spawner.attack_state != 5)
    instance_destroy();
