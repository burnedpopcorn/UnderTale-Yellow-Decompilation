if (fade_out == true)
{
    image_alpha -= 0.016666666666666666;
    exit;
}

if (image_alpha < 1)
    image_alpha += fade_speed;
else
    instance_destroy(obj_intro_slide_1_new);
