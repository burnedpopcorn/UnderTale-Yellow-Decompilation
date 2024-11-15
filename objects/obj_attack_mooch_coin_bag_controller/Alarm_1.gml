var battle_box, point_x, point_y, coin_bag, i;

battle_box = 3154;
point_x = battle_box.x + lengthdir_x(85, coin_bag_offset);
point_y = battle_box.y + lengthdir_y(85, coin_bag_offset);
coin_bag = instance_create_depth(point_x, point_y, -1000000, obj_attack_mooch_coin_bag);

for (i = 0; i < array_length(coin); i++)
    coin_bag.coin[i] = coin[i];

alarm[2] = (coin_offset_time * 2) + 20;
