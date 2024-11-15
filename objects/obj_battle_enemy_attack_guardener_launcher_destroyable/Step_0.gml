var shard_spread, i, shard;

if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        break;
}

if (place_meeting(x, y, obj_battle_enemy_attack_guardener_arm))
{
    instance_destroy();
    instance_create_depth(x, y, depth - 100, obj_battle_enemy_attack_guardener_launcher_explosion);
    shard_spread = 15;
    
    for (i = 0; i < debris_count_big; i++)
    {
        shard = instance_create_depth(x, y, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_guardener_gear_piece_big);
        shard.speed = 9;
        shard.direction = 90 + (i * shard_spread * sign(x - 320));
    }
    
    audio_play_sound(snd_guardener_flintlock_shield, 1, 0);
    shard_spread = 10;
    
    for (i = 0; i < debris_count_small; i++)
    {
        shard = instance_create_depth(x, y, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_guardener_gear_piece_small);
        shard.speed = 11;
        shard.direction = 90 + (i * shard_spread * sign(x - 320));
    }
    
    audio_play_sound(snd_guardener_flintlock_shield, 1, 0);
    instance_destroy();
    instance_destroy();
}
