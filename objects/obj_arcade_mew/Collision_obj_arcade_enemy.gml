if (is_dashing)
    exit;

if (arc_hurt == false && other.arc_enemy_death == false)
{
    arc_hurt = true;
    obj_arcade_controller.arcade_lives -= 1;
    audio_play_sound(snd_monster_damage_hit, 1, 0);
}