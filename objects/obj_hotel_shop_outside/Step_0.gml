if (global.cutscene == false && scr_interact() && keyboard_multicheck_pressed(vk_nokey) && !instance_exists(obj_transition))
{
    if (global.geno_complete[4])
        scr_summon_shop("Hotel Shop Geno");
    else
        scr_summon_shop("Hotel Shop");
}
