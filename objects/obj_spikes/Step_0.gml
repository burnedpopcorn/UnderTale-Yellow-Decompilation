if (room == rm_darkruins_04 && global.flag[1] == true)
    swit = true;

if (swit == true)
{
    if (place_meeting(x, y, obj_interactable))
        instance_destroy(instance_place(x, y, obj_interactable));
    
    image_index = 1;
}

if (image_index == 1)
    solid = false;
else
    solid = true;
