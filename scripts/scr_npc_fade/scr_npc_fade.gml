function scr_npc_fade()
{
    solid = false;
    
    if (image_alpha > 0)
        image_alpha -= 0.2;
    
    if (image_alpha == 0 && fade_kill == true)
        instance_destroy();
}
