function scr_sme_yellow_rhythm_create_note()
{
    note_sound = note_sarray[note_current];
    note_pos = note_parray[note_current];
    
    if (note_pos == 0)
        instance_create(dj_note_left_x, dj_note_y, obj_sme_yellow_rhythm_note);
    else if (note_pos == 1)
        instance_create(dj_note_center_x, dj_note_y, obj_sme_yellow_rhythm_note);
    else if (note_pos == 2)
        instance_create(dj_note_right_x, dj_note_y, obj_sme_yellow_rhythm_note);
    
    note_current += 1;
    
    if (note_current >= note_total)
        note_final = true;
}
