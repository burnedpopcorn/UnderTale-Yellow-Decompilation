arc_upgrade = other.arc_upgrade_type;

switch (arc_upgrade)
{
    case "Rapid":
        audio_play_sound(snd_mew_upgrade_rapid, 1, 0);
        break;
    
    case "Shotgun":
        audio_play_sound(snd_mew_upgrade_shotgun, 1, 0);
        break;
}

alarm[0] = 240;
instance_destroy(other);
