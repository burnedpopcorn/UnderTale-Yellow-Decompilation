var battle_box, i, bullet;

if (live_call())
    return global.live_result;

battle_box = 3154;

for (i = 0; i < 20; i++)
{
    bullet = instance_create_depth(irandom_range(bbox_left, bbox_right), irandom_range(battle_box.bbox_top - 10, battle_box.bbox_top - 100), -100, obj_battle_enemy_attack_asgore_warning_flame);
    bullet.vspeed = 12;
}

for (i = 0; i < 20; i++)
{
    bullet = instance_create_depth(irandom_range(bbox_left, bbox_right), irandom_range(battle_box.bbox_bottom + 10, battle_box.bbox_bottom + 100), -100, obj_battle_enemy_attack_asgore_warning_flame);
    bullet.vspeed = -12;
}

audio_play_sound(snd_soul_gameover_hit_break, 1, 0);
instance_destroy();