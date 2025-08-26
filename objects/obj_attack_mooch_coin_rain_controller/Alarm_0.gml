var battle_box = obj_dialogue_box_battle_transformation_any;
var spawn_number = choose(1, 2, 3);
var spawn_point_x = 0;
var spawn_point_y = battle_box.bbox_top - 50;

if (spawn_number == exc_number)
{
    while (spawn_number == exc_number)
        spawn_number = choose(1, 2, 3);
    
    exc_number = 0;
}

if (last_number == spawn_number)
{
    same_number_amount += 1;
    
    if (same_number_amount >= 2)
    {
        exc_number = spawn_number;
        same_number_amount = 0;
    }
}
else
{
    same_number_amount = 0;
}

switch (spawn_number)
{
    case 1:
        spawn_point_x = battle_box.bbox_left + 12;
        break;
    
    case 2:
        spawn_point_x = battle_box.x;
        break;
    
    case 3:
        spawn_point_x = battle_box.bbox_right - 12;
        break;
}

last_number = spawn_number;
instance_create(spawn_point_x, spawn_point_y, obj_attack_mooch_coin_rain);
alarm[0] = attack_coin_spawn_timer;
