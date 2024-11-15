if (global.party_member != -4 || global.dunes_flag[16] != 0)
{
    instance_destroy();
    exit;
}

tumbleweed_spawn[0] = 1;
tumbleweed_spawn[1] = 1;
tumbleweed_spawn[2] = 1;
tumbleweed_spawn[3] = 1;
player_knocked_out = false;
