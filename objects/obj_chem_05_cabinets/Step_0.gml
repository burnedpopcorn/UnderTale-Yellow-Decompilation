var compound = instance_place(x, y, obj_compound_parent);

if (compound != -4 && compound.visible == true && scr_interact() && keyboard_multicheck_pressed(vk_nokey))
{
    scr_text();
    
    with (msg)
        message[0] = "* (Nothing useful here.)";
}
