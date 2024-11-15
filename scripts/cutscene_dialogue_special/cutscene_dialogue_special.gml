function cutscene_dialogue_special()
{
    if (!instance_exists(obj_dialogue_special))
    {
        msg = instance_create(x, y, obj_dialogue_special);
        
        with (msg)
        {
            mode = argument[0];
            text_col = argument[1];
        }
    }
    
    if (!global.dialogue_open)
    {
        cutscene_advance();
        return true;
    }
    
    return false;
}
