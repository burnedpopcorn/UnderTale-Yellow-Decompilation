switch (scene)
{
    case 0:
        if (image_yscale > 0)
        {
            image_yscale -= 0.2;
        }
        else
        {
            image_yscale = 0;
            instance_destroy();
        }
        
        image_alpha = image_yscale * 1.1;
        break;
}
