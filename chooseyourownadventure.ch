string_t showRoadMap;
string_t showRoadMap1;
string_t showRoadMap2;
int gameUpdateTime;
string_t name;
int walkToVendor;
int amountOfCoins;
int coinsRemaing;
int amountOfCoinsAmountOfCoinsLeft;
int remaingAmountOfCoins;
string_t petChoice;
string_t petChoice1;
string_t petChoice2;
string_t petChoice3;
string_t petName;
int whiterunPop;
int riverwoodPop;
int riftenPop;
int whiterunElevation;
int riverwoodElevation;
int riftenElevation;
int whiterunDistance;
int riverwoodDistance;
int riftenDistance;
string_t cityChosen;
string_t cityChosen1;
string_t cityChosen2;
string_t cityChosen3;
int amountOfRebels;
string_t rebelsChoice;
string_t rebelsChoice1;
string_t rebelsChoice2;
string_t rebelsChoice3;
string_t riverwoodChoice;
string_t riverwoodChoice1;
string_t riverwoodChoice2;
string_t riverwoodChoice3;
int amountOfFish;
string_t vendorChosen;
string_t vendorChosen1;
string_t vendorChosen2;
string_t vendorChosen3;
string_t weaponsOrPotions;
string_t weaponsOrPotions1;
string_t weaponsOrPotions2;
string_t weaponsOrFood;
string_t weaponsOrFood1;
string_t weaponsOrFood2;
string_t thievesGuildChoice;
string_t thievesGuildChoice1;
string_t thievesGuildChoice2;
string_t thievesGuildChoice3;
gameUpdateTime=randint(2,7);
walkToVendor=randint(2,10);
whiterunDistance=randint(2,15);
riverwoodDistance=randint(5,10);
riftenDistance=randint(10,25);
whiterunPop=randint(250000,1000000);
riverwoodPop=randint(5000,50000);
riftenPop=randint(50000,250000);
whiterunElevation=randint(50,75);
riverwoodElevation=randint(25,50);
riftenElevation=randint(1,25);
amountOfCoins=randint(3,10);
amountOfRebels=randint(5,10);
amountOfFish=randint(3,10);
showRoadMap1="1";
showRoadMap2="2";
petChoice1="1";
petChoice2="2";
petChoice3="3";
cityChosen1="1";
cityChosen2="2";
cityChosen3="3";
rebelsChoice1="1";
rebelsChoice2="2";
rebelsChoice3="3";
riverwoodChoice1="1";
riverwoodChoice2="2";
riverwoodChoice3="3";
vendorChosen1="1";
vendorChosen2="2";
vendorChosen3="3";
weaponsOrPotions1="1";
weaponsOrPotions2="2";
weaponsOrFood1="1";
weaponsOrFood2="2";
thievesGuildChoice1="1";
thievesGuildChoice2="2";
thievesGuildChoice3="3";

void roadMap(){
printf("         Introduction\n");
printf("         |    |      |\n");
printf("   Whiterun   |      Riften \n");
printf("   |   |  |   |      |  |  |\n");
printf("turnIn | join |stealItem| turnIn\n");
printf("Rebels |Rebels|         | Guild\n");
printf("       |      |         |\n");
printf("   doNotPick  |     doNothing\n");
printf("     ASide    |\n");
printf("          Riverwood\n");
printf("          |   |   |\n");
printf("      becomeA | becomeA\n");
printf("   Blacksmith | Fisherman\n");
printf("            becomeA    \n");
printf("           Lumberjack\n");
printf("\n");    
}
void askForRoadMap(){
do{
printf("Would you like to see a road map before you start the game.\n");
printf("Type \"1\" if you would like to see a road map or type \"2\" if  you don't want to see it\n");
scanf("%s",&showRoadMap);
}
while(showRoadMap != showRoadMap1 && showRoadMap != showRoadMap2);
}
//Introduction
void intro(){
printf("You open skyrim after waiting to download the new propter pecuniam dlc.\n");
printf("You have been waiting for it to update for %d days.\n",gameUpdateTime);
printf("When you open the game all your save progress is lost and you have to start the game all over again.\n");
printf("However, for some reason the start is different and you don't know where you are.\n");
printf("You see a man standing outside of what seems like a castle.\n");
printf("You try to go into the castle, but the guard stops you.\n");
printf("    \"What is your name?\" He asks.\n");
scanf("%s",&name);
printf("    \"Your not Farquaad. Leave at once.\" He says.\n");
    printf("You turn around and walk the other way.\n");
    printf("But before you leave you find %d coins on the ground\n",amountOfCoins);
}
void vendor(){
    printf("After walking for what seemed like %d minutes you see a vendor selling pets.\n",walkToVendor);
    printf("    \"Hello, stranger I am Bran master pet breeder. And you are?\"\n");
    printf("    \"Helllo, I am %s. What pets are you selling?\"\n",name);
    printf("    \"I am selling a wolf for 3 coins, a unicorn for 5 coins, and a dragon for 10 coins.\"\n");
    do{
    printf("    \"Which one do you want to buy?\"\n");
        printf("Type \"1\" if you want to buy a wolf, type \"2\" if you want to buy a unicorn, or type \"3\" if you want to buy a dragon.\n");
    scanf("%s", &petChoice);
    }
    while(petChoice != petChoice1 && petChoice != petChoice2 && petChoice != petChoice3);
    if(petChoice == petChoice2){
        if(amountOfCoins < 5){
            printf("I'm sorry you don't have enough coins please choose a different pet.\n");
            printf("Type 1 if you want to buy a wolf, type 2 if you want to buy a unicorn, or type 3 if you want to buy a dragon.\n");
            scanf("%s", &petChoice);
        }
    }
    if(petChoice == petChoice3){
        if(amountOfCoins < 10){
            printf("I'm sorry you don't have enough coins please choose a different pet.\n");
            printf("Type 1 if you want to buy a wolf, type 2 if you want to buy a unicorn, or type 3 if you want to buy a dragon.\n");
            scanf("%s", &petChoice);
            if(amountOfCoins < 5){
            printf("I'm sorry you don't have enough coins please choose a different pet.\n");
            printf("Type 1 if you want to buy a wolf, type 2 if you want to buy a unicorn, or type 3 if you want to buy a dragon.\n");
            scanf("%s", &petChoice);
            }
        }
    }
}
 void wolf(){
     coinsRemaing=amountOfCoins-3;
            printf("    \"Good choice, what do you want to name your wolf?\"\n");
            scanf("%s", &petName);
            printf("You have %d coins left\n",coinsRemaing);
        }
void unicorn(){
        remaingAmountOfCoins=amountOfCoins-5;
            printf("    \"Good choice, what do you want to name your unicorn?\"\n");
            scanf("%s",&petName);
            printf("You have %d coins left\n",remaingAmountOfCoins);
    }
void dragon(){
        amountOfCoinsAmountOfCoinsLeft=amountOfCoins-10;
            printf("    \"Good choice, what do you want to name your dragon?\"\n");
            scanf("%s",&petName);
            printf("You have %d coins left\n",amountOfCoinsAmountOfCoinsLeft);
        }
void cityChoice(){
    printf("After you buy your pet you continue to walk until you see a sign post.\n");
    printf("Pointing to the north it says Whiterun %d miles away.\n", whiterunDistance);
    printf("Pointing to the south it says Riverwood %d miles away.\n",riverwoodDistance);
    printf("Pointing to the east it says Riften %d miles away.\n",riftenDistance);
    printf("Type \"1\" if you want to go to Whiterun, type \"2\" if you want to go to Riverwood, or type \"3\" if you want to go to Riften.\n");
do{
    printf("What city do you want to travel to?\n");
    scanf("%s", &cityChosen);
}
while(cityChosen != cityChosen1 && cityChosen != cityChosen2 && cityChosen != cityChosen3);
}
//Option 1
void Whiterun(){
    printf("You and %s make you way towards Whiterun.\n",petName);
    printf("You reach the outside of Whiterun.\n");
    printf("You see a big sign standing outside the city.\n");
    printf("It says Whiterun capital of skyrim, population:%d people, elevation:%d feet\n",whiterunPop,whiterunElevation);
    printf("You start to walk into the town, but before you can you are stopped by a guard.\n");
    printf("    \"State your name.\"\n");
    printf("    \"I am %s.\"\n",name);
if(name == "Mercer Frey"){
    printf("    \"By the order of Jarl Balgruuf the Greater I place you under arrest. Don't move or you will be killed immediately.\"\n");
    printf("You are arrested and sentenced to a life sentence in prison.\n");
    printf("Game Over\n");
}else{
    printf("    \"Good you're not Mercer Frey. Welcome to Whiterun.\"\n");
    printf("You and %s walk into the town.\n",petName);
    printf("You see a castle on top of a hill in the town.\n");
    printf("You walk over to it and two guards are standing outside it.\n");
    printf("    \"What is your name?\"\n");
    printf("    \"I am %s and this is my pet %s.\"\n",name,petName);
    printf("    \"Ok you may enter the castle.\"\n");
    printf("You enter the castle and there is a long table in the middle with chairs around it.\n");
    printf("On the other side of the table you see a throne with someone sitting on it and two guards standing next to the throne.\n");
    printf("You walk over to the throne.\n");
    printf("The person sitting on the throne says,\"Hello, I am Jarl Balgruuf the Greater I ruler of skyrim.\"\n");
    printf("    \"Hello, your majesty I am %s and this my pet %s.\"\n",name,petName);
    printf("    \"Welcome to Whiterun the capital of skyrim. I have heard there are rebels here in Whiterun can you turn them in if you see them.\n");
    printf("    \"Ok, I will let you know if I meet any rebels. Goodbye.\"\n");
    printf("    \"Goodbye and have a great day here in Whiterun.\n");
    printf("You leave the castle and start exploring Whiterun.\n");
    printf("After exploring for a while you see a group of about %d people.\n",amountOfRebels);
    printf("    \"Hello, I am new here to Whiterun. What you guys up to?\"\n");
    printf("    \"Oh, hello we were going to start a revolt against the king because he is not giving us enough food. Would you like to join?\"\n");
    printf("    \"I will let you know once I finish exploring Whiterun.\"\n");
    printf("    \"Ok.\"\n");
    printf("You walk and continue exploring the town.\n");
do{
    printf("Do you want to turn in the rebels, don't pick a side, or join the rebels?\n");
    printf("Type \"1\" if you want to turn in the rebels, type \"2\" if you don't want to pick a side, or type \"3\" if you want to join the rebels.\n");
    scanf("%s",&rebelsChoice);
}
while(rebelsChoice != rebelsChoice1 && rebelsChoice != rebelsChoice2 && rebelsChoice != rebelsChoice3);
    }
}
//End 1
void turnInRebels(){
    printf("You go back to the castle and tell Jarl Balgruuf about the rebels.\n");
    printf("He has his guards arrest the group of rebels.\n");
    printf("    \"Thank you %s for warning me about the rebels.\"He says.\n",name);
    printf("    \"No problem. I am just doing my best to help skyrim.\"\n");
    printf("    \"For warning me about the rebels you may live anywhere here in Whiterun\"\n");
    printf("You get to live in the best house in Whiterun and you and %s grow old and live a happy life.\n",petName);
    printf("Game over.\n");
}
//End 2
void doNotPickASide(){
    printf("You don't go back to the Jarl or the rebels.\n");
    printf("You go to a local inn you saw when exploring Whiterun and you try to get a room for the night.\n");
    printf("The person in charge of the inn asks, \"What can I put the name under?\"\n");
    printf("    \"%s\"\n",name);
    printf("You go to your room and sleep.\n");
    printf("The next day you and %s wake up and go outside to see Whiterun destroyed.\n",petName);
    printf("Slowly, over time skyrim goes into chaos.\n");
    printf("The fighting between the rebels and the Jarl last for the next 500 years with no clear winners at the end of the fighting.\n");
    printf("Game over.\n");
}
//End 3
void joinRebels(){
    printf("You go back to the rebels and tell them you are in and you join them.\n");
    printf("For the next few days you get more recuits from other towns.\n");
    printf("After getting over 500 people to join you plan an attack.\n");
    printf("Your plan is to attack the Jarl's castle in the middle of the night.\n");
    printf("You guys successfully attack the castle and kill the Jarl.\n");
    printf("However, after killing the Jarl the word spreads out about it and you see a poster saying: %s wanted.\n",name);
    printf("You and %s spend the rest of your life in jail.\n",petName);
    printf("Game Over.\n");
}
//Option 2
void Riverwood(){
    printf("You and %s make you way towards Riverwood.\n",petName);
    printf("You reach the outside of Riverwood.\n");
    printf("You see a big sign standing outside.\n");
    printf("It says Riverwood, population:%d, people elevation:%d feet\n",riverwoodPop,riverwoodElevation);
    printf("You start to walk into the town, but before you can you are stopped by a guard.\n");
    printf("    \"State your name.\"\n");
    printf("    \"I am %s.\"\n",name);
if(name == "Mercer Frey"){
    printf("    \"By the order of Jarl Balgruuf the Greater I place you under arrest. Don't move or you will be killed immediately.\"\n");
    printf("You are arrested and sentenced to a life sentence in prison.\n");
    printf("Game Over\n");
}else{
    printf("    \"Good you're not Mercer Frey. Welcome to Riverwood.\"\n");
    printf("You and %s walk into the town.\n",petName);
    printf("You start exploring Riverwood until you are stopped by a man.\n");
    printf("    \"Hello, are you new to the town?\"\n");
    printf("    \"Yes, I was just exploring the town.\"\n");
    printf("    \"Oh I forgot to tell you my name I am Finn the local fisherman. I am looking for someone to train as my apprentice.\"\n");
    printf("    \"Nice to meet you Finn I am %d and this is my pet %d\"\n",name,petName);
    printf("    \"Would you like to be my apprentice?\"\n");
    printf("    \"I will think about it. Nice meeting you though.\"\n");
    printf("You walk away and continue exploring the town.");
    printf("You see a man working and you walk over and see what he is up to.\n");
    printf("    \"Hello, I am %d. I am new to the town. What are you up to?\n",name);
    printf("    \"Hello, I am Alvor the blacksmith of the town. I was in need in some extra hands to help. Would you be willing to help me\n");
    printf("    \"I will think about it. Nice meeting you though.\"\n");
    printf("You leave and walk towards the edge of town.\n");
    printf("You see someone walking from the outside of town. He is trying to carry a tree.\n");
    printf("    \"Hello, can you help me carry this tree?\" He says.\n");
    printf("You walk over and help him carry the tree.\n");
    printf("    \"Hello, why are you carrying this tree?\"\n");
    printf("    \"I am Hod the lumberjack of the town. I could always need someone help. Will you help me?\"\n");
    printf("You guys finish carrying the tree into town and set it down.\n");
    printf("    \"I will think about it. Nice meeting you though.\"\n");
    printf("You walk away and continue to explore the town.\n");
    printf("After you finish exploring the town you start thinking about who you should help.\n");
do{
    printf("Do you help Alvor the blacksmith, or do you help Hod the lumberjack, or do you help Finn the fisherman.\n");
    printf("Type \"1\" if you want to help Alvor and become a blacksmith, type \"2\" if you want to help Hod and become a lumberjack, or type \"3\" if you want to help Finn and become a fisherman\n");
    scanf("%s",&riverwoodChoice);
}
while(riverwoodChoice != riverwoodChoice1 && riverwoodChoice != riverwoodChoice2 && riverwoodChoice != riverwoodChoice3);
    }
}
//End 4
void becomeABlacksmith(){
    printf("You decide to help Alvor and become a blacksmith.\n");
    printf("    \"Do you still need help?\"\n");
    printf("    \"Yes, thank you %s for helping me.\n",name);
    printf("He teaches everything he knows about blacksmithing.\n");
    printf("The first thing you try to make is an iron dagger.\n");
    printf("You follow all the steps blacksmith person taught you.\n");
    printf("However, when you are putting in the iron in the forge you accidentally fall in.\n");
    printf("No one comes in time to save you.\n");
    printf("You die a slow and miserable death.\n");
    printf("Game Over.\n");
}
    
//End 5
void becomeALumberjack(){
    printf("You learn how to become a lumberjack with the help from Hod.\n");
    printf("    \"Do you still need help?\"\n");
    printf("    \"Yes, thank you %s for helping me.\n",name);
    printf("You go into the forest and start chopping down trees.\n");
    printf("After cutting down trees for 3 days you get enough wood to start making a log cabin.\n");
    printf("You build your small log cabin on top of the hill at the edge of town.\n");
    printf("You spend the rest of your life living in Riverwood as a lumberjack with %s.\n",petName);
    printf("Game Over.\n");
}
    
//End 6
void becomeAFisherman(){
    printf("You go to Finn and he teaches you how to fish and how to be a fisherman.\n");
    printf("    \"Do you still need help?\"\n");
    printf("    \"Yes, thank you %s for helping me.\n",name);
    printf("On your first day as a fisherman you catch %d fish.\n",amountOfFish);
    printf("You go tell Finn about how many fish you caught that day and he says that you are a natural at fishing.\n");
    printf("The next day you go fishing again and this time you catch %d fish.\n",amountOfFish);
    printf("Unfortunately, a bear smells your fish and comes to investigate it.\n");
    printf("He sees the fish you are holding and attacks you.\n");
    printf("%s tries to attack the bear, but fails.",petName);
    printf("You get mauled to death by the bear.");
    printf("Game Over.\n");
}
    
//Option 3
void Riften(){
    printf("You and %s make you way towards Riften.\n",petName);
    printf("You reach the outside of Riften.\n");
    printf("You see a big sign standing outside.\n");
    printf("It says Riften, population:%d, people elevation:%d feet\n",riftenPop,riftenElevation);
    printf("You start to walk into the town, but before you can you are stopped by a guard.\n");
    printf("    \"State your name.\"\n");
    printf("    \"I am %s.\"\n",name);
if(name == "Mercer Frey"){
    printf("    \"By the order of Jarl Balgruuf the Greater I place you under arrest. Don't move or you will be killed immediately.\"\n");
    printf("You are arrested and sentenced to a life sentence in prison.\n");
    printf("Game Over\n");
}else{
    printf("    \"Good you're not Mercer Frey. Welcome to Riften.\"\n");
    printf("You and %s walk into the town.\n", petName);
    printf("You see a marketplace in the middle of town.\n");
}
}
void marketplace(){
    printf("You and %s walk over to the marketplace\n",petName);
    printf("You walk around the marketplace and you see three different vendors.\n");
    printf("One of the vendor is selling weapons, another vendor is selling food, and the third vendor is selling potions\n");
    printf("What vendor do you want to talk to?\n");
do{
    printf("Type \"1\" if you want to talk to the vendor selling weapons, type \"2\" if you want to talk to the vendor selling food, or type \"3\" if you want to talk to the vendor selling potions.\n");
    scanf("%s",&vendorChosen);
}
while(vendorChosen != vendorChosen1 && vendorChosen != vendorChosen2 && vendorChosen != vendorChosen3);
}
void weaponsVendor(){
    printf("You walk over to the weapons vendor.\n");
    printf("    \"Hello, I am Brynjolf the weapons vendor.\"\n");
    printf("    \"Hello, I am %s and this is my pet %s.\"\n",name,petName);
    printf("    \"Do you want to buy this iron dagger for 15 coins?\"\n");
    printf("    \"Yes, but I don't have enough coins to buy it.\"\n");
    printf("    \"I will give it to you if you steal a potion from Brand-Shei and you get to join the thieves guild. He is the potion vendor.\"\n");
do{
    printf("Do you steal the potion and join the thieves guild, do nothing about it, or turn in the thieves guild?\n");
    printf("Type \"1\" if you steal the potion, type \"2\" if you do nothing about it, or type \"3\" if you turn in the thieves guild.\n");
    scanf("%s",&thievesGuildChoice);
}
while(thievesGuildChoice != thievesGuildChoice1 && thievesGuildChoice != thievesGuildChoice2 && thievesGuildChoice != thievesGuildChoice3);
}
void foodVendor(){
    printf("You walk over to the food vendor.\n");
    printf("    \"Hello, I am Grelka the food vendor.\"\n");
    printf("    \"Hello, I am %s and this is my pet %s.\"\n",name,petName);
    printf("    \"Do you want to buy an apple pie for 10 coins?\"\n");
    printf("    \"Sorry, I don't have enough coins.\"\n");
    printf("You leave the food vendor and go back to the middle of the marketplace.\n");
do{
    printf("Do you want to go to the weapons vendor or the potions vendor?\n");
    printf("Type \"1\" if you want to go to the weapons vendor or type \"2\" if you want to go to the potions vendor.\n");
    scanf("%s",&weaponsOrPotions);
}
while(weaponsOrPotions != weaponsOrPotions1 && weaponsOrPotions != weaponsOrPotions2);
}
void potionsVendor(){
    printf("You walk over to the potions vendor.\n");
    printf("    \"Hello, I am Brand-Shei the potions vendor.\"\n");
    printf("    \"Hello, I am %s and this is my pet %s.\"\n",name,petName);
    printf("    \"Do you want to buy a health potion for 15 coins?\"\n");
    printf("    \"Sorry, I don't have enough coins.\"\n");
    printf("You leave the potions vendor and go back to the middle of the marketplace.\n");
do{
    printf("Do you want to go to the weapons vendor or the food vendor?\n");
    printf("Type \"1\" if you want to go to the weapons vendor or type \"2\" if you want to go to the food vendor.\n");
    scanf("%s",&weaponsOrFood);
}
while(weaponsOrFood != weaponsOrFood1 && weaponsOrFood != weaponsOrFood2);
}
void vendorOfPotions(){
    printf("You walk over to the potions vendor.\n");
    printf("    \"Hello, I am Brand-Shei the potions vendor.\"\n");
    printf("    \"Hello, I am %s and this is my pet %s.\"\n",name,petName);
    printf("    \"Do you want to buy a health potion for 15 coins?\"\n");
    printf("    \"Sorry, I don't have enough coins.\"\n");
    printf("You leave the potions vendor and go back to the middle of the marketplace.\n");
}
void vendorOfFood(){
    printf("You walk over to the food vendor.\n");
    printf("    \"Hello, I am Grelka the food vendor.\"\n");
    printf("    \"Hello, I am %s and this is my pet %s.\"\n",name,petName);
    printf("    \"Do you want to buy an apple pie for 10 coins?\"\n");
    printf("    \"Sorry, I don't have enough coins.\"\n");
    printf("You leave the food vendor and go back to the middle of the marketplace.\n");
}
//End 7
void stealItem(){
    printf("You steal a potion from Brand-Shei and you give it to Brynjolf.\n");
    printf("    \"Thank you for getting me this potion %s\"\n",name);
    printf("In return Brynjolf gives you the iron dagger he promised and you get to join the thieves guild.\n");
    printf("You learn how to use a bow, how to lockpick, and how to be stealthy.\n");
    printf("Over time you work your way up the ranks.\n");
    printf("Eventually you become the guild master the highest rank in the guild.\n");
    printf("You train new recruits to the guild and teach them what you know.\n");
    printf("You and %s grow old and leave the thieves guild and you die of old age.\n",petName);
    printf("Game Over\n");
}
//End 8
void doNothing(){
    printf("You leave the marketplace and go looking for a job.\n");
    printf("You get a job at the Bee and Barb inn.\n");
    printf("You eventually become in charge of the inn and you make the inn the world’s best inn and you get a special name tag saying %s.\n",name);
    printf("You spend the rest of your life in Riften with %s.\n",petName);
    printf("You grow old and have a family and then you die of old age.\n");
    printf("Game over\n");
}
//End 9
void turnInGuild(){
    printf("You turn in the thieves guild to the guard guarding the town.\n");
    printf("You go to the inn you saw when you entered Riften and get a room.\n");
    printf("Later that night, you hear a loud thud and you wake up.\n");
    printf("You see a shadowy figure standing at the of your bed.\n");
    printf("You look at the ground and you see %s dead.\n",petName);
    printf("You hear the shadowy figure whisper,\"Sorry %s.\"\n",name);
    printf("Before you can react in time the person standing at the end of your bed fires an arrow and hits your in the head.\n");
    printf("You died.\n");
    printf("Game Over\n");
}
int main(){
    askForRoadMap();
    if(showRoadMap == showRoadMap1){
        roadMap();
    }
        intro();
        vendor();
        if(petChoice == petChoice1){
            wolf();
        }
        if(petChoice == petChoice2){
            unicorn();
        }
        if(petChoice == petChoice3){
            dragon();
        }
        cityChoice();
        if(cityChosen == cityChosen1){
            Whiterun();
        if(rebelsChoice == rebelsChoice1){
            turnInRebels();
        }
        if(rebelsChoice == rebelsChoice2){
            doNotPickASide();
        }
        if(rebelsChoice == rebelsChoice3){
            joinRebels();
        }
    }
    if(cityChosen == cityChosen2){
        Riverwood();
        if(riverwoodChoice == riverwoodChoice1){
            becomeABlacksmith();
        }
        if(riverwoodChoice == riverwoodChoice2){
            becomeALumberjack();
        }
        if(riverwoodChoice == riverwoodChoice3){
            becomeAFisherman();
        }
    }
    if(cityChosen == cityChosen3){
        Riften();
        marketplace();
        if(vendorChosen == vendorChosen1){
            weaponsVendor();
            if(thievesGuildChoice == thievesGuildChoice1){
                    stealItem();
            }
            if(thievesGuildChoice == thievesGuildChoice2){
                    doNothing();
            }
            if(thievesGuildChoice == thievesGuildChoice3){
                    turnInGuild();
        }
    }
        if(vendorChosen == vendorChosen2){
            foodVendor();
            if(weaponsOrPotions == weaponsOrPotions1){
                weaponsVendor();
                if(thievesGuildChoice == thievesGuildChoice1){
                    stealItem();
                }
                if(thievesGuildChoice == thievesGuildChoice2){
                    doNothing();
                }
                if(thievesGuildChoice == thievesGuildChoice3){
                    turnInGuild();
                }
            }
            if(weaponsOrPotions == weaponsOrPotions2){
                vendorOfPotions();
                weaponsVendor();
                if(thievesGuildChoice == thievesGuildChoice1){
                    stealItem();
                }
                if(thievesGuildChoice == thievesGuildChoice2){
                    doNothing();
                }
                if(thievesGuildChoice == thievesGuildChoice3){
                    turnInGuild();
                }
            }
        }
        if(vendorChosen == vendorChosen3){
            potionsVendor();
            if(weaponsOrFood == weaponsOrFood1){
                weaponsVendor();
                if(thievesGuildChoice == thievesGuildChoice1){
                    stealItem();
                }
                if(thievesGuildChoice == thievesGuildChoice2){
                    doNothing();
                }
                if(thievesGuildChoice == thievesGuildChoice3){
                    turnInGuild();
                }
            }
            if(weaponsOrFood == weaponsOrFood2){
                vendorOfFood();
                weaponsVendor();
                if(thievesGuildChoice == thievesGuildChoice1){
                    stealItem();
                }
                if(thievesGuildChoice == thievesGuildChoice2){
                    doNothing();
                }
                if(thievesGuildChoice == thievesGuildChoice3){
                    turnInGuild();
                }
            }
        }
    }
if(showRoadMap == showRoadMap2){
    intro();
    vendor();
    if(petChoice == petChoice1){
            wolf();
        }
        if(petChoice == petChoice2){
            unicorn();
        } 
        if(petChoice == petChoice3){
            dragon();
        }
    cityChoice();
    if(cityChosen == cityChosen1){
        Whiterun();
        if(rebelsChoice == rebelsChoice1){
            turnInRebels();
        }
        if(rebelsChoice == rebelsChoice2){
            doNotPickASide();
        }
        if(rebelsChoice == rebelsChoice3){
            joinRebels();
        }
    }
    if(cityChosen == cityChosen2){
        Riverwood();
        if(riverwoodChoice == riverwoodChoice1){
            becomeABlacksmith();
        }
        if(riverwoodChoice == riverwoodChoice2){
            becomeALumberjack();
        }
        if(riverwoodChoice == riverwoodChoice3){
            becomeAFisherman();
        }
    }
    if(cityChosen == cityChosen3){
        Riften();
        marketplace();
        if(vendorChosen == vendorChosen1){
            weaponsVendor();
            if(thievesGuildChoice == thievesGuildChoice1){
                    stealItem();
            }
            if(thievesGuildChoice == thievesGuildChoice2){
                    doNothing();
            }
            if(thievesGuildChoice == thievesGuildChoice3){
                    turnInGuild();
        }
    }
        if(vendorChosen == vendorChosen2){
            foodVendor();
            if(weaponsOrPotions == weaponsOrPotions1){
                weaponsVendor();
                if(thievesGuildChoice == thievesGuildChoice1){
                    stealItem();
                }
                if(thievesGuildChoice == thievesGuildChoice2){
                    doNothing();
                }
                if(thievesGuildChoice == thievesGuildChoice3){
                    turnInGuild();
                }
            }
            if(weaponsOrPotions == weaponsOrPotions2){
                vendorOfPotions();
                weaponsVendor();
                if(thievesGuildChoice == thievesGuildChoice1){
                    stealItem();
                }
                if(thievesGuildChoice == thievesGuildChoice2){
                    doNothing();
                }
                if(thievesGuildChoice == thievesGuildChoice3){
                    turnInGuild();
                }
            }
        }
        if(vendorChosen == vendorChosen3){
            potionsVendor();
            if(weaponsOrFood == weaponsOrFood1){
                weaponsVendor();
                if(thievesGuildChoice == thievesGuildChoice1){
                    stealItem();
                }
                if(thievesGuildChoice == thievesGuildChoice2){
                    doNothing();
                }
                if(thievesGuildChoice == thievesGuildChoice3){
                    turnInGuild();
                }
            }
            if(weaponsOrFood == weaponsOrFood2){
                vendorOfFood();
                weaponsVendor();
                if(thievesGuildChoice == thievesGuildChoice1){
                    stealItem();
                }
                if(thievesGuildChoice == thievesGuildChoice2){
                    doNothing();
                }
                if(thievesGuildChoice == thievesGuildChoice3){
                    turnInGuild();
                }
            }
        }
    }
}
}
