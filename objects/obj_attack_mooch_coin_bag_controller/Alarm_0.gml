var battle_box, point_x, point_y;

battle_box = 3154;
point_x = battle_box.x + lengthdir_x(75, coin_dir_offset);
point_y = battle_box.y + lengthdir_y(75, coin_dir_offset);
coin[coin_current] = instance_create_depth(point_x, point_y, -999999, obj_attack_mooch_coin_bag_coin);
coin_dir_offset += coin_dir_inc;
coin_current += 1;
coin_number -= 1;

if (coin_number == 0)
{
    alarm[1] = 15;
    exit;
}
else
{
    alarm[0] = coin_offset_time;
}
