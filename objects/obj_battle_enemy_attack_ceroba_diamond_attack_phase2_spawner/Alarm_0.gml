var player_soul, battle_box;

player_soul = 2979;
battle_box = 3154;

if (attack_stop)
    exit;

instance_create_depth(player_soul.x, player_soul.y, -400, obj_battle_enemy_attack_ceroba_diamond);
alarm[0] = attack_offset;
