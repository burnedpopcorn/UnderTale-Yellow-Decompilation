event_inherited();

if (global.geno_complete[3] == true && global.route == 3)
{
    instance_destroy();
    exit;
}

if (global.dunes_flag[41] >= 1)
{
    instance_destroy();
    exit;
}

image_speed = 0.2;
message[0] = "* (This monster is too busy#  quenching their thirst to#  speak.)";
message[1] = "* (With eye-catching water like#  that, who could resist?)";
