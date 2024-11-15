draw_alpha = lerp(draw_alpha, target_alpha, 0.1);

if (target_alpha != 0 && noloop == false)
{
    if (instance_exists(obj_heart_battle_fighting_parent))
        noloop = true;
}

if (noloop == true)
{
    if (!instance_exists(obj_heart_battle_fighting_parent))
    {
        noloop = false;
        target_alpha = 0;
    }
}

image_total += 2;
