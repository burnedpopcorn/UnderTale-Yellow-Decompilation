if (!instance_exists(obj_heart_battle_fighting_parent))
{
    instance_destroy();
    exit;
}

damage_number = scr_determine_damage_number_enemy("starlo", "void", "void");
image_xscale = 0.1;
image_yscale = 0.1;
image_speed = 0;
depth = obj_heart_battle_fighting_parent.depth - 1;
