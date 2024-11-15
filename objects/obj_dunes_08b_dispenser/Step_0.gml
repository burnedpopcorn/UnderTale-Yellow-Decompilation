if (anim_speed < 7)
    anim_speed += 0.2;
else
    anim_speed = 0;

if (place_meeting(x, y, obj_dunes_08b_stand) && !water_fly_away)
{
    water_fly_away = true;
    instance_create(0, 0, obj_screenshake);
    audio_play_sound(snd_attackhitcrit, 1, 0);
}

if (water_fly_away)
{
    sprite_index = spr_water_dispenser_broken;
    image_angle += 25;
    y -= 2;
    x += 6;
}

depth = -y;
