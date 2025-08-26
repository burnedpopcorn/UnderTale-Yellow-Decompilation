function scr_determine_item_stealable()
{
    var selection = argument[0];
    
    switch (selection)
    {
        case "Wild Revolver":
        case "Silver Ammo":
        case "Fancy Holster":
        case "Honeydew Pin":
            if (ds_list_empty(global.steal_list))
                return true;
            
            for (var i = 0; i < ds_list_size(global.steal_list); i++)
            {
                if (ds_list_find_value(global.steal_list, i) == selection)
                    return false;
                else if (i == (ds_list_size(global.steal_list) - 1))
                    return true;
            }
            
            break;
        
        default:
            return true;
            break;
    }
}
