function d3d_set_projection_perspective(arg0, arg1, arg2, arg3, arg4)
{
    var xx = arg0;
    var yy = arg1;
    var ww = arg2;
    var hh = arg3;
    var angle = arg4;
    var mV = matrix_build_lookat(xx + (ww / 2), yy + (hh / 2), -ww, xx + (ww / 2), yy + (hh / 2), 0, dsin(-angle), dcos(-angle), 0);
    var mP = matrix_build_projection_perspective(ww / ww, -hh / ww, 1, 32000);
    camera_set_view_mat(camera_get_active(), mV);
    camera_set_proj_mat(camera_get_active(), mP);
    camera_apply(camera_get_active());
}
