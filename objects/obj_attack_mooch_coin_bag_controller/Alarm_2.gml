var battle_box, point_x, point_y, new_coin;

battle_box = 3154;
point_x = battle_box.x + lengthdir_x(75, coin_dir_offset);
point_y = battle_box.y + lengthdir_y(75, coin_dir_offset);
new_coin = instance_create_depth(point_x, point_y, -999999, obj_attack_mooch_coin_bag_coin);
coin_dir_offset += coin_dir_inc;
obj_attack_mooch_coin_bag.coin[coin_current] = new_coin;
coin_current += 1;

if (coin_current > coin_number_max)
    exit;

alarm[2] = coin_offset_time * 2;
