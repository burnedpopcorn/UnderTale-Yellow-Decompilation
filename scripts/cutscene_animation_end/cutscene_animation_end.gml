function cutscene_animation_end()
{
    if (argument[0].image_index > (argument[0].image_number - 1))
    {
        if (argument[1] == true)
            argument[0].image_speed = 0;
        
        cutscene_advance();
        return true;
    }
}
