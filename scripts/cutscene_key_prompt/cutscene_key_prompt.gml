function cutscene_key_prompt()
{
    if (keyboard_multicheck_pressed(0) || keyboard_multicheck_pressed(1) || keyboard_multicheck_pressed(2))
        return true;
    
    return false;
}
