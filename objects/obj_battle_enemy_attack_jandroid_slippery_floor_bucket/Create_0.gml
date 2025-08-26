damage_number = scr_determine_damage_number_enemy("jandroid a", "void", "void");
var box = obj_dialogue_box_battle_transformation_any;
slide_speed = 3;

if (y > box.bbox_top && y < box.bbox_bottom)
{
    if (x < 320)
        hspeed = slide_speed;
    else
        hspeed = -slide_speed;
}
else if (y < 320)
{
    vspeed = slide_speed;
}
else
{
    vspeed = -slide_speed;
}
