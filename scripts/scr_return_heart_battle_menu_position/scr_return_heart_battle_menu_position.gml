function scr_return_heart_battle_menu_position()
{
    var part_1 = global.battle_menu_number;
    var part_2 = 0;
    var part_3 = 0;
    var part_4 = 0;
    
    if (part_1 == 1)
    {
        part_2 = global.fight_number;
    }
    else if (part_1 == 2)
    {
        part_2 = global.act_number;
        part_3 = global.act_number_row;
        part_4 = global.act_number_column;
    }
    else if (part_1 == 4)
    {
        part_2 = global.mercy_number;
    }
    
    return string(part_1) + string(part_2) + string(part_3) + string(part_4);
}
