function scr_init_flags_steamworks()
{
    global.sworks_flag[0] = 0;
    global.sworks_flag[1] = 0;
    global.sworks_flag[2] = 0;
    global.sworks_flag[3] = 0;
    global.sworks_flag[4] = 0;
    global.sworks_flag[5] = 0;
    global.sworks_flag[6] = 0;
    global.sworks_flag[7] = 0;
    global.sworks_flag[8] = 0;
    global.sworks_flag[9] = 0;
    global.sworks_flag[10] = 0;
    global.sworks_flag[11] = 0;
    global.sworks_flag[12] = 0;
    global.sworks_flag[13] = 0;
    global.sworks_flag[14] = 0;
    global.sworks_flag[15] = 0;
    global.sworks_flag[16] = 0;
    global.sworks_flag[17] = 0;
    global.sworks_flag[18] = 0;
    global.sworks_flag[19] = 0;
    global.sworks_flag[20] = 0;
    global.sworks_flag[21] = 0;
    global.sworks_flag[22] = 0;
    global.sworks_flag[23] = 0;
    global.sworks_flag[24] = 0;
    global.sworks_flag[25] = 0;
    global.sworks_flag[26] = 0;
    global.sworks_flag[27] = 0;
    global.sworks_flag[28] = 0;
    global.sworks_flag[29] = 0;
    global.sworks_flag[30] = 0;
    global.sworks_flag[31] = 0;
    global.sworks_flag[32] = 0;
    global.sworks_flag[33] = 0;
    global.sworks_flag[34] = 0;
    global.sworks_flag[35] = 0;
    global.sworks_flag[36] = 0;
    global.sworks_flag[37] = 0;
    global.sworks_flag[38] = 0;
    global.sworks_flag[39] = 0;
    global.sworks_flag[40] = 0;
    global.sworks_flag[41] = 0;
    global.sworks_flag[42] = 0;
    global.sworks_flag[43] = 0;
    global.sworks_flag[44] = 0;
    global.sworks_flag[45] = 0;
    global.sworks_flag[46] = 0;
    global.sworks_flag[47] = 0;
    global.sworks_flag[48] = 0;
    global.sworks_flag[49] = 0;
    global.sworks_flag[50] = 0;
    global.sworks_flag[51] = 0;
    global.sworks_flag[52] = 0;
    global.sworks_flag[53] = 0;
    global.sworks_flag[54] = 0;
    global.sworks_flag[55] = 0;
    global.sworks_flag[56] = 0;
    global.sworks_flag[57] = 0;
    global.sworks_flag[58] = 0;
    global.sworks_flag[59] = 0;
    global.sworks_flag[60] = 0;
    global.sworks_flag[61] = 0;
    global.factory_code = string(irandom_range(1, 9)) + string(irandom_range(1, 9)) + string(irandom_range(1, 9)) + string(irandom_range(1, 9));
    global.factory_code_2 = ds_list_create();
    global.factory_code_3 = string(irandom_range(1, 9)) + string(irandom_range(1, 9)) + string(irandom_range(1, 9)) + string(irandom_range(1, 9));
    ds_list_add(global.factory_code_2, irandom_range(0, 3), irandom_range(4, 7), irandom_range(8, 11), irandom_range(12, 15));
    ds_list_shuffle(global.factory_code_2);
    global.sworks_robot_count = 0;
    global.sworks_robot_sprite[0] = 0;
    global.sworks_robot_x[0] = 0;
    global.sworks_robot_y[0] = 0;
    global.sworks_robot_depth[0] = 0;
    global.sworks_robot_angle[0] = 0;
    global.sworks_robot_scale[0] = 1;
    global.sworks_id_grid = ds_grid_create(208, 147);
}