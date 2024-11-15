ds_list_add(x_list, x);
ds_list_add(y_list, y);

while (ds_list_size(x_list) > max_points_trail)
{
    ds_list_delete(x_list, 0);
    ds_list_delete(y_list, 0);
}
