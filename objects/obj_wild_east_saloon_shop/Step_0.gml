if (scr_interact() && keyboard_multicheck_pressed(0) && !instance_exists(obj_transition))
{
    if (global.route == 3)
        scr_summon_shop("Wild East Saloon Geno");
    else
        scr_summon_shop("Wild East Saloon");
}
