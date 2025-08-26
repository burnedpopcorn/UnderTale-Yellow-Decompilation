function d3d_set_perspective(arg0)
{
    var __persp = arg0;
    
    if (global.__d3d == false)
        __persp = false;
    
    var __mat = camera_get_proj_mat(camera_get_default());
    
    if (__persp)
        __mat[11] = 1;
    else
        __mat[11] = 0;
    
    camera_set_proj_mat(camera_get_default(), __mat);
    var __numcams = 0;
    var __cams = [];
    
    for (var __i = 0; __i < 8; __i++)
    {
        if (view_camera[__i] != -1)
        {
            __cams[__numcams * 3] = view_camera[__i];
            __cams[(__numcams * 3) + 1] = view_camera[__i];
            __cams[(__numcams * 3) + 2] = view_camera[__i];
            __numcams++;
        }
    }
    
    var __currroom = room_first;
    
    while (__currroom != -1)
    {
        for (var __i = 0; __i < 8; __i++)
        {
            var __cam = room_get_camera(__currroom, __i);
            
            if (__cam != -1)
            {
                __cams[__numcams] = __cam;
                __numcams++;
            }
        }
        
        __currroom = room_next(__currroom);
    }
    
    for (var __i = 0; __i < __numcams; __i++)
    {
        var __cam = __cams[__i];
        __mat = camera_get_proj_mat(__cam);
        var __ispersp = (__mat[11] != 0) ? true : false;
        
        if (__ispersp != __persp)
        {
            if (camera_get_view_width(__cam) > 0)
            {
                var __width = camera_get_view_width(__cam);
                var __height = camera_get_view_height(__cam);
                
                if (__persp)
                {
                    var __projmat = matrix_build_projection_perspective(1, -(__height / __width), 1, 32000);
                    camera_set_proj_mat(__cam, __projmat);
                }
                else
                {
                    var __projmat = matrix_build_projection_ortho(__width, __height, -16000, 16000);
                    camera_set_proj_mat(__cam, __projmat);
                }
            }
        }
    }
}
