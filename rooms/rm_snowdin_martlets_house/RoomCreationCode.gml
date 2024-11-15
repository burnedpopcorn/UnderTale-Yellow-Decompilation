if (global.route == 3)
{
    layer_set_visible("flashback_effect", true);
    layer_set_visible("ava", false);
    layer_set_visible("balcony", false);
    instance_create(0, 0, obj_martlet_final_overworld_cutscene);
}
