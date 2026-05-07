# Escape Multiplayer - Technical Documentation

## Mission Flow Overview

```
Player connects -> Role Assignment -> Spawn Dialog -> Prison Spawn
    -> Escape -> Loot/Fight/Survive -> Find Comm Centers -> Hack
    -> Extraction Point Revealed -> Travel to Extraction
    -> Board Vehicle -> 35s Wait -> Mission Complete (or MIA)
    -> If all group downed: ESCAPE FAILED -> Respawn at new prison
```

## Win/Loss Conditions

| Condition | Result | Trigger |
|-----------|--------|---------|
| All players board extraction vehicle | SUCCESS (End2) | 35s after departure |
| Same + warcrime score > 1000 | WAR CRIME (End4) | Killed too many civilians |
| Some players left behind | MIA (End3) | Not all aboard extraction |
| All group members unconscious | GROUP WIPE | Respawn (mission continues) |

## Extraction System

3 extraction types selected dynamically:
- **Helicopter**: 3 transport helis + 1 escort
- **Boat**: 3 armed boats + 1 escort
- **Vehicle**: 3 cars/trucks + 1 escort

Triggered after communication center hack. Position selected based on param (Random/Close/Far) relative to last comm center, minimum 3200m distance.

### Extraction Markers Required (per map)
```
A3E_HeliExtractionPos[0-N]          Landing zones
A3E_HeliExtractionPos[0-N]_1        Secondary positions
A3E_HeliExtractionSpawnPos[0-N]     Heli spawn (offset from LZ)
A3E_BoatExtractionPos[0-N]          Boat zones
A3E_BoatExtractionSpawnPos[0-N]     Boat spawn
A3E_CarExtractionPos[0-N]           Vehicle zones
A3E_CarExtractionSpawnPos[0-N]      Vehicle spawn
```

## Objectives / Points of Interest

| Type | Default Count | Placement | Reward |
|------|--------------|-----------|--------|
| Communication Centers | 5 | From 50+ predefined markers, 3200m apart | Reveals extraction |
| Ammo Depots | 10 | Random flat area, 4-quadrant distribution | Weapons/ammo/explosives |
| Motor Pools | 0-5 (map size) | From comm center markers | Military vehicles |
| Mortar Sites | 1-2 | Random | Artillery units |
| Crash Sites | 10-15 | Random flat area | Loot/supplies |

POIs use template system - random visual layout per spawn (5+ templates each).

## Enemy AI Systems

### Village Patrols
- 348 predefined village zones on Chernarus
- Dynamic patrol count: `density * sqrt(villageArea)`
- Civilian strollers for atmosphere
- Zones activate/deactivate based on player proximity

### Military Traffic
- Vehicles on road network with AI drivers
- Density scales with enemy frequency param

### Search Leader (Player Detection)
```
Enemy spots player -> recordSighting -> createKnownPosition
    -> EngageReportedGroup -> Nearby groups attack
    -> Chronos dispatches: chopper (45-75min), motorized (20-80min)
    -> Civilians report to HQ if detected
```

### Surprise Events (Chronos Scheduler)
| Event | Timing | Description |
|-------|--------|-------------|
| Drop Chopper (OPFOR) | 5-60 min | 4-8 soldiers paradrop |
| Drop Chopper (IND) | 5-60 min | 4-8 soldiers paradrop |
| Search Chopper | 45-75 min | Armed helicopter |
| Search Drone | 5-35 min | Recon UAV |
| Leaflet Drone | 5-35 min | Propaganda UAV |
| Motorized Search | 20-80 min | Road-mobile squad |
| Reinforcement Truck | 10-40 min | Supply truck + guards |
| Civilian Enemy | 1-2 min | Disguised soldier in car |

Timing formula: `baseTime + randomTime * (0.5 + (4 - enemyFreq) / 4)`

## Intel System

- Enemies have `A3E_Param_IntelChance` (5-50%) to carry intel documents
- Collecting intel reveals random unrevealed POI on map
- Marker types: CommCenter=o_hq, MotorPool=o_service, AmmoDepot=o_installation
- Controlled by `A3E_Param_RevealMarkers` (always/hidden/discovery/never)

## Map Porting Requirements

### Required Files (per map)
1. `Island/WorldConfig.sqf` - map constants (distances, counts)
2. `Island/VillageMarkers.sqf` - 200+ village zone positions
3. `Island/CommunicationCenterMarkers.sqf` - 50+ comm center positions
4. Mission.sqm markers:
   - `drn_searchAreaMarker` (search bounds)
   - `drn_insurgentAirfieldMarker` (fallback extraction)
   - `drn_russianSearchChopperStartPosMarker` (chopper spawn)
   - `drn_dropChopperStartPosMarker` (drop chopper spawn)
   - Extraction point markers (3+ types, see above)
   - Optional: `A3E_ExclusionZone_*` markers

### What's Map-Agnostic (no changes needed)
- Core mission logic (fn_missionFlow, fn_initServer)
- Spawning algorithms (find flat area, quadrant distribution)
- Revive system, group system, wipe handling
- Building loot, prison vehicles, hotwire
- All UI (spawn dialog, black screen, badges)
- Chronos scheduler and surprise events

## Mission Parameters

### Difficulty
- Enemy Skill: Cadet/Easy/Normal/Hard/Extreme
- Enemy Squad Size: Fixed (2-9) or Dynamic (player ratio)
- Enemy Spawn Distance: 500m/800m/1200m
- Village Patrol Density: Low/Medium/High

### Gameplay
- Intel: on/off, 5-50% chance, marker reveal mode
- Vehicle Lock: None/Armed/All
- Artillery: 0.5x/1x/2x
- War-Torn: factions fight each other
- Extraction: Random/Close/Far
- Building Loot: on/off, Scarce/Normal/Abundant
- NVG/TWS restriction

### Environment
- Time: specific hour, random, daytime, nighttime
- Time multiplier: 1:1 to 1:36
- Weather: clouds, fog, wind, rain (random or specific)
- Grass render distance

## Multiplayer-Specific Systems (our additions)

- 100 prisoner slots (CUP_B_USMC_Soldier)
- Per-group prison spawns with zombies and war-torn skirmish
- Group-only revive (fn_Check_Revive.sqf)
- 3D group badges (fn_groupBadges.sqf)
- Group wipe -> individual respawn (no mission end)
- DayZ building loot with parameter control
- Vehicle hotwire mechanic
- GUI black screen overlay (unbreakable)
- Spawn protection (HandleDamage guard)
- Garbage collector (2km radius)
- Zeus auto-assign with 30s object sync
