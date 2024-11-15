function cutscene_dialogue_giga()
{
    if (!instance_exists(obj_dialogue_giga))
    {
        msg = instance_create(0, 0, obj_dialogue_giga);
        
        if (argument_count > 0)
        {
            msg.xx = argument[0];
            msg.yy = argument[1];
        }
    }
    
    if (!global.dialogue_open)
    {
        cutscene_advance();
        return true;
    }
    
    return false;
}
