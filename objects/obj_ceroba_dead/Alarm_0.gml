var red_tint;

script_execute(scr_enemy_defragment);
red_tint = make_colour_rgb(215, 166, 166);

if (instance_exists(obj_piece))
{
    with (obj_piece)
        image_blend = red_tint;
}
