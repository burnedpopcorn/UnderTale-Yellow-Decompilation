with (id_dunebud)
{
    id_dunebud_chase = -4;
    event_user(0);
}

if (global.enemy_attack != "Dunebud Chase Tumbleweeds")
{
    with (obj_dialogue_box_battle_transformation_any)
        event_user(0);
}
