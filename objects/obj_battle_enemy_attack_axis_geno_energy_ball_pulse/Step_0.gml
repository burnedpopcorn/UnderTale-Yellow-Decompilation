var heart;

if (live_call())
    return global.live_result;

heart = obj_heart_battle_fighting_parent;

if (image_alpha <= 1)
    image_alpha += 0.2;

if (image_index >= 11 && move_noloop == false && warn_timer == -1)
{
    direction = point_direction(x, y, heart.x, heart.y);
    speed = move_speed;
    image_speed = 0;
    image_xscale = 1.5;
    image_yscale = 1.5;
    hold_timer = 7;
    move_noloop = true;
}

if (warn_timer > 0)
{
    warn_timer--;
}
else if (warn_timer != -1)
{
    if (!warn_flash)
    {
        warn_timer = 3;
        warn_flash = true;
        audio_play_sound(snd_bullet_warning, 1, 0);
        image_blend = c_red;
    }
    else
    {
        move_noloop = false;
        warn_timer = -1;
        image_blend = c_white;
    }
}

if (hold_timer > 0)
    hold_timer--;
else
    image_speed = image_speed_base;

if (speed > 0)
    speed -= 0.5;
else
    speed = 0;

if (image_xscale > 1.05)
    image_xscale = lerp(image_xscale, 1, 0.15);
else
    image_xscale = 1;

image_yscale = image_xscale;
