var specific_encounter = "null";

switch (room)
{
    case rm_darkruins_13:
        specific_encounter = "flier trio";
        
        if (global.flag[17] != 0)
            specific_encounter = "null";
        
        break;
}

if (specific_encounter != "null")
{
    var pos = ds_list_find_index(global.encounter_list, specific_encounter);
    ds_list_delete(global.encounter_list, pos);
}
