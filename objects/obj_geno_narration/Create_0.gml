if (live_call())
    return global.live_result;

if (global.route != 3)
{
    instance_destroy();
    exit;
}

target_flag = 0;
message[0] = "";
alarm[0] = 1;
