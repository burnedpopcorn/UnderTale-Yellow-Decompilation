var greenfrog;

if (is_green)
{
    greenfrog = instance_create_depth(x, y, depth - 1, obj_battle_enemy_attack_space_green_frog);
    
    with (greenfrog)
    {
        direction = irandom_range(45, 90);
        speed = 5;
    }
}

instance_destroy();
instance_destroy(other);
