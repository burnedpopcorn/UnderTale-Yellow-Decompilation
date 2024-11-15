if (live_call())
    return global.live_result;

if (image_index >= (image_number - 1))
    instance_destroy();
