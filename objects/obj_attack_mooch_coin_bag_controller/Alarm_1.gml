var battle_box = obj_dialogue_box_battle_transformation_any;
var point_x = battle_box.x + lengthdir_x(85, coin_bag_offset);
var point_y = battle_box.y + lengthdir_y(85, coin_bag_offset);
var coin_bag = instance_create_depth(point_x, point_y, -1000000, obj_attack_mooch_coin_bag);

for (var i = 0; i < array_length(coin); i++)
    coin_bag.coin[i] = coin[i];

alarm[2] = (coin_offset_time * 2) + 20;
