instance_create(obj_pl.x - 4, obj_pl.y - 26, obj_exclamation_mark);
global.battle_enemy_name = "flower girls";
global.current_room_overworld = room_get_name(room);
global.battling_boss = false;
global.sound_carry_overworld = false;
global.battle_start = true;
instance_destroy();
