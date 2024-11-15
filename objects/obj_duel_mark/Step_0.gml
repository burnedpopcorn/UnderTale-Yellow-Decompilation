if (cutscene_key_prompt())
{
    if (fade_out == false)
        fade_out = true;
}

if (fade_out == true)
{
    if (image_alpha > 1)
        image_alpha -= 0.15;
    else
        instance_destroy();
}
