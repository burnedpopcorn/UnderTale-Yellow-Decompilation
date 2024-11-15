var destroy_part;

scr_enemy_attack_bullet_hit();

if (bullet_destroy_self)
{
    instance_destroy();
    destroy_part = instance_create_depth(x, y, depth, obj_rope_circle_part_destroy);
    destroy_part.image_angle = image_angle;
}
