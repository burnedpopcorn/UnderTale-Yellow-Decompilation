function d3d_set_projection_ext(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12)
{
    var mV, mP;
    
    mV = matrix_build_lookat(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8);
    mP = matrix_build_projection_perspective_fov(-argument9, -argument10, argument11, argument12);
    camera_set_view_mat(camera_get_active(), mV);
    camera_set_proj_mat(camera_get_active(), mP);
    camera_apply(camera_get_active());
}
