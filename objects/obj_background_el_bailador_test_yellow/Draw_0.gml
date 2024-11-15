var anim_dj_y_last, for_end, par_y;

for (j = 0; j < 2; j++)
{
    if (osc_horizontal == true)
    {
        m_time_elapsed += time_increase;
        
        if (m_time_elapsed >= time_max)
        {
            m_time_elapsed = 0;
            m_sign_modifier = -m_sign_modifier;
        }
    }
    
    if (osc_vertical == true)
    {
        m_time_elapsed_v += time_increase_v;
        
        if (m_time_elapsed_v >= time_max_v)
        {
            m_time_elapsed_v = 0;
            m_sign_modifier_v = -m_sign_modifier_v;
        }
    }
}

if (scroll_horizontal == true)
{
    scroll_ind_total_x += scroll_ind_inc_x;
    
    if (scroll_ind_total_x >= scroll_ind_max_x)
    {
        while (scroll_ind_total_x >= scroll_ind_max_x)
        {
            scroll_current_x += pixel_dim;
            
            if (scroll_current_x >= sprite_width)
                scroll_current_x -= sprite_width;
            else if (scroll_current_x < 0)
                scroll_current_x += sprite_width;
            
            scroll_ind_total_x -= scroll_ind_max_x;
        }
    }
}
else
{
    scroll_current_x = 0;
    scroll_ind_total_x = 0;
}

if (scroll_vertical == true)
{
    scroll_ind_total_y += scroll_ind_inc_y;
    
    if (scroll_ind_total_y >= scroll_ind_max_y)
    {
        while (scroll_ind_total_y >= scroll_ind_max_y)
        {
            scroll_current_y += pixel_dim;
            
            if (scroll_current_y >= sprite_height)
                scroll_current_y -= sprite_height;
            else if (scroll_current_y < 0)
                scroll_current_y += sprite_height;
            
            scroll_ind_total_y -= scroll_ind_max_y;
        }
    }
}
else
{
    scroll_current_y = 0;
    scroll_ind_total_y = 0;
}

if (interlaced_x == true)
    int_s_current_x = int_s_default_x;
else
    int_s_current_x = 1;

if (interlaced_y == true)
    int_s_current_y = int_s_default_y;
else
    int_s_current_y = 1;

sign_modifier = m_sign_modifier;
time_elapsed = m_time_elapsed;
sign_modifier_v = m_sign_modifier_v;
time_elapsed_v = m_time_elapsed_v + (scroll_current_y / pixel_dim);

while (time_elapsed_v >= time_max_v)
{
    time_elapsed_v -= time_max_v;
    sign_modifier_v = -sign_modifier_v;
}

for (i = 0; i < sprite_height; i += pixel_dim)
{
    scroll_temp_x = scroll_current_x;
    
    if (scroll_temp_x >= sprite_width)
        scroll_temp_x -= sprite_width;
    else if (scroll_temp_x < 0)
        scroll_temp_x += sprite_width;
    
    scroll_temp_y = scroll_current_y + i;
    
    if (scroll_temp_y >= sprite_height)
        scroll_temp_y -= sprite_height;
    else if (scroll_temp_y < 0)
        scroll_temp_y += sprite_height;
    
    if (osc_horizontal == true || osc_vertical == true)
    {
        if (osc_horizontal == true)
        {
            game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
            animation_disjoint_x = sign_modifier * (max_rise - game_maker_cannot_do_math);
            time_elapsed += time_increase;
            
            if (time_elapsed >= time_max)
            {
                time_elapsed = 0;
                sign_modifier = -sign_modifier;
            }
        }
        else
        {
            animation_disjoint_x = 0;
        }
        
        anim_dj_y_last = animation_disjoint_y;
        
        if (osc_vertical == true)
        {
            game_maker_cannot_do_math = power((time_elapsed_v / ((time_max_v / 2) * (1 / sqrt(max_rise_v)))) - sqrt(max_rise_v), 2);
            animation_disjoint_y = sign_modifier_v * (max_rise_v - game_maker_cannot_do_math);
            
            if (interlaced_y == false)
            {
                time_elapsed_v += time_increase_v;
                
                if (time_elapsed_v >= time_max_v)
                {
                    time_elapsed_v = 0;
                    sign_modifier_v = -sign_modifier_v;
                }
            }
        }
        else
        {
            animation_disjoint_y = 0;
        }
        
        animation_disjoint_x = pixel_dim * floor(0.5 + (animation_disjoint_x / pixel_dim));
        animation_disjoint_y = pixel_dim * floor(0.5 + (animation_disjoint_y / pixel_dim));
        event_user(0);
        
        if (i == 0)
            for_end = 0;
        else
            for_end = animation_disjoint_y - anim_dj_y_last;
        
        if (for_end < 0)
            for_end = 0;
        
        for (k = 0; k <= for_end; k++)
        {
            for (l = 0; l <= 1; l++)
            {
                par_y = (draw_top + i + (int_s_current_y * animation_disjoint_y)) - (pixel_dim * k);
                image_alpha = ((par_y - alpha_top) + 1) * ((alpha_max - alpha_min) / ((alpha_bottom - alpha_top) + 1));
                
                if (image_alpha > alpha_max)
                    image_alpha = alpha_max;
                else if (image_alpha < alpha_min)
                    image_alpha = alpha_min;
                
                draw_sprite_part_ext(sprite_index, image_index, par_left[l], scroll_temp_y, par_width[l], pixel_dim, par_x[l], par_y, image_xscale, image_yscale, c_black, 1);
                draw_sprite_part_ext(sprite_index, image_index, par_left[l], scroll_temp_y, par_width[l], pixel_dim, par_x[l], par_y, image_xscale, image_yscale, c_white, image_alpha * alpha_base);
            }
        }
    }
    
    int_s_last_y = int_s_current_y;
    
    if (interlaced_x == true)
        int_s_current_x = -int_s_current_x;
    
    if (interlaced_y == true)
        int_s_current_y = -int_s_current_y;
}
