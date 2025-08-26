if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
{
    if (global.geno_complete[3] == false)
        scr_summon_shop("Steamworks Vendy");
    else
        scr_summon_shop("Steamworks Vendy Geno");
}
