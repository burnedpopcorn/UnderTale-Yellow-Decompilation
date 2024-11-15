function d3d_set_perspective(argument0)
{
    var __persp, __mat, __numcams, __cams, __i, __currroom, __cam, __ispersp, __width, __height, __projmat;
    
    __persp = argument0;
    
    if (global.__d3d == false)
        __persp = false;
    
    __mat = camera_get_proj_mat(camera_get_default());
    
    if (__persp)
        __mat[11] = 1;
    else
        __mat[11] = 0;
    
    camera_set_proj_mat(camera_get_default(), __mat);
    __numcams = 0;
    __cams = [];
    
    for (__i = 0; __i < 8; __i++)
    {
        if (view_camera[__i] != -1)
        {
            __cams[__numcams * 3] = view_camera[__i];
            __cams[(__numcams * 3) + 1] = view_camera[__i];
            __cams[(__numcams * 3) + 2] = view_camera[__i];
            __numcams++;
        }
    }
    
    __currroom = room_first;
    
    while (__currroom != -1)
    {
        for (__i = 0; __i < 8; __i++)
        {
            __cam = room_get_camera(__currroom, __i);
            
            if (__cam != -1)
            {
                __cams[__numcams] = __cam;
                __numcams++;
            }
        }
        
        __currroom = room_next(__currroom);
    }
    
    for (__i = 0; __i < __numcams; __i++)
    {
        __cam = __cams[__i];
        __mat = camera_get_proj_mat(__cam);
        __ispersp = (__mat[11] != 0) ? true : false;
        
        if (__ispersp != __persp)
        {
            if (camera_get_view_width(__cam) > 0)
            {
                __width = camera_get_view_width(__cam);
                __height = camera_get_view_height(__cam);
                
                if (__persp)
                {
                    __projmat = matrix_build_projection_perspective(1, -(__height / __width), 1, 32000);
                    camera_set_proj_mat(__cam, __projmat);
                }
                else
                {
                    __projmat = matrix_build_projection_ortho(__width, __height, -16000, 16000);
                    camera_set_proj_mat(__cam, __projmat);
                }
            }
        }
    }
}
