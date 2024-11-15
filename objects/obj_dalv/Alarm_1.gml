global.flag[27] = 1;
genoCount = 0;

if (global.route == 3)
    global.route = 1;

global.flag[17] = 4;
global.cutscene = false;
obj_pl.state = scr_normal_state;
instance_destroy();
