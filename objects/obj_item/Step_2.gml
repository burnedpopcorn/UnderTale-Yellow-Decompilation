if (global.item_slot[1] == "Nothing" && global.item_slot[2] == "Nothing" && global.item_slot[3] == "Nothing" && global.item_slot[4] == "Nothing")
{
    if (place_meeting(x, y, obj_heart_battle_menu) && obj_heart_battle_menu.image_alpha == 1)
        image_index = 3;
    else
        image_index = 2;
}
else if (place_meeting(x, y, obj_heart_battle_menu) && obj_heart_battle_menu.image_alpha == 1)
{
    image_index = 1;
}
else if (place_meeting(x, y, obj_heart_battle_menu) && instance_exists(obj_heart_battle_menu_item))
{
    image_index = 1;
}
else
{
    image_index = 0;
}
