event_inherited();
depth = -y;

if (!global.player_can_travel || global.route == 3 || global.geno_complete[2] == true || global.flag[29] != 1)
    instance_destroy();

message[0] = "* (A collection of luggage,#  protecting all of Dalv's fancy#  outfits.)";
