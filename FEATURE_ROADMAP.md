# Escape Multiplayer - Feature Roadmap

## Phase 1 - Core Loop (Do First)

1. **Competitive Extraction (Limited Seats)** - 3-4 extraction points rotate on timers. Helicopter 8 seats, boat 6. Full = leaves, new one elsewhere. Natural PvP tension.

2. **Dynamic World Events** - Every 10-20 min: supply drops (smoke 1km), heli crashes, convoy ambush, artillery zones. Multiple groups converge = organic PvPvE.

3. **Tiered Loot Zones** - Map edges safe/low loot, center (mil bases) best gear/heavy AI. Prisons mid-tier. Extraction at edges. Natural player flow.

4. **Radio Communication** - Find radios as loot, tune frequencies 1-99. Same freq = hear other groups. Scan to eavesdrop. Enemy AI monitors some frequencies.

## Phase 2 - Social Layer

5. **Inter-Group Diplomacy** - Within 5m: "Propose Trade", "Temporary Alliance" (30min shared revive), "Declare Hostile". Betrayal brands group 20min.

6. **Bounty/Notoriety** - Kill other players = marked on map (500m circle). Cooperative groups get "Trusted" status.

7. **NPC Trader Safe Zones** - 2-3 neutral camps, barter system. No damage 50m radius. Trade rifles for medical, fuel for parts.

8. **Intel Progression** - No map knowledge at start. Find documents/laptops to reveal extraction, patrol routes, caches. Intel tradeable.

## Phase 3 - Polish

9. **AI Escalation** - Enemy reacts per grid square. Loud groups draw reinforcements/armor/choppers. Quiet groups slip through.

10. **Faction Disguises** - Find enemy uniforms to blend in. AI ignores unless too close or you fire. Trigger faction fights.

11. **Multi-Stage Extraction** - Call heli via radio, defend LZ 3 min, or repair boat. Incentivizes alliances.

12. **Vehicle Scarcity + Degradation** - Tires/engine as loot. Repairs make noise. Shoot tires to disable.

13. **Player Stashes** - Backpack + shovel = hidden cache. Persists for session. Others can stumble on it.

14. **Session Persistence** - Looted buildings stay looted, wrecked vehicles stay. World depletes over 3-4 hour rounds.

15. **Lightweight Survival** - Single condition bar. Food/water resets it. Empty = slow + weapon sway.

## AI/LLM Integration (Requires Server DLL)

- AI Radio Intercepts - LLM generates enemy chatter based on game state
- Dynamic Mission Narration - AI generates briefings, sitreps
- NPC Dialogue - Contextual civilian conversations
- AI Voice - TTS API for enemy radio in Russian
- AI Game Master - Replaces Zeus, adjusts difficulty dynamically
- Architecture: SQF -> callExtension -> DLL -> Claude API -> response -> remoteExec to clients
- Server-side only, NO client mod needed for text. Voice needs client mod or pre-generated library.

## Design Principles

- **Opt-in PvP** through scarcity (limited seats, supply drops, bounties) not forced deathmatch
- **Information as currency** - radios, intel, map knowledge as valuable as weapons
- **Scarcity drives interaction** - limited vehicles, extraction seats, ammo force groups out of isolation
- **All pure SQF** - no client mods needed except for AI voice lines
