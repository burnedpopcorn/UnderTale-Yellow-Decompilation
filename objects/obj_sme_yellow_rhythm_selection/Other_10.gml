var heart;

heart = obj_heart_battle_fighting_yellow_rhythm;
y = pos_y;

if (heart.move_x < 0)
{
    x = pos_left_x;
    image_index = 0;
}
else if (heart.move_x > 0)
{
    x = pos_right_x;
    image_index = 2;
}
else
{
    x = pos_center_x;
    image_index = 1;
}
