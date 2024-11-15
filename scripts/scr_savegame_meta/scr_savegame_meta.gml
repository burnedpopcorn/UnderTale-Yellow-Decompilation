function scr_savegame_meta()
{
    if (file_exists("Save02.sav"))
        file_delete("Save02.sav");
    
    ini_open("Save02.sav");
    ini_write_real("00", "00", global.meta_flowey_introduction_count);
    ini_write_real("00", "01", global.meta_flowey_fight_count);
    ini_write_real("00", "02", global.game_finished_pacifist);
    ini_write_real("00", "03", global.game_finished_pacifist_kill);
    ini_write_real("00", "04", global.game_finished_murder);
    ini_write_real("Deaths", "00", global.death_count_total);
    ini_write_real("Deaths", "01", global.death_count[1]);
    ini_write_real("Deaths", "02", global.death_count[2]);
    ini_close();
}
