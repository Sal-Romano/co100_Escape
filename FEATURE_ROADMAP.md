# Escape Multiplayer - Feature Roadmap

## Current State (Stable)
- 100-player multiplayer with group system
- Per-group prison spawns with zombies, guards, war-torn skirmish
- DayZ building loot, vehicle hotwire, group-only revive
- Group wipe -> respawn cycle (no mission end)
- Original Escape systems intact: extraction, comm centers, intel, patrols, surprises

---

## Phase 1 - Extraction Overhaul (Priority: HIGH)

### 1.1 Competitive Extraction (Limited Seats)
The original extraction spawns 3 vehicles with enough room for everyone. In multiplayer with 100 players in 10+ groups, this needs rework:
- 2-3 extraction points active simultaneously (rotate every 20-30 min)
- Limited seats per vehicle (heli=8, boat=6, truck=12)
- When full, vehicle departs. New extraction activates elsewhere
- Groups near extraction hear audio cue (engine, radio)
- Natural PvP tension without forced deathmatch
- **Per-group extraction** - each group can extract independently

### 1.2 Multi-Stage Extraction
- Find radio + correct frequency to call extraction
- Defend LZ for 3 minutes while vehicle arrives
- Or repair a broken vehicle at extraction point
- Creates moments where groups cooperate or betray

### 1.3 Comm Center Rework for Multiplayer
Currently ONE comm center hack triggers extraction for everyone. Need:
- Each group must find and hack their own comm center
- Or: comm centers reveal extraction zones on the map (not trigger them)
- Extraction zones are always there, comm centers just reveal locations

---

## Phase 2 - Dynamic Events (Priority: HIGH)

### 2.1 Supply Drops
- Every 15-20 min, a crate parachutes down with high-tier loot
- Smoke/flare visible for 1km (draws multiple groups)
- AI patrol guards the drop zone
- Creates organic PvPvE convergence points

### 2.2 Helicopter Crashes
- Random heli crash with military-grade weapons
- AI QRF patrol arrives 2-3 minutes after crash
- Crash site has fire/smoke visible from distance

### 2.3 Convoy Ambush
- Enemy convoy on road network (supplies, ammo, vehicle)
- Successfully ambushing yields vehicles and weapons
- Failed ambush triggers massive AI response

### 2.4 Artillery Danger Zones
- Random grid squares become shelling zones for 5 min
- Forces movement, creates chaos

### 2.5 Zombie Hordes
- Random massive horde (50-100) migrates across map
- Players in path must flee or fight
- Hordes attracted to gunfire

---

## Phase 3 - Inter-Group Systems (Priority: MEDIUM)

### 3.1 Radio Communication
- Find radios as loot, tune to frequencies (1-99)
- Same frequency = hear other groups (proximity + radio)
- Scan action to eavesdrop on other frequencies
- Enemy AI monitors certain frequencies (risk vs reward)
- Built on CBA or custom channel system

### 3.2 Diplomacy
- Within 5m of other group: "Propose Trade", "Temporary Alliance", "Declare Hostile"
- Alliance = 30 min shared revive + no friendly fire
- Betrayal brands group as "Betrayers" for 20 min (visible to nearby players)

### 3.3 Bounty/Notoriety
- Kill other players = group marked on map (500m circle, updated every 5 min)
- Cooperative groups get "Trusted" status
- Deters griefing while making aggression a calculated risk

### 3.4 NPC Trader Safe Zones
- 2-3 neutral camps with barter traders
- No damage within 50m radius
- Trade rifles for medical, fuel for parts
- Item values fluctuate based on server-wide supply/demand
- Natural social hubs

---

## Phase 4 - Progression & Survival (Priority: MEDIUM)

### 4.1 Tiered Loot Zones
- Map edges = safe but low loot
- Center (military bases, airfields) = best gear, heavy AI
- Prisons spawn mid-tier
- Extraction at edges
- Creates natural player flow across map

### 4.2 Intel Progression
- Start with NO map knowledge
- Find documents/laptops to reveal: extraction locations, patrol routes, loot caches
- Intel becomes tradeable commodity
- Builds on existing intel system (fn_collectIntel already works)

### 4.3 Faction Disguises
- Find enemy uniforms to blend in
- AI won't shoot unless too close or you fire
- Trigger faction fights by planting evidence
- War-torn mode makes this especially powerful

### 4.4 Lightweight Survival
- Single condition bar (stamina/condition)
- Food/water resets it (common loot)
- Empty = 30% slower + double weapon sway
- Ravage already has hunger/thirst hooks

---

## Phase 5 - Map Portability (Priority: HIGH for longevity)

### 5.1 Auto-Port Tool
Currently porting requires:
- 200+ village marker positions (manually placed)
- 50+ comm center positions
- 10+ extraction markers (3 types)
- 4 critical named markers

Build a tool/script that:
- Auto-generates village markers from Arma's location database (`nearestLocations`)
- Auto-places comm centers at military buildings
- Auto-creates extraction markers at map edges (coast, borders)
- Generates WorldConfig.sqf from map metadata (worldSize, terrain)

### 5.2 Dynamic Marker Generation
Replace hardcoded marker arrays with runtime generation:
- Use `nearestLocations` for villages
- Use `nearestTerrainObjects` for military buildings
- Calculate extraction zones from map edges/coastline
- Store generated markers in profile for consistency

### 5.3 Spawn Menu Map Support
- Cities list in fn_spawnMenu.sqf is hardcoded for Chernarus
- Replace with `nearestLocations [center, ["NameCity","NameCityCapital"], worldSize]`
- Automatic for any map

---

## Phase 6 - AI/LLM Integration (Priority: EXPERIMENTAL)

Requires custom callExtension DLL on dedicated server. No client mods needed for text.

### 6.1 AI Radio Intercepts
- LLM generates dynamic enemy radio chatter based on game state
- Player finds radio, hears contextual intel about their position, enemy movements
- False leads mixed with real intel

### 6.2 Dynamic Mission Narration
- AI generates briefing text, situation reports, news broadcasts
- Based on actual game events (who died, what was captured, etc.)

### 6.3 NPC Dialogue
- Approach civilian, AI generates contextual conversation
- "I saw soldiers heading north 10 minutes ago"
- Based on actual AI patrol positions

### 6.4 AI Voice (Requires TTS API)
- Server calls ElevenLabs/OpenAI TTS, generates .ogg
- Enemy radio in Russian, command updates in English
- Pre-generate common phrases, dynamic for unique events

### 6.5 AI Game Master
- Replace Zeus with AI that monitors game state
- Adjusts difficulty, spawns events, creates narrative
- "Group Alpha is doing too well, send a helicopter"
- "Group Bravo hasn't found weapons yet, spawn a crash site nearby"

### Architecture
```
Arma 3 Server (SQF)
    | callExtension
    v
HTTP Extension DLL (Rust/C++)
    | HTTPS
    v
Claude API / ElevenLabs / etc.
    | Response
    v
DLL returns to SQF
    | remoteExec
    v
Players see/hear result
```

---

## Design Principles

- **Opt-in PvP** through scarcity (limited extraction seats, supply drops, bounties)
- **Information as currency** - radios, intel, map knowledge as valuable as weapons
- **Scarcity drives interaction** - limited vehicles, extraction seats, ammo
- **Every spawn is different** - variable zombies, random cities, war-torn skirmishes
- **Group independence** - each group's success/failure is their own
- **Map-agnostic core** - same engine, any map with proper marker setup
