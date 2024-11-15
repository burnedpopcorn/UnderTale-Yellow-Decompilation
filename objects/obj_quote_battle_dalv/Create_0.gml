var turns_passed, enemy_low_hp, enemy_mode, enemy_mode_gen;

turns_passed = global.turns_passed;
enemy_low_hp = global.enemy_low_hp;
enemy_mode = global.enemy_mode;
enemy_mode_gen = global.enemy_mode_gen;

switch (enemy_mode)
{
    case 0:
        if (enemy_mode_gen == 0)
        {
            if (turns_passed == 0)
            {
                message[0] = "I don't suppose you#can leave the way you#entered, could you?";
                message[1] = "That would be easier#for both of us.";
                portrait[0] = 1755;
                portrait[1] = 1759;
                message_end = 1;
            }
            else if (turns_passed == 1)
            {
                message[0] = "Where did you#come from anyway?";
                message[1] = "There aren't any#accessible#entrances...";
                portrait[0] = 1763;
                portrait[1] = 1780;
                message_end = 1;
            }
            else if (turns_passed == 2)
            {
                message[0] = "All I know is that#somehow...#you found me.#";
                message[1] = "Sorry to make things#difficult but I'm not#cowering away this#time.";
                portrait[0] = 1786;
                portrait[1] = 1781;
                message_end = 1;
            }
            else if (turns_passed == 3)
            {
                message[0] = "The other monsters...#Did you pester#them as well?\t";
                message[1] = "Not that I care#much to keep up#with their activity...";
                portrait[0] = 1780;
                portrait[1] = 1759;
                message_end = 1;
            }
            else if (turns_passed == 4)
            {
                message[0] = "This region of the#Ruins is my home.";
                message[1] = "And my home has#rules. The residents#understand that.";
                portrait[0] = 1776;
                portrait[1] = 1759;
                message_end = 1;
            }
            else if (turns_passed == 5)
            {
                message[0] = "But it seems as#if you never got#the memo.";
                message[1] = "That, or you're#purposely ignoring#my wishes.";
                portrait[0] = 1780;
                portrait[1] = 1759;
                message_end = 1;
            }
            else if (turns_passed == 6)
            {
                message[0] = "W-What's with that#sad face?";
                message[1] = "Don't you understand?#Don't you remember me?";
                portrait[0] = 1764;
                portrait[1] = 1778;
                message_end = 1;
            }
            else if (turns_passed == 7)
            {
                message[0] = "I know you aren't#a phantom but...";
                message[1] = "Could it be that...#No, it isn't#possible.";
                portrait[0] = 1780;
                portrait[1] = 1763;
                message_end = 1;
            }
            else if (turns_passed == 8)
            {
                message[0] = "You...";
                message[1] = "You look so#helpless. Different.";
                message[2] = "But is it a front?";
                portrait[0] = 1763;
                portrait[1] = 1764;
                portrait[2] = 1780;
                message_end = 2;
            }
            else if (turns_passed == 9)
            {
                message[0] = "No... You aren't#trying to hurt me...";
                message[1] = "You... You aren't#who I believed you#to be, are you?";
                message[2] = "...How could I be#so foolish?";
                message[3] = "I apologize.#I truly do.";
                message[4] = "This got out of#hand...";
                message[5] = "I... I don't know#how I can make#things right now...";
                portrait[0] = 1786;
                portrait[1] = 1764;
                portrait[2] = 1780;
                portrait[3] = 1781;
                portrait[4] = 1778;
                portrait[5] = 1763;
                message_end = 5;
            }
        }
        else if (turns_passed == 0)
        {
            message[0] = "I feared this would#happen. What poor#luck.";
            message[1] = "You know, despite your#beliefs...";
            message[2] = "Monsters aren't evil.";
            portrait[0] = 1785;
            portrait[1] = 1763;
            portrait[2] = 1786;
            message_end = 2;
        }
        else if (turns_passed == 1)
        {
            message[0] = "Monsterkind stands for#hope, for good.";
            message[1] = "Everyone here is only#trying to find a#little joy.";
            portrait[0] = 1786;
            portrait[1] = 1763;
            message_end = 1;
        }
        else if (turns_passed == 2)
        {
            message[0] = "But... I guess you#aren't one for joy.";
            portrait[0] = 1759;
            message_end = 0;
        }
        else if (turns_passed == 3)
        {
            message[0] = "Who am I kidding? You#won't believe me.";
            message[1] = "I'm the one who got#hostile first.";
            portrait[0] = 1763;
            portrait[1] = 1781;
            message_end = 1;
        }
        else if (turns_passed == 4)
        {
            message[0] = "This isn't some#mistake though...";
            message[1] = "You're fighting on#purpose.";
            portrait[0] = 1759;
            portrait[1] = 1762;
            message_end = 1;
        }
        else if (turns_passed == 5)
        {
            message[0] = "If you refuse to be#peaceful...";
            message[1] = "I won't be peaceful#either.";
            message[2] = "Despite what I said,#us monsters aren't#pushovers.";
            portrait[0] = 1785;
            portrait[1] = 1762;
            portrait[2] = 1762;
            message_end = 2;
        }
        else if (turns_passed == 6)
        {
            message[0] = "I'm losing at this,#aren't I...?";
            message[1] = "Why am I even wasting#my breath?";
            message[2] = "You aren't worth#talking to...";
            portrait[0] = 1763;
            portrait[1] = 1759;
            portrait[2] = 1779;
            message_end = 2;
        }
        else if (turns_passed == 7)
        {
            message[0] = "So... I'm gonna...#stop talking... to#you...";
            portrait[0] = 1779;
            message_end = 0;
        }
        else if (turns_passed >= 8)
        {
            message[0] = "...";
            portrait[0] = 1763;
            message_end = 0;
        }
        
        break;
    
    case 1:
        if (enemy_mode_gen == 0)
        {
            if (turns_passed == 0)
            {
                message[0] = "I don't suppose you#can leave the way you#entered, could you?";
                message[1] = "That would be easier#for both of us.";
                portrait[0] = 1755;
                portrait[1] = 1759;
                message_end = 1;
            }
            else if (turns_passed == 1)
            {
                message[0] = "How did you get in#here?";
                message[1] = "There aren't any#accessible entrances...";
                portrait[0] = 1765;
                portrait[1] = 1780;
                message_end = 1;
            }
            else if (turns_passed == 2)
            {
                message[0] = "* I...";
                portrait[0] = 1780;
                message_end = 0;
            }
            else if (turns_passed == 3)
            {
                message[0] = "I think I know what#you've done...";
                portrait[0] = 1759;
                message_end = 0;
            }
            else if (turns_passed == 4)
            {
                message[0] = "You hurt a lot of the#monsters out there,#didn't you?";
                message[1] = "Decibat told me that#you went on a#rampage...";
                portrait[0] = 1781;
                portrait[1] = 1763;
                message_end = 1;
            }
            else if (turns_passed == 5)
            {
                message[0] = "I... I don't know what#to think of you...";
                message[1] = "I should call you evil#but... you spared#Decibat.";
                message[2] = "Why is that?";
                portrait[0] = 1764;
                portrait[1] = 1763;
                portrait[2] = 1763;
                message_end = 2;
            }
            else if (turns_passed == 6)
            {
                message[0] = "I... always wanted to#be alone. I was sure#of it...";
                message[1] = "But now that I'm so#close to being so...";
                message[2] = "I don't want that#anymore.";
                portrait[0] = 1763;
                portrait[1] = 1780;
                portrait[2] = 1786;
                message_end = 2;
            }
            else if (turns_passed == 7)
            {
                message[0] = "I know I should hate#you but...";
                message[1] = "I don't have much left#now.";
                portrait[0] = 1763;
                portrait[1] = 1786;
                message_end = 1;
            }
            else if (turns_passed == 8)
            {
                message[0] = "I have Decibat...";
                message[1] = "And you too.";
                message[2] = "I...";
                message[3] = "I don't want to#be alone.";
                message[4] = "And I'm not a#malicious monster,#I promise!";
                message[5] = "I probably scared#you.";
                message[6] = "And you being so#young, the others...";
                message[7] = "...";
                message[8] = "Why don't you come#to my house?";
                message[9] = "We can make amends#there, like...#friends.";
                message[10] = "What do you say?";
                portrait[0] = 1781;
                portrait[1] = 1780;
                portrait[2] = 1786;
                portrait[3] = 1763;
                portrait[4] = 1764;
                portrait[5] = 1781;
                portrait[6] = 1786;
                portrait[7] = 1759;
                portrait[8] = 1780;
                portrait[9] = 1763;
                portrait[10] = 1776;
                message_end = 10;
            }
            else if (turns_passed >= 9)
            {
                message[0] = "...";
                portrait[0] = 1776;
                message_end = 0;
            }
        }
        else if (turns_passed == 0)
        {
            message[0] = "I feared this would#happen. What poor#luck.";
            message[1] = "You know, despite your#beliefs...";
            message[2] = "Monsters aren't evil.";
            portrait[0] = 1785;
            portrait[1] = 1763;
            portrait[2] = 1786;
            message_end = 2;
        }
        else if (turns_passed == 1)
        {
            message[0] = "Monsterkind stands for#hope, for good.";
            message[1] = "Everyone here is only#trying to find a#little joy.";
            portrait[0] = 1786;
            portrait[1] = 1763;
            message_end = 1;
        }
        else if (turns_passed == 2)
        {
            message[0] = "But... I guess you#aren't one for joy.";
            portrait[0] = 1759;
            message_end = 0;
        }
        else if (turns_passed == 3)
        {
            message[0] = "Who am I kidding? You#won't believe me.";
            message[1] = "I'm the one who got#hostile first.";
            portrait[0] = 1763;
            portrait[1] = 1781;
            message_end = 1;
        }
        else if (turns_passed == 4)
        {
            message[0] = "This isn't some#mistake though...";
            message[1] = "You're fighting on#purpose.";
            portrait[0] = 1759;
            portrait[1] = 1762;
            message_end = 1;
        }
        else if (turns_passed == 5)
        {
            message[0] = "If you refuse to be#peaceful...";
            message[1] = "I won't be peaceful#either.";
            message[2] = "Despite what I said,#us monsters aren't#pushovers.";
            portrait[0] = 1785;
            portrait[1] = 1762;
            portrait[2] = 1762;
            message_end = 2;
        }
        else if (turns_passed == 6)
        {
            message[0] = "I'm losing at this,#aren't I...?";
            message[1] = "Why am I even wasting#my breath?";
            message[2] = "You aren't worth#talking to...";
            portrait[0] = 1763;
            portrait[1] = 1759;
            portrait[2] = 1779;
            message_end = 2;
        }
        else if (turns_passed == 7)
        {
            message[0] = "So... I'm gonna...#stop talking... to#you...";
            portrait[0] = 1785;
            message_end = 0;
        }
        else if (turns_passed >= 8)
        {
            message[0] = "...";
            portrait[0] = 1763;
            message_end = 0;
        }
        
        break;
    
    case 2:
        if (turns_passed == 0)
        {
            message[0] = "You know, it's been#quieter since you#showed up...";
            message[1] = "I suppose I should#thank you.";
            portrait[0] = 1780;
            portrait[1] = 1755;
            message_end = 1;
            break;
        }
        
        if (turns_passed == 1)
        {
            message[0] = "I finally got my wish.";
            message[1] = "Or maybe it was just a#happenstance.";
            portrait[0] = 1755;
            portrait[1] = 1780;
            message_end = 1;
            break;
        }
        
        if (turns_passed == 2)
        {
            message[0] = "...";
            message[1] = "Everywhere I go dust#keeps clinging to my#cape...";
            message[2] = "I'm sorry to assume#but...";
            message[3] = "They're all gone,#aren't they?";
            portrait[0] = 1759;
            portrait[1] = 1763;
            portrait[2] = 1763;
            portrait[3] = 1786;
            message_end = 3;
            break;
        }
        
        if (turns_passed == 3)
        {
            message[0] = "I know I should thank#you, and it is what I#asked for...";
            message[1] = "But I never wanted to#hurt anybody!";
            portrait[0] = 1763;
            portrait[1] = 1764;
            message_end = 1;
            break;
        }
        
        if (turns_passed == 4)
        {
            message[0] = "I can't help but think#it's my fault!";
            message[1] = "Maybe my wish brought#you here?";
            message[2] = "Maybe I just need to#take a nap.";
            message[3] = "When I wake up, you'll#be gone, won't you?";
            message[4] = "Yeah, you're just a#ghost of my memories...";
            portrait[0] = 1763;
            portrait[1] = 1781;
            portrait[2] = 1786;
            portrait[3] = 1759;
            portrait[4] = 1759;
            message_end = 4;
            break;
        }
        
        if (turns_passed == 5)
        {
            message[0] = "Hey.";
            message[1] = "If you aren't real...";
            message[2] = "Then is all this#actually my fault?";
            message[3] = "...";
            message[4] = "I miss them all now!";
            portrait[0] = 1768;
            portrait[1] = 1768;
            portrait[2] = 1763;
            portrait[3] = 1763;
            portrait[4] = 1764;
            message_end = 4;
            break;
        }
        
        if (turns_passed == 6)
        {
            message[0] = "Penilla once drew me#a sketch of a sweet#corn cob.";
            message[1] = "I never thanked her...";
            portrait[0] = 1763;
            portrait[1] = 1781;
            message_end = 1;
            break;
        }
        
        if (turns_passed == 7)
        {
            message[0] = "One time, Sweet Corn#gave me a hug for no#reason.";
            message[1] = "I told her to never do#it again...";
            message[2] = "...";
            message[3] = "They were the closest#things I ever had to#friends...";
            message[4] = "And now...";
            portrait[0] = 1781;
            portrait[1] = 1786;
            portrait[2] = 1786;
            portrait[3] = 1763;
            portrait[4] = 1764;
            message_end = 4;
        }
}

message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
