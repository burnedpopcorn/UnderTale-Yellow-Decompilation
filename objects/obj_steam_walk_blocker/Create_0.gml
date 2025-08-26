if (((global.party_member == -4 && room != rm_steamworks_17b) || global.route != 2) && room != rm_steamworks_23)
{
    instance_destroy();
    exit;
}

walk_dir = "left";
scene = 0;
cutscene_timer = 0;
message[0] = "* Where are you going?";
prt[0] = spr_portrait_ceroba_irked;
flag_check = 0;
