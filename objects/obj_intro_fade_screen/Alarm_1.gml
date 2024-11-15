switch (slide_count)
{
    case 1:
        with (obj_intro_slide_1_parent)
            instance_destroy();
        
        instance_create(0, 0, obj_intro_border_slide_2);
        instance_create(60, 36, obj_intro_coffins_slide_2);
        alarm[0] = 250;
        
        with (obj_intro_text)
            increase_message_count = true;
        
        break;
    
    case 2:
        with (obj_intro_slide_2_parent)
            instance_destroy();
        
        instance_create(60, 36, obj_intro_slide_3_new);
        alarm[0] = 250;
        
        with (obj_intro_text)
            increase_message_count = true;
        
        break;
    
    case 3:
        with (obj_intro_slide_3_parent)
            instance_destroy();
        
        instance_create(0, 0, obj_intro_border_slide_4);
        instance_create(0, 0, obj_intro_background_slide_4);
        instance_create(0, 0, obj_intro_dood_slide_4);
        instance_create(0, 0, obj_intro_canister_slide_4);
        instance_create(0, 0, obj_intro_heart_slide_4);
        alarm[0] = 340;
        
        with (obj_intro_text)
            increase_message_count = true;
        
        break;
    
    case 4:
        with (obj_intro_slide_4_parent)
            instance_destroy();
        
        instance_create(60, 36, obj_intro_mountain_slide_5);
        alarm[0] = 240;
        
        with (obj_intro_text)
            increase_message_count = true;
        
        break;
    
    case 5:
        with (obj_intro_slide_5_parent)
            instance_destroy();
        
        instance_create(60, 36, obj_intro_slide_6_new);
        alarm[0] = 200;
        
        with (obj_intro_text)
            increase_message_count = true;
        
        break;
    
    case 6:
        with (obj_intro_slide_6_parent)
            instance_destroy();
        
        instance_create(60, 36, obj_intro_slide_7_new);
        alarm[0] = 140;
        
        if (instance_exists(obj_intro_text))
        {
            with (obj_intro_text)
                instance_destroy();
        }
        
        break;
    
    case 7:
        with (obj_intro_slide_7_parent)
            instance_destroy();
        
        instance_create(60, 36, obj_intro_slide_8_new);
        alarm[0] = 140;
        break;
    
    case 8:
        with (obj_intro_slide_8_parent)
            instance_destroy();
        
        instance_create(60, 36, obj_intro_clover_slide_9);
        alarm[0] = 140;
        break;
    
    case 9:
        with (obj_intro_slide_9_parent)
            instance_destroy();
        
        instance_create(0, 0, obj_intro_border_slide_10);
        instance_create(60, 36, obj_intro_cave_slide_10);
        instance_create(0, 0, obj_intro_clover_slide_10);
        alarm[0] = 200;
        break;
    
    case 10:
        with (obj_intro_slide_10_parent)
            instance_destroy();
        
        alarm[2] = 20;
        alarm[3] = 50;
        break;
}

fade_direction = "in";
slide_count += 1;
