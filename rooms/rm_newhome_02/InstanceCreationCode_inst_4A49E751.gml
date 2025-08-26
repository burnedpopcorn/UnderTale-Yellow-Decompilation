if (global.hotland_flag[10] == 0)
{
    instance_destroy();
    exit;
}

walk_dir = "up";
message[0] = "* No use in backtracking.";
message[1] = "* We need to look ahead.";
prt[0] = spr_martlet_head_moderate;
prt[1] = spr_martlet_head_moderate;
