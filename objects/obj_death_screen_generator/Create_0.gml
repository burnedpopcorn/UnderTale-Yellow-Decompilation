global.current_room = room_get_name(room);

if (global.battle_enemy_name == "flowey" || global.battle_enemy_name == "flowey2")
{
    instance_create(global.heart_battle_fighting_x, global.heart_battle_fighting_y, obj_heart_death_screen_flowey);
}
else
{
    instance_create(global.heart_battle_fighting_x, global.heart_battle_fighting_y, obj_heart_death_screen_split);
    instance_create(111, 33, obj_game_over);
}
