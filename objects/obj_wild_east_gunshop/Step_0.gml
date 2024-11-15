if (global.cutscene == false && place_meeting(x, y, obj_pl) && !instance_exists(obj_transition))
{
    if (!global.geno_complete[3])
        scr_summon_shop("Wild East Gunshop");
    else
        scr_summon_shop("Wild East Gunshop Geno");
}
