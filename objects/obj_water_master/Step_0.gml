with (obj_pl)
{
    if (place_meeting(x, y, obj_water_collider))
    {
        if (other.active == false)
        {
            other.active = true;
            audio_play_sound(snd_splash, 1, 0);
        }
    }
    else
    {
        other.active = false;
    }
}

if (active == true)
    global.player_sprites = "water";
else
    global.player_sprites = "dunescave";

if (!instance_exists(obj_martlet_follower))
    exit;

with (obj_martlet_follower)
{
    if (place_meeting(x, y, obj_water_collider))
    {
        if (sprites_water_override == false)
        {
            sprites_water_override = true;
            audio_play_sound(snd_splash, 1, 0);
        }
    }
    else
    {
        sprites_water_override = 2;
    }
}
