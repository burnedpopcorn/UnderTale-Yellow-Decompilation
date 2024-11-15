if (!instance_exists(obj_target_bar_battle))
{
    if (instance_exists(obj_dialogue_box_battle_transformation_attack))
    {
        with (obj_dialogue_box_battle_transformation_attack)
        {
            max_frames_default = 10;
            transform_type = "out";
        }
    }
    
    image_alpha -= 0.2;
    image_xscale -= 0.1;
    image_yscale -= 0.1;
    
    if (image_alpha <= 0)
        instance_destroy();
}
