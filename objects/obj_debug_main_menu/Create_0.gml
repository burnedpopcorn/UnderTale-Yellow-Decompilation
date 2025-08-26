if (live_call())
    return global.live_result;

image_speed = 0.2;
pos = 0;
page = 0;
current_route = "Pacifist";
debug_easy_route = false;

if (file_exists("Save.sav"))
    file_delete("Save.sav");

var trn = instance_create(0, 0, obj_transition_white_debug);
trn.new_route = current_route;
trn.new_room = rm_dunes_43;
trn.xx = 220;
trn.yy = 220;
instance_destroy();
global.sworks_flag[31] = 1;
