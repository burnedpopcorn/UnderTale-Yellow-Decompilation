function scr_savecontrols()
{
    if (file_exists("Controls.sav"))
        file_delete("Controls.sav");
    
    ini_open("Controls.sav");
    ini_write_real("Controls", "Z", global.button1);
    ini_write_real("Controls", "X", global.button2);
    ini_write_real("Controls", "C", global.button3);
    ini_write_real("Controls", "deadzone", global.gamepad_deadzone);
    
    if (variable_global_exists("buttonText1") && !is_undefined(global.buttonText1))
    {
        ini_write_string("ControlsNameIgnore", "Z", global.buttonText1);
        ini_write_string("ControlsNameIgnore", "X", global.buttonText2);
        ini_write_string("ControlsNameIgnore", "C", global.buttonText3);
    }
    
    ini_write_real("Controls", "autorun", global.option_autorun);
    ini_write_real("Controls", "autoshoot", global.option_autoshoot);
    ini_write_real("Controls", "autorhythm", global.option_autorhythm);
    ini_write_real("Controls", "screenshake", global.option_screenshake_toggle);
    ini_write_real("Controls", "retry", global.option_retry_toggle);
    ini_write_real("Controls", "easymode", global.option_easymode);
    ini_close();
}
