if (live_call())
    return global.live_result;

ds_list_destroy(x_list);
ds_list_destroy(y_list);
ds_list_destroy(angle_list);
