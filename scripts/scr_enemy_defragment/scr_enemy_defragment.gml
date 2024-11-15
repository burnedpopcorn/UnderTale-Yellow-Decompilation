function scr_enemy_defragment()
{
    var width, height, i, j;
    
    width = sprite_get_width(sprite_index);
    height = sprite_get_height(sprite_index);
    i_inc = width / 20;
    j_inc = 2;
    
    for (i = 0; i < width; i += i_inc)
    {
        for (j = 0; j < height; j += j_inc)
        {
            part = instance_create(bbox_left + i, bbox_top + j, obj_piece);
            
            with (part)
            {
                left = i;
                top = j;
                self.width = other.i_inc;
                self.height = other.j_inc;
                sprite_index = other.sprite_index;
                alarm[0] = j * 0.1;
            }
        }
    }
}
