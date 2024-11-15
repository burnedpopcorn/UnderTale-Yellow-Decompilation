if (scr_interact() && keyboard_multicheck_pressed(0) && !interacted_with)
{
    scene = 0;
    interacted_with = true;
    scr_cutscene_start();
}

if (interacted_with)
{
    if (scene == 0)
    {
        scr_text();
        
        with (msg)
        {
            ch_msg = 2;
            ch[1] = "Yes";
            ch[2] = "No";
            message[0] = "* (You examine the#  bookshelf...)\t";
            message[1] = "* (A title called \"Mysteries of#  the Underground\" catches your#  eye.)\t";
            message[2] = "* (Read it?)";
            
            if (outcome == 1)
            {
                instance_destroy();
                other.scene = 1;
                exit;
            }
            
            if (outcome == 2)
            {
                global.dialogue_open = false;
                other.interacted_with = false;
                scr_cutscene_end();
            }
        }
    }
    
    if (scene == 1)
    {
        scr_text();
        
        with (msg)
        {
            message[0] = "* Chapter One: Blunko's#  Blunder.";
            message[1] = "* Located in Oasis Valley, in a#  modern cafe you can't miss,#  lies an arcade cabinet.";
            message[2] = "* Painted blue and coated with a#  thick layer of dust, it sits#  there, out of order.";
            message[3] = "* Few monsters recall seeing it#  up and running and that might#  be on purpose.";
            message[4] = "* On the cabinet, two logos#  reside: Team Y and Blunko#  Industries.";
            message[5] = "* The same two human companies#  that created the Mew Mew Love#  Blaster cabinet.";
            message[6] = "* Legends say it was playable#  for a time after it was#  recovered from the dump...";
            message[7] = "* ...but its contents were#  \"unpleasant\" upon experience.#\t";
            message[8] = "* (You flip to the next#  chapter.)";
            message[9] = "* (Continue reading?)";
            ch_msg = 9;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                global.dialogue_open = false;
                instance_destroy();
                other.scene = 2;
                other.timer = 10;
                exit;
            }
            
            if (outcome == 2)
            {
                global.dialogue_open = false;
                other.interacted_with = false;
                other.scene = 0;
                scr_cutscene_end();
            }
        }
    }
    
    if (scene == 2)
    {
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            message[0] = "* Chapter Two: The Path.";
            message[1] = "* The Underground is a vast#  place.";
            message[2] = "* Throughout it are pathways#  and/or fences to lead monsters#  from place to place.";
            message[3] = "* But maybe, just maybe, the#  paths are truly there to keep#  you safe.";
            message[4] = "* In a report from 20XX, a#  father recalled fishing with#  his son in the Snowdin forest.";
            message[5] = "* As the father prepared his#  line, his son wandered past the#  fence and into the trees.";
            message[6] = "* The father didn't notice at#  first but soon began to search#  for the child.\t";
            message[7] = "* \"Before I found ____, it felt#  like I was in a daze,\" the#  father recounts.";
            message[8] = "* \"Just... nothing out there.\"";
            message[9] = "* (You flip to the next#  chapter.)";
            message[10] = "* (Continue reading?)";
            ch_msg = 10;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                global.dialogue_open = false;
                instance_destroy();
                other.scene = 3;
                other.timer = 10;
                exit;
            }
            
            if (outcome == 2)
            {
                global.dialogue_open = false;
                other.interacted_with = false;
                other.scene = 0;
                scr_cutscene_end();
            }
        }
    }
    
    if (scene == 3)
    {
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            message[0] = "* Chapter Three: The Phantom#  SOUL.\t";
            message[1] = "* Seven human SOULS are all it#  takes to destroy the barrier#  that intraps us monsters...\t";
            message[2] = "* ...and over time, King ASGORE#  and the Royal Guard have#  ensured we reach that goal.\t";
            message[3] = "* This process has been#  controversial among some#  residents but...";
            message[4] = "* ...\"War is not pleasant\" says#  the head of the Royal Guard.\t";
            message[5] = "* Typically, when a human falls#  into our home, they're#  \"collected\" within hours.";
            message[6] = "* But one time... it took#  years.\t";
            message[7] = "* It was a typical afternoon in#  Snowdin...\t";
            message[8] = "* Suddenly, a human was spotted#  in the area before swiftly#  fleeing for Waterfall.\t";
            message[9] = "* This, surprisingly, was the#  last time they were seen#  alive.\t";
            message[10] = "* Officials at the time said the#  disappearance most likely meant#  the human was hiding.\t";
            message[11] = "* However, the human's SOUL was#  later inexplicably found deep#  in Waterfall...\t";
            message[12] = "* (...)";
            message[13] = "* (You put the book back.)";
        }
        
        if (!global.dialogue_open)
        {
            scr_cutscene_end();
            interacted_with = false;
        }
    }
}
