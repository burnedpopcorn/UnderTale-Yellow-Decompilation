function background_create_gradient(arg0, arg1, arg2, arg3, arg4)
{
    var __w = arg0;
    var __h = arg1;
    var __col1 = arg2;
    var __col2 = arg3;
    var __kind = arg4;
    var __halfw = __w / 2;
    var __halfh = __h / 2;
    var __CompTempSurf = surface_create(__w, __h);
    
    if (surface_exists(__CompTempSurf))
    {
        surface_set_target(__CompTempSurf);
        
        switch (__kind)
        {
            case 0:
                draw_rectangle_colour(0, 0, __w, __h, __col1, __col2, __col2, __col1, false);
                break;
            
            case 1:
                draw_rectangle_colour(0, 0, __w, __h, __col2, __col2, __col1, __col1, false);
                break;
            
            case 2:
                draw_primitive_begin(pr_trianglelist);
                draw_vertex_colour(__halfw, __halfh, __col1, 1);
                draw_vertex_colour(0, __halfh, __col2, 1);
                draw_vertex_colour(0, 0, __col2, 1);
                draw_vertex_colour(__halfw, __halfh, __col1, 1);
                draw_vertex_colour(0, 0, __col2, 1);
                draw_vertex_colour(__halfw, 0, __col2, 1);
                draw_vertex_colour(__halfw, __halfh, __col1, 1);
                draw_vertex_colour(__halfw, 0, __col2, 1);
                draw_vertex_colour(__w, 0, __col2, 1);
                draw_vertex_colour(__halfw, __halfh, __col1, 1);
                draw_vertex_colour(__w, 0, __col2, 1);
                draw_vertex_colour(__w, __halfh, __col2, 1);
                draw_vertex_colour(__halfw, __halfh, __col1, 1);
                draw_vertex_colour(__w, __halfh, __col2, 1);
                draw_vertex_colour(__w, __h, __col2, 1);
                draw_vertex_colour(__halfw, __halfh, __col1, 1);
                draw_vertex_colour(__w, __h, __col2, 1);
                draw_vertex_colour(__halfw, __h, __col2, 1);
                draw_vertex_colour(__halfw, __halfh, __col1, 1);
                draw_vertex_colour(__halfw, __h, __col2, 1);
                draw_vertex_colour(0, __h, __col2, 1);
                draw_vertex_colour(__halfw, __halfh, __col1, 1);
                draw_vertex_colour(0, __h, __col2, 1);
                draw_vertex_colour(0, __halfh, __col2, 1);
                draw_primitive_end();
                break;
            
            case 3:
                draw_clear(__col2);
                draw_ellipse_colour(0, 0, __w, __h, __col1, __col2, false);
                break;
            
            case 4:
                draw_rectangle_colour(0, 0, __halfw, __h, __col2, __col1, __col1, __col2, false);
                draw_rectangle_colour(__halfw, 0, __w, __h, __col1, __col2, __col2, __col1, false);
                break;
            
            case 5:
                draw_rectangle_colour(0, 0, __w, __halfh, __col2, __col2, __col1, __col1, false);
                draw_rectangle_colour(0, __halfh, __w, __h, __col1, __col1, __col2, __col2, false);
                break;
        }
        
        surface_reset_target();
        var __sprid = sprite_create_from_surface(__CompTempSurf, 0, 0, __w, __h, false, false, 0, 0);
        surface_free(__CompTempSurf);
        return __sprid;
    }
    else
    {
        return -1;
    }
}
