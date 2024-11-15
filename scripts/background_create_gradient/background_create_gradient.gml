function background_create_gradient(argument0, argument1, argument2, argument3, argument4)
{
    var __w, __h, __col1, __col2, __kind, __halfw, __halfh, __CompTempSurf, __sprid;
    
    __w = argument0;
    __h = argument1;
    __col1 = argument2;
    __col2 = argument3;
    __kind = argument4;
    __halfw = __w / 2;
    __halfh = __h / 2;
    __CompTempSurf = surface_create(__w, __h);
    
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
        __sprid = sprite_create_from_surface(__CompTempSurf, 0, 0, __w, __h, false, false, 0, 0);
        surface_free(__CompTempSurf);
        return __sprid;
    }
    else
    {
        return -1;
    }
}
