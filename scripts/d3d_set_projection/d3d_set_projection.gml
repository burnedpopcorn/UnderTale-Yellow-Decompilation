function d3d_set_projection(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
{
    var m = matrix_build_lookat(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
    var cam = camera_get_active();
    camera_set_view_mat(cam, m);
    
    if (!global.__d3d)
    {
        var mproj = matrix_build_projection_ortho(camera_get_view_width(cam), camera_get_view_height(cam), 1, 32000);
        camera_set_proj_mat(cam, mproj);
    }
    
    camera_apply(cam);
}
