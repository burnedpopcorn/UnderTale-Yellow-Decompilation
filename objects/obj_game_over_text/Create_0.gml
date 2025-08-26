var battle_enemy_name = global.battle_enemy_name;
var game_mode = global.game_mode;
sndfnt = sndfnt_flowey;

if (global.sworks_flag[45] == 1)
{
    global.battling_boss = false;
    message[0] = "* . . .";
    message[1] = "* . . .";
    message[2] = "* Why?";
    message_end = 2;
}
else
{
    switch (global.battle_enemy_name)
    {
        case "decibat":
            var random_number = irandom_range(1, 3);
            
            if (random_number == 1)
            {
                message[0] = "* Heh, I sure heard#that!";
                message[1] = "* But I don't wanna#hear it again, okay?";
                message_end = 1;
            }
            
            if (random_number == 2)
            {
                message[0] = "This thing hates#noise, right?";
                message[1] = "Use that fact to#your advantage!";
                message_end = 1;
            }
            
            if (random_number == 3)
            {
                message[0] = "Quite the permanent#solution, eh?";
                message[1] = "Too bad I can#undo it, haha!";
                message_end = 1;
            }
            
            break;
        
        case "dalv":
            var random_number = irandom_range(1, 3);
            
            if (random_number == 1)
            {
                message[0] = "This loner packs#a punch!";
                message[1] = "Nothing you can't#handle, though!";
                message_end = 1;
            }
            
            if (random_number == 2)
            {
                message[0] = "Last time I checked,#no one likes a fried#human.";
                message[1] = "Get back out there!";
                message_end = 1;
            }
            
            if (random_number == 3)
            {
                message[0] = "Blah blah blah,#what a whiner!";
                message[1] = "Let's hurry up and#deal with this recluse!";
                message_end = 1;
            }
            
            break;
        
        case "martlet pacifist":
            var random_number = irandom_range(1, 3);
            
            if (random_number == 1)
            {
                message[0] = "I'm not sure she even#meant to kill you there.";
                message[1] = "Impressive...?";
                message_end = 1;
            }
            
            if (random_number == 2)
            {
                message[0] = "Come on, you lost#to this rookie?";
                message[1] = "Step it up, pal!";
                message_end = 1;
            }
            
            if (random_number == 3)
            {
                message[0] = "Talk about \"freezing#up\" haha!";
                message[1] = "...Oh right, you can't#laugh because... Yeah.";
                message_end = 1;
            }
            
            break;
        
        case "el bailador":
            var random_number = irandom_range(1, 3);
            
            if (random_number == 1)
            {
                message[0] = "Come on, buddy!";
                message[1] = "Surely you can dance#better than THAT!";
                message_end = 1;
            }
            
            if (random_number == 2)
            {
                message[0] = "Do you have good#rhythm?";
                message[1] = "'Cause it kinda seems#like you need it.";
                message_end = 1;
            }
            
            if (random_number == 3)
            {
                message[0] = "Talk about over the#top...";
                message[1] = "Let's show this#showoff who's boss!";
                message_end = 1;
            }
            
            break;
        
        case "feisty five":
            var random_number = irandom_range(1, 3);
            
            if (random_number == 1)
            {
                message[0] = "I can't say I blame#you for dying, honestly.";
                message[1] = "It's four v one out#there! Buncha cheaters...";
                message_end = 1;
            }
            
            if (random_number == 2)
            {
                message[0] = "Heh, how are they#gonna explain THIS to#the Sheriff?";
                message[1] = "I'd love to stick#around for that mess,#but oh well!";
                message_end = 1;
            }
            
            if (random_number == 3)
            {
                message[0] = "I dunno if you can take#on this posse all at once.";
                message[1] = "Just stay alive as#long as you can,#alright?";
                message_end = 1;
            }
            
            break;
        
        case "starlo":
            var random_number = irandom_range(1, 3);
            
            if (random_number == 1)
            {
                message[0] = "The mentor vs apprentice#thing is fun and all,#but...";
                message[1] = "You do know the mentor#isn't supposed to win,#right?";
                message_end = 1;
            }
            
            if (random_number == 2)
            {
                message[0] = "This human-wannabe is#a total pushover!";
                message[1] = "Bet he'll crack if you#survive long enough, haha.";
                message_end = 1;
            }
            
            if (random_number == 3)
            {
                message[0] = "There's no way this#fraud bested you!";
                message[1] = "Come on, show him who#the real gunslinger is!";
                message_end = 1;
            }
            
            break;
        
        case "guardener":
            var random_number = irandom_range(1, 3);
            
            if (random_number == 1)
            {
                message[0] = "Talk about lethal!";
                message[1] = "Maybe try getting your#\"offense level\" lower?";
                message_end = 1;
            }
            
            if (random_number == 2)
            {
                message[0] = "Who knew a robot could#be so cold-blooded?#Or... just cold. ";
                message[1] = "Unless things get even#weirder. You never know.";
                message_end = 1;
            }
            
            if (random_number == 3)
            {
                message[0] = "This bot may be tough,#but you're tougher!";
                message[1] = "Put it back where it#came from!";
                message_end = 1;
            }
            
            break;
        
        case "axis":
            var random_number = irandom_range(1, 3);
            
            if (random_number == 1)
            {
                message[0] = "Clearly Axis wasn't#built to last.";
                message[1] = "You can take him out,#I'm sure of it!";
                message_end = 1;
            }
            
            if (random_number == 2)
            {
                message[0] = "This bot's done nothing#but bully you around!";
                message[1] = "Give him a taste of his#own metallic medicine!";
                message_end = 1;
            }
            
            if (random_number == 3)
            {
                message[0] = "Brush yourself off,#Clover!";
                message[1] = "It's time to put#the \"ax\" in Axis!";
                message_end = 1;
            }
            
            break;
        
        case "ceroba":
            var random_number = irandom_range(1, 5);
            
            if (random_number == 1)
            {
                message[0] = "You didn't come all#this way to die here!";
                message[1] = "Let's finish this thing!";
                message_end = 1;
            }
            
            if (random_number == 2)
            {
                message[0] = "You're gonna let this#backstabber win?";
                message[1] = "Not on my watch!";
                message_end = 1;
            }
            
            if (random_number == 3)
            {
                message[0] = "We're so close#to our goal!";
                message[1] = "Don't mess it up!";
                message_end = 1;
            }
            
            if (random_number == 4)
            {
                message[0] = "You need to keep your#guard up at all times!";
                message[1] = "Don't buy into Ceroba's#sob stories!";
                message_end = 1;
            }
            
            if (random_number == 5)
            {
                message[0] = "You can't give up#now, Clover!";
                message[1] = "It's time to take#Ceroba down for good!";
                message_end = 1;
            }
            
            break;
        
        case "martlet genocide":
            var random_number = irandom_range(1, 3);
            
            if (random_number == 1)
            {
                message[0] = "She's tougher than#she looks, huh?";
                message[1] = "Luckily, so are you!";
                message_end = 1;
            }
            
            if (random_number == 2)
            {
                message[0] = "Don't let this guard's#flashy front get to you.";
                message[1] = "I know a weak-willed#monster when I see one.";
                message_end = 1;
            }
            
            if (random_number == 3)
            {
                message[0] = "Gee, these monsters#sure are cruel!";
                message[1] = "And who is their main#influence? The King.";
                message_end = 1;
            }
            
            break;
        
        case "ceroba genocide":
            var random_number = irandom_range(1, 5);
            
            if (random_number == 1)
            {
                message[0] = "Has the almighty Clover#met their match?";
                message[1] = "Surely not!";
                message_end = 1;
            }
            
            if (random_number == 2)
            {
                message[0] = "Aww, come on!";
                message[1] = "Things were just getting#good!";
                message_end = 1;
            }
            
            if (random_number == 3)
            {
                message[0] = "This lady's totally#predictable!";
                message[1] = "Memorize the patterns#and she's done for!";
                message_end = 1;
            }
            
            if (random_number == 4)
            {
                message[0] = "Don't tell me this is#your limit!";
                message[1] = "'Cause there is more#where that came from,#buddy!";
                message_end = 1;
            }
            
            if (random_number == 5)
            {
                message[0] = "Oh, just kill her#already!";
                message[1] = "If you want to,#that is...";
                message_end = 1;
            }
            
            break;
        
        case "axis genocide":
            var random_number = irandom_range(1, 3);
            
            if (random_number == 1)
            {
                message[0] = "This piece of junk#did you in?";
                message[1] = "Heh, thought you were#better than that.";
                message_end = 1;
            }
            
            if (random_number == 2)
            {
                message[0] = "You should've dealt#with this bot a#long time ago.";
                message[1] = "But no, had to play#the big bad action#hero!";
                message_end = 1;
            }
            
            if (random_number == 3)
            {
                message[0] = "I can't help but feel#like this is karma,#heh.";
                message[1] = "But I GUESS I should#still revive you...";
                message_end = 1;
            }
            
            break;
        
        case "martlet genocide final":
            var random_number = irandom_range(1, 1);
            
            if (random_number == 1)
            {
                sndfnt = snd_talk_default;
                message[0] = "Again.";
                message_end = 0;
            }
            
            break;
        
        default:
            if (global.route != 3)
            {
                var random_number = irandom_range(1, 6);
                
                if (random_number == 1)
                {
                    message[0] = "You can't reach ASGORE#if you're dead!";
                    message[1] = "Don't fool around!";
                    message_end = 1;
                }
                
                if (random_number == 2)
                {
                    message[0] = "You're supposed to#DODGE the attacks!";
                    message[1] = "Remember what I#taught'cha?";
                    message_end = 1;
                }
                
                if (random_number == 3)
                {
                    message[0] = "I didn't offer my#help just to see#you die!";
                    message[1] = "Let's get moving!";
                    message_end = 1;
                }
                
                if (random_number == 4)
                {
                    message[0] = "How careless...";
                    message[1] = "Well, there's always#next time!";
                    message_end = 1;
                }
                
                if (random_number == 5)
                {
                    message[0] = "Yikes, that looked#painful!";
                    message[1] = "Brush yourself off and#get back at 'em!";
                    message_end = 1;
                }
                
                if (random_number == 6)
                {
                    message[0] = "Dying sucks, right?#Right.";
                    message[1] = "So try not to do#it again.";
                    message_end = 1;
                }
            }
            else
            {
                var random_number = irandom_range(1, 6);
                
                if (random_number == 1)
                {
                    message[0] = "* You have a mission,#remember?";
                    message[1] = "* Don't mess it up.";
                    message_end = 1;
                }
                
                if (random_number == 2)
                {
                    message[0] = "* These attackers can't#get their way.";
                    message[1] = "* Try again.";
                    message_end = 1;
                }
                
                if (random_number == 3)
                {
                    message[0] = "I didn't offer my#help just to see#you die!";
                    message[1] = "Let's get moving.";
                    message_end = 1;
                }
                
                if (random_number == 4)
                {
                    message[0] = "You can't reach ASGORE#if you're dead.";
                    message[1] = "Don't fool around.";
                    message_end = 1;
                }
                
                if (random_number == 5)
                {
                    message[0] = "You sure you're cut#out for this?";
                    message[1] = "Come on.";
                    message_end = 1;
                }
                
                if (random_number == 6)
                {
                    message[0] = "* Aaannd there goes#your SOUL!";
                    message[1] = "* Dodge the attacks next#time, will you?";
                    message_end = 1;
                }
            }
            
            break;
    }
}

message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
fade_out = false;
no_loop = false;
script_execute(scr_generate_text_counters);
