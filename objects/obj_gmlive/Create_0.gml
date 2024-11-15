var first;

if (instance_number(obj_gmlive) > 1)
{
    first = instance_find(obj_gmlive, 0);
    
    if (id != first)
    {
        instance_destroy();
        exit;
    }
}

live_init(1, "http://localhost:5100", "");
