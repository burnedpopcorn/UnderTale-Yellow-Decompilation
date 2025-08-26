if (scr_interact() && keyboard_multicheck_pressed(vk_nokey) && !instance_exists(obj_transition))
{
    if (!global.geno_complete[2])
        scr_summon_shop("Honeydew Resort Normal");
    else
        scr_summon_shop("Honeydew Resort Geno");
}
