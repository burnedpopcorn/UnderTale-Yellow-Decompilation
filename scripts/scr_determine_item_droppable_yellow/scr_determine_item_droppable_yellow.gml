function scr_determine_item_droppable_yellow(arg0)
{
    var item_slot = arg0;
    
    switch (item_slot)
    {
        case "Missing Poster":
        case "Snowdin Map":
        case "Matches":
        case "Lukewarm Coffee":
        case "Soggy Mitten":
        case "H. Acid":
            return false;
            break;
        
        case "Pickaxe":
        case "Flint":
        case "Steel Buckle":
            if (global.dunes_flag[4] >= 2)
                return true;
            else
                return false;
            
            break;
        
        default:
            return true;
    }
}
