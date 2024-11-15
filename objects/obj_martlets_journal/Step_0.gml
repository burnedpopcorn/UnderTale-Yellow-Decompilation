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
            message[0] = "* (The leatherbound book's title#  reads: Martlet's Day to Day!)";
            message[1] = "* (You flip to an early page and#  see an entry.)";
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
            sndfnt_array[0] = 102;
            message[0] = "* Entry 3.";
            message[1] = "* So far, living on my own has#  been BORING.";
            message[2] = "* I don't know what to do with#  myself most of the time.";
            message[3] = "* Sure, I have a TV but monsters#  don't exactly produce much#  content.";
            message[4] = "* My mom says I “need a job” but#  more importantly, I need a#  hobby.";
            message[5] = "* The guy who built my balcony#  seemed to enjoy what he was#  doing.";
            message[6] = "* Maybe I'll ask him to teach me#  how to... ";
            message[7] = "* I don't know, nail planks of#  wood to houses? ";
            message[8] = "* It would be a start. UvU#";
            sndfnt_array[9] = 391;
            message[9] = "* (Continue?)";
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
            sndfnt_array[0] = 391;
            sndfnt_array[1] = 102;
            message[0] = "* (You flip through a few#  pages.)";
            message[1] = "* Entry 8.";
            message[2] = "* I think this \"tinkering\" thing#  is for me.";
            message[3] = "* I knew my B- in art class had#  a purpose!";
            message[4] = "* And Mr. Chujin is SO NICE!";
            message[5] = "* He gladly took my wings under#  his wing and now I'm making#  wooden blocks!";
            message[6] = "* Sounds boring, but I'm working#  toward carving a buncha them...";
            message[7] = "* ...to build one of those#  \"wooden tower\" games.";
            message[8] = "* Chujin thought it would be a#  good beginner project! ^v^";
            sndfnt_array[9] = 391;
            message[9] = "* (Continue?)";
            ch_msg = 9;
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
            sndfnt_array[0] = 391;
            sndfnt_array[1] = 102;
            message[0] = "* (You flip through a few more#  pages.)";
            message[1] = "* Entry 19.";
            message[2] = "* I had a conversation with Mr.#  Chujin last night.";
            message[3] = "* We're about to start making#  contraptions - like robotics!";
            message[4] = "* Turns out, he specialized in#  engineering at the Steamworks.";
            message[5] = "* He said he doesn't talk about#  his past job much out here.";
            message[6] = "* Likes to keep things casual#  while helping out the#  townsfolk.";
            message[7] = "* So I asked him why he's#  helping me like he is.";
            message[8] = "* He said he has a daughter#  named “Kanako.”";
            message[9] = "* “The world, as it is, is a#  dark place” he said. “A place#  unfit for a kid.”";
            message[10] = "* He believes that small acts of#  kindness will lead to a better#  world.";
            message[11] = "* Not only for him, or me, but#  for Kanako.";
            message[12] = "* Sooo yeah! Got a little deep#  there, but I get it.";
            message[13] = "* Him teaching me would, in#  theory, lead to me teaching#  someone else - etc, etc.";
            message[14] = "* Sounds like he wants to leave#  a lasting legacy or something.";
            message[15] = "* Guy's got big aspirations,#  that's for sure. ";
            message[16] = "* Caaan't relate. =v=#";
            sndfnt_array[17] = 391;
            message[17] = "* (Continue?)";
            ch_msg = 17;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                global.dialogue_open = false;
                instance_destroy();
                other.scene = 4;
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
    
    if (scene == 4)
    {
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt_array[0] = 391;
            sndfnt_array[1] = 102;
            message[0] = "* (You flip through a few more#  pages.)";
            message[1] = "* Entry 27.";
            message[2] = "* Welp, I couldn't procrastinate#  any longer.";
            message[3] = "* I had to... get a job. ;v;";
            message[4] = "* Signed up for the Royal Guard.";
            message[5] = "* I'm not one for combat but#  with my new skills, I could#  make a mighty fine puzzle!";
            message[6] = "* Had to tell Chujin the good#  news so I brought it up while#  we were on break.";
            message[7] = "* To my surprise, he wasn't#  happy.";
            message[8] = "* Said the job was dangerous.";
            message[9] = "* That humans themselves are#  dangerous.";
            message[10] = "* I don't wanna believe what he#  told me but...";
            message[11] = "* ...the look in his eyes was#  incredibly sincere.";
            message[12] = "* So... yeah.";
            message[13] = "* On the bright side, I can#  stave off my newfound paranoia,";
            message[14] = "* Because I was assigned boring#  Lab duty.";
            message[15] = "* Stand outside the Lab doors#  and keep watch. Fuuuuuuun. TvT#";
            sndfnt_array[16] = 391;
            message[16] = "* (The following entry is ripped#  out.)";
        }
        
        if (!global.dialogue_open)
        {
            scr_cutscene_end();
            interacted_with = false;
        }
    }
}
