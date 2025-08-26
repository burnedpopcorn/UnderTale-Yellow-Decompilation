function scr_fasttravel_add(arg0)
{
    for (var i = 0; i < ds_list_size(global.fast_travel_list); i++)
    {
        if (ds_list_find_value(global.fast_travel_list, i) == arg0)
        {
            return false;
            exit;
        }
    }
    
    ds_list_add(global.fast_travel_list, arg0);
    ds_list_sort(global.fast_travel_list, false);
}
