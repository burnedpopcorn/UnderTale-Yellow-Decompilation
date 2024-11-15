instance_create(obj_pl.x, obj_pl.y, obj_heart_initiate_battle);
global.battle_enemy_name = "martlet pacifist";
global.battling_enemy = false;
global.battling_boss = true;
global.battle_start = true;
global.current_room_overworld = room_get_name(room);

if (global.geno_complete[2] == false && global.route == 3)
    global.route = 1;
