mo_menu_fall = 0;
men_hsp = 0;
men_vsp = 0;

if (global.snowdin_flag[5] == 1)
    y = 90;

if (global.snowdin_flag[5] == 2 || global.geno_complete[2] || global.dunes_flag[0] > 0)
    instance_destroy();
