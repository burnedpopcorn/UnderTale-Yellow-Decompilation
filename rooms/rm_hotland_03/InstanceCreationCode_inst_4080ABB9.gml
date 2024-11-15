if (global.hotland_flag[1] < 1)
{
    instance_destroy();
    exit;
}

walk_dir = "up";
message[0] = "* New Home is north of#  here.";
message[1] = "* We need to head that#  way.";
prt[0] = 321;
prt[1] = 321;
