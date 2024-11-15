if (live_call())
    return global.live_result;

if (draw_sprite_hurt == false)
    draw_sprite_hurt = true;
else
    draw_sprite_hurt = false;

alarm[3] = 2;
