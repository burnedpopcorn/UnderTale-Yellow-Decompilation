if (image_index >= index_trigger_obj && trigger_obj == false)
{
    event_user(0);
    trigger_obj = true;
}

if (image_index >= index_trigger_bg && trigger_bg == false)
{
    event_user(1);
    trigger_bg = true;
}
