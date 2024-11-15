var i, debris;

audio_play_sound(snd_rock_break, 1, 0);
scr_screenshake_battle_custom(6, 1);

for (i = 0; i < 4; i++)
{
    debris = instance_create_depth(x, y, -100, obj_battle_enemy_attack_space_rock_debris);
    debris.direction = 45 + (i * 30);
    debris.speed = 5;
}
