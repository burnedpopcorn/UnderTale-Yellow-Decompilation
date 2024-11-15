image_alpha = lerp(image_alpha, 1, 0.05);

if (image_alpha > 0.99)
    image_alpha = 1;

if (image_index >= (image_number - 1))
{
    image_index = image_number - 1;
    image_speed = 0;
}

if (instance_exists(obj_dialogue_box_battle_transformation_any))
    y = obj_dialogue_box_battle_transformation_any.bbox_top - 10;
