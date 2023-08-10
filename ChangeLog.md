# Changelog
All notable changes (from baseline Fall Weiss II WIE - 11 Beta (June 4, 2023)) will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)

## Added

- Many new unit names have been added for Germany, Soviet Union
- "More than 18 Axis Units Near Warsaw From January 1941" ([mobilization_2.txt])
    - now alerts player with "The USSR grows uneasy over the build up of Axis troops along its Polish border" when unit number is exceeded
- Added display of warning map symbols for Warsaw Garrison when player is close to exceeding 18 units on Polish Border
    - "German/Soviet Front Garrison Update Map Symbols 1941 (0-3 units)" ([popup.txt])
    - "German/Soviet Front Garrison Update Map Symbols 1941 (4 units)" ([popup.txt])
    - "German/Soviet Front Garrison Update Map Symbols 1941 (16 units)" ([popup.txt])
- Added Turkish hostile reactions should the Soviets forcibly occupy the Turkish straits
    - "DE 970 - USSR Forcibly Occupies Turkish Straits (Turkey->>Axis)" ([mobilization_3.txt])
- Added Clodius Trade Agreement via Greece where Greece joins Axis in lieu of Bulgaria
    - "DE 681 - Germany: Chrome Imports From Turkey (via Greece)" ([decision.txt])
    - "DE 961 - Germany and Turkey Trade Agreement" ([mobilization_3.txt])
- Added "DE 907 - Germany and Spain Wolfram Mine Development Agreement"

## Changed

- Script file content:
    - Significant reformatting & editing of various decision and popup messages to enhance readability and consistency (ongoing)
    - Updated event names to include "DE xxx" where appropriate
    - Addressed missing event #LINKs (i.e. #DECISION number does not exist)
    - Addressed #DECISION/#LINK number conflicts
        - A few #DECISION numbers have been changed or corrected
    - 200+ typos and spelling errors corrected
    - Removed unreadable characters throughout event text files
    - Removed hundreds of lines of junk comments across script files, many containing completely false, confusing or irrelevant statements (ongoing)
    - Updated/Fixed Research descriptions ([localization.txt])
    - Updated/corrected existing comments (ongoing)
        - Added country ids for easy reference, where appropriate
            - Germany -> Germany(45)
        - Added city names and/or map coordinates, where appropriate
            - Prague -> Prague(175,81)
    - Updated/corrected event file header Usage Descriptions
    - Many of the event files have gone through a custom sorting algorithm that re-orders the content of the file based on #DECISION number or #LINK number
        - This enhances the UI experience from the in-game Script Selection dialog.
        - Additionally, it just makes things significantly easier to find and identify scripting issues.

- Game features:
    - Neutral Italy can now pass through straits of Gibraltar
    - Axis Coastal Raiding/Shipping scripts apply to all Axis raiders

    - DE 116 - Portugal Leases the Azores to the UK (Portugal->Allies)
        - now requires Portugal be Allied Aligned 30%
    - DE 800 - The Anglo-Portuguese Alliance
        - now requires Portugal be Allied Aligned 30%
    - DE 805 - UK Strengthens Portugal
        - now requires Portugal be Allied Aligned 10%
    - DE 803 - UK Threatens To Blockade Imports To Spain
        - now requires Portugal be Axis aligned 20%
        - now requires Spain be Axis aligned 20%
    - DE 803 - UK Threatens To Blockade Imports To Spain
        - now requires Spain be Axis aligned 20%
    - DE 908 - Spanish Debt Repayment
        - now requires Spain be Axis aligned
    - DE 910 - Treaty of Friendship (Turkey)
        - now requires Turkey be Axis aligned
    - DE 911 - Germany and Turkey Trade Agreement
        - now requires Turkey be Axis aligned
    - DE 813 - Allies Exert Diplomatic Pressure To Stop Swedish Convoys
        - now requires Sweden be Axis aligned 20%
    - DE 922 -  Germany: Imports From Switzerland
        - now requires Switzerland be Axis aligned
    - "Malta limits Axis supply in the Mediterranean" has been split-up into the following:
        - "Malta Effect (Tripoli, Sirte, El Agheila, Benghazi, Derna) (15% Chance)"
        - "Malta Effect (Derna, Msus, Mekili, Gazala) (15% Chance)"
        - "Malta Effect (Tobruk, Alexandria, Port Said) (20% Chance)"
        - "Malta Effect (Bardia, Sidi Barrani, Mersa Matruh, El Alamein) (20% Chance)"

- Scenario Data:
    - Albania(3) annexed by Italy(59)
        - control of all Albanian hexes given to Italy (same as was originally done for Libya)
    - Research Techs(Infantry, Armored, Aerial, Naval & Ballistic Warfare) that previously gave +5% morale bonus, now give +10%
    - Research Tech(Armored Warfare) gives +5% morale bonus to Mech Div, Mech Corps (previously +10% after adjustment above)
    - Research Tech(Infantry Warfare) gives +5% morale bonus to Mech Div, Mech Corps (previously +0%)
    - Research Tech(Aircraft Production) now give +0.5 build limit to Tactical & Maritime Bombers.
    - Mountain Div adjusted to be more comparable with an *elite* Infantry Div rather than a Cavalry Div clone (see - [UnitData.md])
        - Arty, Rocket & Lt Armor Attack +1 (0->1) (equal to Inf Div)
        - AC Attack -2 (4->2) (equal to Inf Div)
        - Naval Attack -1 (3->2)  (1 > than Inf Div)
        - Hard, Lt Armor & Carrier Defense +1 (0->1) (equal to Inf Div)
        - 50% of Mountain Terrain bonus now applies to Hill Terrain
    - Mech Div +1 Hard, +1 Lt Armor Attack (1->2), +1 Tank Attack (0->1) (for comparison, Mech Corp have 3 HA, 3 LAA, 3 TA)
    - Coastal Gun +1 Naval Defense (0->1)
        - This change was also made to all scenarios as part of most recent SC3 patch (July 2023)
    - Italy +1 Maritime Bomber build limits (1->2) (equal to UK) (historically, Italy had a significant number of torpedo / naval aircraft)
    - Romania +1 Tactical Bomber build limits (0->1) (equal to Spain) (historically, Romania had a number of ground support aircraft)
    - German +2 Light Cruiser build limits (0->2) (for comparison, USSR can build 6!)

## Fixed

- Merged in many changes / fixes from 1939 Storm Across Europe (July, 2023) from ([SOE VERSION CHANGES.txt]) to include:
    - The cost of Anti-Aircraft Defense research reduced from 125 to 110 MPPs
    - Anti-Tank research has been reduced from 150 to 125 MPPs for the USSR and Germany, and from 100 to 95 MPPs for all other countries (Mithrilotter)
    - Anti-Air units’s Strat. Bomber attack and defense values now increase by 1.5 per level of Anti-Aircraft Defense research (HarrySmith)
    - Change the river at Kherson (211,90) to use Major River tile 316 and 561 for the river mouth (Radar8717).
    - DE 601 will now trigger the deployment of a German Garrison unit in Copenhagen (OxfordGuy3).
    - Soviet Winter can now lead to the loss of Axis units if they are at low strength.
    - American Public Opinion Moves Against Entering The War (USA->Axis)
        - now uses correct coords for Ferrol
    - DE 104 - Pro-Allied Coup In Yugoslavia (Yugoslavia->Allies)
        - split across 3 events, each with 33% chance
    - Dummy Decision DE 500 added to allow historical Pop Up messages of events during the war to be easily turned OFF by going to Options -> Advanced -> Scripts -> Decision. It is the first one in the list, and unticking the box on the right will mean that 95% of the messages that are only there for historical flavor, won't appear. A small number are tied into other Decision Events to ensure they only appear at the correct time, so they will still appear (Garrison Moratto).
    - Changed the terrain to numbers 147 and 498 in hexes 190,13 and 191,12 respectively, as well as changing 191,13 to be a fully land hex, to enable rail traffic to pass to and from Alta in Norway (Scottydawg).
    - Deleted the forest in hex 198,89 to avoid confusion as it couldn't be easily seen (mdsmall).
    - All Decision Events (DE 306; 353 and 454) relating to the US sending supplies to the USSR via Persia now require all road hexes between Bandar Abbas and Baku to be in Allied hands (Hobbygeneral).
    - DE 601 - Garrison Unit In Copenhagen
        - previously missing
    - DE 102 - UK: Deploy 7th Armoured In Egypt Or The UK?
        - additional check that Alexandria is Allied
    - DE 151 - UK: Allies Liberate Paris Helper
        - additional check that Paris is Axis controlled
        - remove check that Axis unit in Paris
    - The following National Morale scripts now require Perm rather than Moscow to be in Allied hands to fire (BigJohn):
        - Soviet Morale Improves As The War On The Eastern Front Continues
        - Soviet Morale Improves As The War On The Eastern Front Continues (Continuous)
        - USSR Morale Boosted From Allied Landings In France
        - USSR Morale Boosted From Allied Landings In Italy
        - Soviet Morale Is Boosted As Allied Forces Approach Berlin
    - Removed the duplicated Mobilization_1 script Allies DoW On Tunisia (USA->Axis) ([mobilization_1.txt])
    - Saying yes to DE 103 reduces the % sent by convoy from Egypt & Iraq from 80% to 65%, as does saying no to DE 105 and yes to DE 164 (Duedman) ([convoy.txt])
    - ... and more ...

- Operation Countenance
    - Was only partially implemented and linked incorrectly to wrong or non-existent events
    - Re-implemented using DEs 312 through 318
- "Saudi Arabia Ends Diplomatic Relations With Germany" ([mobilization_3.txt])
    - #DATE changed to 1939/09/11 (historical date)
- "Germany Declares War On The USA" ([belligerence.txt])
    - #BELLIGERENCE_CONDITION= [112,59] changed to [112,45]
    - UK-Italy at War to UK-Germany
- "USSR Enters War With Italy" ([belligerence.txt])
    - #BELLIGERENCE_CONDITION= [112,45] changed to [112,59]
    - UK-Germany at War to UK-Italy
- "Italy Declares War On The Allies (USA)" ([belligerence.txt])
    - #BELLIGERENCE_CONDITION= [116,45] changed to [115,45]
    - USSR-Germany at War to USA-Germany
- "DE 408 - USSR: Should Stalin Stay in Moscow to Lead its Defence?" ([decision.txt])
    - #DECISION= 407 changed to 408
    - 407 was incorrect and caused linked events to never trigger
- "DE 650 - Germany: Wolfram Imports From Spain" ([decision.txt])
    - Now properly checks that Bordeaux(145,94) is Axis
    - #ALIGNMENT_POSITION= 151,84 [1] changed to 145,94 [1]
- "DE 835 - UK: Pressure Greece To Sever Economic Ties With Germany?" ([decision.txt])
    - #VARIABLE_CONDITION= 46 [1] [0] [0] changed to 46 [2] [10] [0]
    - Greece would have to be at least leaning Allied before Allies would have any influence
- "Turkey Signs Mutual Pact With France And Britain To Protect Neutrality"
    - removed link to non-existent DECISION 999
- "DE 114 - British Commandos Raid Spain - Coruña"
    - now checks that Spain is Axis aligned
- "DE 114 - Cockleshell Heroes: British Royal Marines Attack Shipping At Bordeaux"
    - now checks that France has surrendered
- "Crete Effect (Tobruk, Bardia, Sidi Barrani, Mersa Matruh, El Alamein, Alexandria)" ([popup.txt])
    - updated to show tooltip when cursor is over Heraklion
- "Soviet Bombers Operating From Crimea Attack The Ploesti Oil Fields In Romania"
    - changed SOURCE_POSITION to Simferopol
    - was impossible to launch bombers while Sevastopol was under seige
- corrected incorrect #DISPLAY_TURN for events that had '#PRIVATE= 1' ([unit.txt])
such as:
    - DE 416 - USSR: Anti-Tank Units
        - DISPLAY_TURN=0 changed to 2
    - DE 645 - Germany: Anti-Tank Units
        - DISPLAY_TURN=0 changed to 1
- Fixed "Derna(191,120) is getting hit twice in Malta supply interdiction scripts" 
    - (see - https://www.matrixgames.com/forums/viewtopic.php?f=10647&t=396958)
- Fixed "Incorrect #LINK= in German/Soviet Garrison Reports" 
    - (see - https://www.matrixgames.com/forums/viewtopic.php?f=10647&t=397073)
- Fixed "events linked to a non-existent DECISIONs" 
    - (see - https://www.matrixgames.com/forums/viewtopic.php?f=10647&t=396845 & https://www.matrixgames.com/forums/viewtopic.php?f=10647&t=396893)

[//]: # (These are reference links used in the body of this file)
[localization.txt]: ./_Fall%20Weiss%20II%20-%20WIE%2011.0%20beta/localization.txt
[UnitData.md]: ./_Fall%20Weiss%20II%20-%20WIE%2011.0%20beta/Notes/UnitData.md
[SOE VERSION CHANGES.txt]: ./_Fall%20Weiss%20II%20-%20WIE%2011.0%20beta/Notes/SOE%20VERSION%20CHANGES.txt
[belligerence.txt]: ./_Fall%20Weiss%20II%20-%20WIE%2011.0%20beta/Scripts/Events/belligerence.txt
[popup.txt]: ./_Fall%20Weiss%20II%20-%20WIE%2011.0%20beta/Scripts/Events/popup.txt
[convoy.txt]:./_Fall%20Weiss%20II%20-%20WIE%2011.0%20beta/Scripts/Events/convoy.txt
[decision.txt]: ./_Fall%20Weiss%20II%20-%20WIE%2011.0%20beta/Scripts/Events/decision.txt
[unit.txt]: ./_Fall%20Weiss%20II%20-%20WIE%2011.0%20beta/Scripts/Events/unit.txt
[mobilization_1.txt]: ./_Fall%20Weiss%20II%20-%20WIE%2011.0%20beta/Scripts/Events/mobilization_1.txt
[mobilization_2.txt]: ./_Fall%20Weiss%20II%20-%20WIE%2011.0%20beta/Scripts/Events/mobilization_2.txt
[mobilization_3.txt]: ./_Fall%20Weiss%20II%20-%20WIE%2011.0%20beta/Scripts/Events/mobilization_3.txt
[mobilization_4.txt]: ./_Fall%20Weiss%20II%20-%20WIE%2011.0%20beta/Scripts/Events/mobilization_4.txt
[strength.txt]: ./_Fall%20Weiss%20II%20-%20WIE%2011.0%20beta/Scripts/Events/strength.txt
[supply.txt]: ./_Fall%20Weiss%20II%20-%20WIE%2011.0%20beta/Scripts/Events/supply.txt
[territory.txt]: ./_Fall%20Weiss%20II%20-%20WIE%2011.0%20beta/Scripts/Events/territory.txt