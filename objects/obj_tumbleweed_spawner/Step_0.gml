var tumbleweed_time0 = 46;
var tumbleweed_time1 = 71;
var tumbleweed_time2 = 136;
var tumbleweed_time3 = 136;

switch (tumbleweed_spawn[0])
{
    case 45:
        instance_create(200, 50, obj_dunes_tumbleweed);
        break;
    
    case 1:
        tumbleweed_spawn[0] = tumbleweed_time0;
        break;
}

switch (tumbleweed_spawn[1])
{
    case 70:
    case 55:
        instance_create(320, 50, obj_dunes_tumbleweed);
        break;
    
    case 1:
        tumbleweed_spawn[1] = tumbleweed_time1;
        break;
}

switch (tumbleweed_spawn[2])
{
    case 135:
    case 120:
    case 108:
    case 60:
    case 45:
        instance_create(440, 50, obj_dunes_tumbleweed);
        break;
    
    case 1:
        tumbleweed_spawn[2] = tumbleweed_time2;
        break;
}

switch (tumbleweed_spawn[3])
{
    case 135:
    case 120:
    case 105:
    case 70:
    case 55:
    case 40:
    case 15:
        instance_create(560, 50, obj_dunes_tumbleweed);
        break;
    
    case 1:
        tumbleweed_spawn[3] = tumbleweed_time3;
        break;
}

for (var i = 0; i <= 3; i++)
{
    if (tumbleweed_spawn[i] > 1)
        tumbleweed_spawn[i] -= 1;
}

if (obj_pl.y < 250 && !player_knocked_out)
{
    with (obj_dunes_tumbleweed)
    {
        if (place_meeting(x, y, obj_pl))
        {
            scr_cutscene_start();
            audio_play_sound(snd_monster_damage_hit, 1, 0);
            other.player_knocked_out = true;
        }
    }
}

if (player_knocked_out)
{
    if (obj_pl.y < 290)
    {
        with (obj_pl)
        {
            y += 4;
            image_angle += 35;
        }
    }
    else
    {
        player_knocked_out = false;
        scr_cutscene_end();
        
        with (obj_pl)
            image_angle = 0;
    }
}

if (obj_pl.x < 680)
{
    if (!audio_is_playing(snd_rumble))
        audio_play_sound(snd_rumble, 1, 0);
}
else if (audio_is_playing(snd_rumble))
{
    scr_audio_fade_out(snd_rumble, 300);
}
