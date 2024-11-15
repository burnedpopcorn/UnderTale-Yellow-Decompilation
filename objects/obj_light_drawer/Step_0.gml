if (live_call())
    return global.live_result;

if (!instance_exists(shadow_actor))
{
    instance_destroy();
    exit;
}

with (shadow_actor)
{
    if (place_meeting(x, y, obj_shadow_collider))
        other.shadow_active = true;
    else
        other.shadow_active = false;
}

if (shadow_active == true)
{
    if (reverse == false)
    {
        if (draw_alpha < 0.3)
            draw_alpha += 0.1;
    }
    else if (draw_alpha > 0)
    {
        draw_alpha -= 0.1;
    }
}
else if (reverse == false)
{
    if (draw_alpha > 0)
        draw_alpha -= 0.1;
}
else if (draw_alpha < 0.3)
{
    draw_alpha += 0.1;
}

shadow_actor.visible = false;
depth = shadow_actor.depth - 1;
