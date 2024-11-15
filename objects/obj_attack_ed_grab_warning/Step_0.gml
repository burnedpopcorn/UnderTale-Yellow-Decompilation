counter += image_speed;

switch (counter)
{
    case 3.2:
    case 5.6:
    case 8:
        audio_play_sound(snd_bullet_warning, 20, 0);
        break;
}

if (instance_exists(obj_attack_ed_grab_moray_sword_controller))
{
    x = obj_heart_battle_fighting_parent.x;
    y = obj_heart_battle_fighting_parent.y;
}
