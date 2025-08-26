if (instance_exists(obj_heart_battle_menu) && obj_heart_battle_menu.image_alpha == 1 && !instance_exists(obj_heart_battle_menu_guardener_fake))
{
    var xx = obj_heart_battle_menu.x;
    var yy = obj_heart_battle_menu.y;
    var dep = obj_heart_battle_menu.depth;
    instance_destroy(obj_heart_battle_menu);
    instance_create_depth(xx, yy, dep, obj_heart_battle_menu_guardener_fake);
}
