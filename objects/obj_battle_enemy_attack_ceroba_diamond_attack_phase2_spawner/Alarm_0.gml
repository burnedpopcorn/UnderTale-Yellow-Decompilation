var player_soul = 2980;
var battle_box = obj_dialogue_box_battle_transformation_any;

if (attack_stop)
    exit;

instance_create_depth(player_soul.x, player_soul.y, -400, obj_battle_enemy_attack_ceroba_diamond);
alarm[0] = attack_offset;
