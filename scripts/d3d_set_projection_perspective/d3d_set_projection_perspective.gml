function d3d_set_projection_perspective(argument0, argument1, argument2, argument3, argument4)
{
    var xx, yy, ww, hh, angle, mV, mP;
    
    xx = argument0;
    yy = argument1;
    ww = argument2;
    hh = argument3;
    angle = argument4;
    mV = matrix_build_lookat(xx + (ww / 2), yy + (hh / 2), -ww, xx + (ww / 2), yy + (hh / 2), 0, dsin(-angle), dcos(-angle), 0);
    mP = matrix_build_projection_perspective(ww / ww, -hh / ww, 1, 32000);
    camera_set_view_mat(camera_get_active(), mV);
    camera_set_proj_mat(camera_get_active(), mP);
    camera_apply(camera_get_active());
}
