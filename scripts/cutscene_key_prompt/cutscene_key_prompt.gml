function cutscene_key_prompt()
{
    if (keyboard_multicheck_pressed(vk_nokey) || keyboard_multicheck_pressed(vk_anykey) || keyboard_multicheck_pressed(2))
        return true;
    
    return false;
}
