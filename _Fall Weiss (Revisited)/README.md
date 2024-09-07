# Fall-Weiss (Revisited)

This is a customized Strategic Command War In Europe 1939-1945 scenario that was originally based on Fall Weiss II (June 2023). I take no credit for that original body of work.

This is still a work in progress with an emphasis on:
- historical accuracy;
- while maintaining a sense of balance; and
- enjoyable game-play.

The original purpose of this project was solely to facilitate managing changes to the Event and AI scripts in order to address the overwhelming number of grammar, punctuation, event message formatting issues encountered.

However, the project has grown and diverged to the point of it becoming fundamentally different entirely.

## Significant Changes
- Core Scenario Data:
    - Units
        - Changes to [Unit Data](Documentation\UnitData.md); most notably -
        - Introduction of Dreadnought(WWI) ships to the represent the older class of Battleships, with rating moderately below that of a WWII Battleship in the ship vs ship arena.
        - Mountain Division stats changed from FWII
        - Light Cruisers have a nominal anti-sub rating
        - various unit name changes
        - updated initial Finnish deployments and force pool to be more inline with historic deployments
        - overall increase in ship build times
        - updated initial ship deployments, especially Germany / Italy
    - Map
        - Albania is considered annexed by Italy (similar to Libya)
            - Tirana now has a base supply of 8
        - Great Britain
            - New ports added to eastern Great Britain to support historic ship construction launch sites
- Scripts
    - Operation Weserübung (German Invasion of Norway)
        - this was to allow more random losses inflicted on the Kriegsmarine
    - Yugoslavian mobilization and subsequent Coup
    - a general toning down of new units added via events
    - many of the 100% trigger events changed to 90% as some level of randomness is more interesting
    - a number of the more 'fanciful' events deleted entirely (i.e. Soviets gaining control of the [Dardanelles](https://en.wikipedia.org/wiki/Dardanelles))
- fixes:
    - merging / incorporating fixes from the "1939 Storm Across Europe (July 2023) baseline scenario" [SOE Version Changes](Documentation\SOEVersionChanges.md)
    - as well as other fixes and enhancements

## Documentation
- Although not entirely comprehensive, a more complete list of changes exists here: [ChangeLog](Documentation\ChangeLog.md)
- Player Aids
    - [Turn Data](Documentation\TurnData.md)
    - [Capital Ships](Documentation\CapitalShips.md)
    - [Decision Graph](Documentation\Graphs\decision.gv.svg?sanitize=true)

