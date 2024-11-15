function scr_determine_item_purchasable()
{
    switch (argument[0])
    {
        case "Adult Soda":
        case "Wild Revolver":
            return false;
            break;
        
        default:
            return true;
            break;
    }
}
