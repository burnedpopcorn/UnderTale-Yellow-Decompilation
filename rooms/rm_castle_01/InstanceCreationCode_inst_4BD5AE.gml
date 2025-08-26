if (global.hotland_flag[10] == 0)
{
    instance_destroy();
    exit;
}

walk_dir = "right";
message[0] = "* I think the throne room#  is the other way.";
message[1] = "* Let's go back.";
prt[0] = spr_martlet_head_confused;
prt[1] = spr_martlet_head_moderate;
