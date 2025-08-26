if (live_call())
    return global.live_result;

if (scene < 8)
    background_alpha = lerp(background_alpha, 1.01, 0.35);
else
    background_alpha = lerp(background_alpha, -0.01, 0.35);

var box = obj_dialogue_box_battle_transformation_any;

switch (scene)
{
    case 0:
        cutscene_wait(0.75);
        break;
    
    case 1:
        instance_create_depth(box.x, box.y, depth - 100, obj_flowey_1_attack_audience);
        cutscene_advance();
        break;
    
    case 2:
        cutscene_wait(1.25);
        break;
    
    case 3:
        cutscene_advance();
        break;
    
    case 4:
        obj_flowey_1_attack_audience_hate_sign.image_speed = 1;
        cutscene_advance();
        break;
    
    case 5:
        cutscene_wait(1.25);
        break;
    
    case 6:
        obj_flowey_1_attack_audience.active = true;
        cutscene_advance();
        break;
    
    case 7:
        cutscene_wait(7);
        break;
    
    case 8:
        obj_flowey_1_attack_audience.active = false;
        obj_flowey_1_attack_audience.fadeout = true;
        obj_flowey_1_attack_audience_hate_sign.image_alpha = background_alpha;
        obj_flowey_1_attack_audience_hate_flower.image_alpha = background_alpha;
        
        if (background_alpha <= 0)
            instance_destroy();
        
        break;
}
