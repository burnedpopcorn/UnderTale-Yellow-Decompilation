function scr_text_talkers()
{
    var talker_enabled, i, talking_npc;
    
    talker_enabled = false;
    
    for (i = 0; i < array_length(talker); i++)
    {
        if (talker[i] != -4)
            talker_enabled = true;
    }
    
    if (talker_enabled)
    {
        if (message_current < array_length_1d(talker))
        {
            talker_current = message_current;
            
            if (talker[talker_current] == 0 && talker_current > 0)
                talker[talker_current] = talker[talker_current - 1];
        }
        
        if (talker_current > 0)
        {
            with (talker[talker_current - 1])
                is_talking = false;
        }
        
        talking_npc = talker[talker_current];
        
        with (obj_npc_parent)
        {
            if ((id != talking_npc && is_talking == true) || global.dialogue_open == false)
                is_talking = false;
        }
        
        if (talker[talker_current] != -4)
        {
            with (talking_npc)
                is_talking = true;
        }
        
        if (object_is_ancestor(talker[talker_current], obj_npc_parent) && talker[talker_current].npc_voice_sfx != 0)
            sndfnt_array[talker_current] = talker[talker_current].npc_voice_sfx;
    }
}
