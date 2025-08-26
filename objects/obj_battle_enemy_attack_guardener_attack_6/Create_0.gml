if (live_call())
    return global.live_result;

var box = obj_dialogue_box_battle_transformation_any;

if (instance_exists(obj_guardener_guy_a) && instance_exists(obj_guardener_guy_b))
{
}
else
{
    instance_destroy();
    exit;
}

scene = 0;
cutscene_timer = 0;
shoot_timer = 10;
shoot_timer_max = 50;
shoot_count = 4;
guy_b_start_xy = [obj_guardener_guy_b.x, obj_guardener_guy_b.y];
guy_a_start_xy = [obj_guardener_guy_a.x, obj_guardener_guy_a.y];
