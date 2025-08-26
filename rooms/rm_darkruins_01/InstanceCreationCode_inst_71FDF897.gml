message[0] = "* (The sign is obscured by#  leaves.)";
message[1] = "* (Only a few words are visible.)";

if (global.option_autorun == false)
    message[2] = "* Caution... " + global.cancel_key + "... Run...";
else
    message[2] = "* Caution... " + global.cancel_key + "... Walk...";
