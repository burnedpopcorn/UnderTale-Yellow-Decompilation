function d3d_set_projection_ext(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)
{
    var mV = matrix_build_lookat(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
    var mP = matrix_build_projection_perspective_fov(-arg9, -arg10, arg11, arg12);
    camera_set_view_mat(camera_get_active(), mV);
    camera_set_proj_mat(camera_get_active(), mP);
    camera_apply(camera_get_active());
}
