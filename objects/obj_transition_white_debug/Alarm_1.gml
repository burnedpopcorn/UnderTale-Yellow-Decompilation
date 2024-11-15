script_execute(scr_initialize);
global.player_weapon = "Wild Revolver";
global.player_armor_modifier = "Steel Buckle";
global.player_armor_modifier_defense = script_execute(scr_determine_armor_modifier_defense);
obj_pl.x = xx;
obj_pl.y = yy;
obj_pl.direction = 90;
global.route = new_route;
room = new_room;
