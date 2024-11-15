retry_enabled = false;
rhythm_enabled = false;
autofire_enabled = false;

if (global.option_retry_toggle == true || global.battling_boss == true || global.battle_enemy_name == "feisty five")
    retry_enabled = true;

if (global.sworks_flag[45] == 1)
    retry_enabled = false;

no_loop = false;
menu_option_selected = 1;
image_alpha = 0;

if (!retry_enabled)
    menu_option_selected = 2;

if (global.battle_enemy_name == "el bailador")
    rhythm_enabled = true;

if ((global.battle_enemy_name == "ceroba" && global.hotland_flag[2] >= 1) || global.battle_enemy_name == "martlet genocide final")
    autofire_enabled = true;
