# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)

## Added

- Many new unit names have been added for Germany, Soviet Union
- More than 18 Axis Units Near Warsaw From January 1941 (USSR->Allies) (50% Chance)
    - now alerts player with Popup when conditions are not met

## Changed

- Significant reformatting of various decision and popup messages to enhance readability and consistency.
- Removed hundreds of lines of junk comments across script files
- Updated/corrected existing comments
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


## Fixed

- 200+ typos and spelling errors
- Merged in changes / fixes from 1939 Storm Across Europe to include:
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
- Saudi Arabia Ends Diplomatic Relations With Germany changed to 1939/09/11
- AXIS AI: Germany Declares War On The USA
    - #BELLIGERENCE_CONDITION= [112,59] changed to #BELLIGERENCE_CONDITION= [112,45]
- DE 408 - USSR: Should Stalin Stay in Moscow to Lead its Defence? (AI - 75% Yes)
    - #DECISION= 407 changed to 408
- DE 650 - Germany: Wolfram Imports From Spain 
    - Now properly checks that Bordeaux is Axis
    - #ALIGNMENT_POSITION= 151,84 [1] changed to #ALIGNMENT_POSITION= 145,94 [1]
- DE 835 - UK: Pressure Greece To Sever Economic Ties With Germany?
    - #VARIABLE_CONDITION= 46 [1] [0] [0] changed to 46 [2] [10] [0]
- Turkey Signs Mutual Pact With France And Britain To Protect Neutrality
    - removed link to non-existent DECISION 999
- DE 114 - British Commandos Raid Spain - Coruña
    - now checks that Spain is Axis aligned
- DE 114 - Cockleshell Heroes: British Royal Marines Attack Shipping At Bordeaux
    - now checks that France has surrendered
- Crete Effect (Tobruk, Bardia, Sidi Barrani, Mersa Matruh, El Alamein, Alexandria)
    - updated to show tooltip when cursor is over Heraklion
- Soviet Bombers Operating From Crimea Attack The Ploesti Oil Fields In Romania
    - changed SOURCE_POSITION to Simferopol
- corrected DISPLAY_TURN for unit.txt events, such as:
    - DE 416 - USSR: Anti-Tank Units
        - DISPLAY_TURN=0 changed to 2
    - DE 645 - Germany: Anti-Tank Units
        - DISPLAY_TURN=0 changed to 1



