if (live_call())
    return global.live_result;

var xx = choose(-80, 720);

if (xx == -80)
    xx2 = 720;
else
    xx2 = -80;

var hand = instance_create_depth(xx, 410, -100, obj_flowey_battle_gray_hand);
hand.image_angle = 90;
var hand2 = instance_create_depth(xx2, 30, -100, obj_flowey_battle_gray_hand);
hand2.image_angle = 270;
instance_destroy();
