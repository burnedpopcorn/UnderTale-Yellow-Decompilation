if (boss_fade_in == true)
{
    if (boss_draw_alpha < 1)
    {
        boss_draw_alpha += 0.05;
    }
    else
    {
        instance_destroy();
        exit;
    }
    
    if (instance_exists(obj_battle_enemy_attack_starlo_bell))
        obj_battle_enemy_attack_starlo_bell.image_alpha -= 0.1;
}
else if (boss_draw_alpha > 0.5)
{
    boss_draw_alpha -= 0.05;
}

with (obj_starlo_boss_body)
    image_alpha = other.boss_draw_alpha;

with (obj_starlo_boss_head)
    image_alpha = other.boss_draw_alpha;
