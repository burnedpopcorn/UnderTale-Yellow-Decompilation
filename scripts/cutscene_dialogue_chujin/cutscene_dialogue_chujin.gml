function cutscene_dialogue_chujin()
{
    if (!instance_exists(obj_dialogue_chujin_tapes))
        msg = instance_create(x, y, obj_dialogue_chujin_tapes);
    
    if (!global.dialogue_open)
    {
        cutscene_advance();
        return true;
    }
    
    return false;
}
