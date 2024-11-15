function scr_fasttravel_add(argument0)
{
    var i;
    
    for (i = 0; i < ds_list_size(global.fast_travel_list); i++)
    {
        if (ds_list_find_value(global.fast_travel_list, i) == argument0)
        {
            return false;
            exit;
        }
    }
    
    ds_list_add(global.fast_travel_list, argument0);
    ds_list_sort(global.fast_travel_list, false);
}
