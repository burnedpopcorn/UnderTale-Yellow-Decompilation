scene = 0;
cutscene_timer = 0;
cutscene_music = -4;
draw_alpha = 0;

if (global.sworks_flag[36] >= 2)
{
    if (global.sworks_flag[36] == 2)
    {
        obj_steamworks_factory_02_face.sprite_index = spr_steamworks_38_face_talking;
        obj_steamworks_factory_02_face.image_index = 0;
    }
    
    scene = 100;
}
