if (live_call())
    return global.live_result;

draw_set_font(fnt_main);
var x_offset = 40;
var y_offset = 40;
var line_counter = 0;
var line_offset = 20;
var section_offset = 30;
var header_offset = 10;

switch (current_slide)
{
    case 0:
        break;
    
    case 1:
        draw_sprite_ext(spr_logo_undertale, 1, 160, 96, 0.5, 0.5, 0, c_white, 1);
        draw_sprite_ext(logo_yellow, 1, 160, 128, 0.5, 0.5, 0, c_white, 1);
        break;
    
    case 2:
        draw_set_halign(fa_center);
        draw_set_color(c_yellow);
        draw_text(160, 100, credits_entry[0][0]);
        draw_set_color(c_white);
        draw_text(160, 120, credits_entry[0][1]);
        break;
    
    case 3:
        draw_credit_group(1, 20, 20);
        draw_credit_group(2, 150, 20);
        draw_credit_group(3, 100, 140);
        break;
    
    case 4:
        draw_credit_group(4, 20, 20);
        draw_credit_group(5, 150, 15);
        break;
    
    case 5:
        draw_credit_group(6, 90, 15);
        draw_credit_group(9, 20, 125);
        draw_credit_group(10, 170, 125);
        draw_credit_group(11, 90, 175);
        break;
    
    case 6:
        draw_credit_group(7, 20, 20);
        draw_credit_group(8, 170, 20);
        break;
    
    case 7:
        draw_credit_group(13, 20, 20);
        draw_credit_group(14, 170, 20);
        draw_credit_group(15, 20, 130);
        break;
    
    case 8:
        draw_credit_group(16, 20, 20);
        break;
    
    case 9:
        draw_credit_group(17, 20, 20);
        break;
    
    case 10:
        draw_credit_group(18, 20, 20);
        break;
    
    case 11:
        draw_credit_group(19, 20, 20);
        break;
    
    case 12:
        draw_set_halign(fa_center);
        draw_set_color(c_white);
        draw_text(160, 70, credits_entry[20][0]);
        draw_text(160, 130, credits_entry[20][2]);
        break;
}

function draw_credit_group(arg0, arg1, arg2)
{
    draw_set_halign(fa_left);
    
    for (var i = 0; i < array_length(credits_entry[arg0]); i++)
    {
        var current_line = (i - 1) div 9;
        draw_set_color(c_white);
        var x_modif = 0 + (current_line * 160);
        var y_modif = (i * 20) - (current_line * 180);
        var y_modif_height = 0;
        
        if (string_height(credits_entry[arg0][0]) > 20 && i > 0)
            y_modif_height = 15;
        
        if (i == 0)
        {
            draw_set_color(c_yellow);
            x_modif = 0;
        }
        
        draw_text(arg1 + x_modif, arg2 + y_modif + y_modif_height, credits_entry[arg0][i]);
        draw_set_color(c_white);
    }
}
