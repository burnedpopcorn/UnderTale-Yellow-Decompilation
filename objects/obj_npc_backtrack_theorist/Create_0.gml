event_inherited();

if (!global.player_can_travel || global.route == 3 || global.geno_complete[2] == true)
    instance_destroy();
