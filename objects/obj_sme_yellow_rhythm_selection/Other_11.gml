var note_hit = false;
var instance;

if (instance_exists(obj_sme_yellow_rhythm_note))
{
    var y_restore = y;
    i = -hit_extend_neg;
    
    while (i <= hit_extend_pos)
    {
        y = y_restore - i;
        instance = instance_place(x, y, obj_sme_yellow_rhythm_note);
        
        if (instance != -4)
        {
            note_hit = true;
            break;
        }
        
        if (grace_period_current > 0)
        {
            instance = instance_place(pos_x_previous_selection, y, obj_sme_yellow_rhythm_note);
            
            if (instance != -4)
            {
                note_hit = true;
                break;
            }
        }
        
        i++;
    }
    
    y = y_restore;
}

if (note_hit == true)
{
    with (instance)
    {
        if (note_sound != 0)
            audio_play_sound(note_sound, 20, false);
        
        global.id_store = id;
        instance_create(x, y, obj_sme_yellow_rhythm_note_end);
        instance_destroy();
    }
    
    instance_create(x, bbox_top - 1, obj_sme_yellow_rhythm_hit);
}
else
{
    instance_create(damage_pos_x, damage_pos_y, obj_sme_yellow_rhythm_damage);
}
