| <!--     --> | <!--                     --> |
| ------------ | ---------------------------- |
| **Author:**  | Dorian Gray II               |
| **Email:**   | doriangray_thatsme@yahoo.com |
| **Date:**    | September 9, 2024            |
| **Version:** | 0.9.0                        |

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
        - Introduction of Dreadnought(WWI) ships to represent the older class of Battleships, with rating moderately below that of a WWII Battleship in the ship vs ship arena.
        - Mountain Division stats changed from FW II
        - Light Cruisers have a nominal anti-sub rating
        - Various historic unit names have been added
        - Updated initial Finnish deployments and force pool to be more inline with historic deployments
        - Overall increase in [Naval Production Delays](Documentation\NavalProductionDelays.md)
        - A change in some of the [Naval Unit Build Data](Documentation\NavalUnitBuildData.md) and/or initial Naval Unit deployments.
        - Various ships were removed from event scripts and added to the Country Production Queue instead
    - Map
        - Albania is considered annexed by Italy (similar to Libya)
            - Tirana now has a base supply of 8
        - Great Britain
            - New ports added to eastern Great Britain to support historic ship construction launch sites
                - New Castle Port(144,67)
                - Hull Port(146,70)
- Scripts
    - Operation Weserübung (German Invasion of Norway)
        - this was to allow more random losses inflicted on the Kriegsmarine
    - Yugoslavian mobilization and subsequent Coup
    - A general toning down of new units added via events
        - Various Tank and Infantry Corps changed to their historic Divisions where appropriate
        - No Tank Army is added via any script event
        - Afrika Korps and Western Defense Force notably toned down
    - many of the 100% trigger events changed to 90% as some level of randomness is more interesting
    - a number of the more 'fanciful' events deleted entirely (i.e. Soviets gaining control of the [Dardanelles](https://en.wikipedia.org/wiki/Dardanelles))
- fixes:
    - merging / incorporating various fixes from the [1939 Storm Across Europe (July 2023) Scenario](Documentation\SOEVersionChanges.md)
    - as well as other fixes and enhancements

## Documentation
- Although not entirely comprehensive, a [more complete list of changes](Documentation\ChangeLog.md)
- Player Aids
    - [Historical References and Background Documentation](Documentation\HistoricNotes.md)
    - [Turn Data](Documentation\TurnData.md)
    - [WWII Capital Ships](Documentation\CapitalShips.md) (still a work in progress...)
    - [Unit Data](Documentation\UnitData.md)
    - [Decision Dependency Graph](https://github.com/DorianGrayII/Fall-Weiss/blob/90cc12b325234a3f06e90c2e8e17107125f8b587/_Fall%20Weiss%20(Revisited)/Documentation/Graphs/decision.gv.svg?sanitize=true)
