function scr_interact()
{
    if (distance_to_object(obj_pl) < 20 && obj_pl.state == scr_normal_state)
    {
        var pl_dir = obj_pl.direction;
        var pl_x = 0;
        var pl_y = 0;
        var check_distance_x = 0;
        var check_distance_y = 0;
        
        switch (pl_dir)
        {
            case 0:
                pl_x = obj_pl.bbox_right;
                pl_y = obj_pl.bbox_top + 1;
                check_distance_x = 20;
                break;
            
            case 180:
                pl_x = obj_pl.bbox_left;
                pl_y = obj_pl.bbox_top + 1;
                check_distance_x = -20;
                break;
            
            case 90:
                pl_x = obj_pl.x;
                pl_y = obj_pl.bbox_top;
                check_distance_y = -20;
                break;
            
            case 270:
                pl_x = obj_pl.x;
                pl_y = obj_pl.bbox_bottom;
                check_distance_y = 20;
                break;
        }
        
        if (collision_line_first(pl_x, pl_y, pl_x + check_distance_x, pl_y + check_distance_y, id, false, false))
            return true;
    }
}
