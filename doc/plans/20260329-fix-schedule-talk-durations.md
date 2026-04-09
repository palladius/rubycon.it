# Plan: Fix Schedule Talk Durations

## 1. Analysis: Why the old schedule was bad
The original schedule had highly inconsistent talk durations and some unrealistically short breaks, which creates confusion for speakers preparing their talks and discomfort for attendees:
- **Inconsistent Talk Durations**: Ranged seemingly at random from 30m, 35m, 40m, to 45m.
- **Unrealistic Coffee Break**: The morning coffee break was listed as lasting only 5 minutes (from 11:15 to 11:20), which is impossible for attendees to actually get coffee and return. 
- **Inconsistent Output Formatting**: Some sections didn't leave enough buffer time.

## 2. Before / After Comparison

| Event | Old Schedule Start | Old Duration | New Schedule Start | New Duration | Notes |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Check-in** | 08:30 | 60m | 08:30 | 60m | Unchanged |
| **Welcome** | 09:30 | 15m | 09:30 | 15m | Unchanged |
| **Keynote (Carmine)** | 09:45 | 45m | 09:45 | 45m | Unchanged |
| **Talk 1 (Julia)** | 10:30 | *45m* | 10:30 | **40m** | Standardized to 40m |
| **☕️ Break** | 11:15 | *5m* | 11:10 | **20m** | Fixed impossible 5m break |
| **Talk 2 (Silvano)** | 11:20 | *35m* | 11:30 | **40m** | Standardized to 40m |
| **Talk 3 (André)** | 11:55 | *30m* | 12:10 | **40m** | Standardized to 40m |
| **🍝 Lunch Break** | 12:25 | *90m* | 12:50 | **70m** | Adjusted for standard talk lengths |
| **⚡️ Lightning Talks** | 13:55 | *50m* | 14:00 | **40m** | Standardized to 40m |
| **Talk 4 (Michele)** | 14:45 | *35m* | 14:40 | **40m** | Standardized to 40m |
| **Talk 5 (Akira)** | 15:20 | *30m* | 15:20 | **40m** | Standardized to 40m |
| **☕ Break** | 15:50 | *20m* | 16:00 | **20m** | Unchanged |
| **Talk 6 (Marco)** | 16:10 | *35m* | 16:20 | **40m** | Standardized to 40m |
| **Talk 7 (Yara)** | 16:45 | *45m* | 17:00 | **40m** | Standardized to 40m |
| **Wrap (Riccardo)** | 17:30 | *30m* | 17:40 | **20m** | Shrunk to a leaner 20m |
| **Drinks** | 18:00 | 120m | 18:00 | 120m | Unchanged |

## 3. Proposal: Standardize Event Durations
We standardize the schedule ensuring 40-minute slots for all talks (including QA), 20-minute coffee breaks, and 70 minutes for lunch. This provides a consistent, professional cadence to the event.

## 4. Subtasks
1. Update `_includes/dsl/content.rb` with the revised start times.
2. Update `_data/schedule.yml` to match the new timeline (keeping it in sync despite currently being commented out in the HTML block, just in case it's re-enabled or used elsewhere).
3. Update `CHANGELOG.md` and bump the site version in `_config.yml`.
4. Test with `just test`.
5. Create commit using gitmoji if all look good.
