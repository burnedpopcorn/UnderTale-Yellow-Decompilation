function scr_item_set_unstealable()
{
    var selection;
    
    selection = argument[0];
    
    switch (selection)
    {
        case "Wild Revolver":
        case "Silver Ammo":
        case "Fancy Holster":
        case "Honeydew Pin":
            ds_list_add(global.steal_list, selection);
            return true;
            break;
        
        default:
            return true;
            break;
    }
}
