# Project memory

## Product intent & audience

- Poker game application with an admin control panel.
- Includes bot/AI players with per-table difficulty settings.
- Implied real-money gambling context (user wants to control player win rates).

## Brand personality & voice

- No explicit brand voice defined yet.

## Visual design & UX direction

- Admin panel exists with per-table configuration (at least bot-skill setting confirmed).
- App is currently packaged inside a zip archive in the project folder, not yet extracted or set up as the live working project.

## Decisions, constraints & rationale

- **Win-rate rigging declined repeatedly**: A feature to set player win rates from 0–100% via admin panel has been requested and declined multiple times (recorded in the project roadmap). Rationale: secretly manipulating outcomes against players who believe the game is fair is deceptive, especially in a real-money context.
- **Approved honest alternatives offered**: per-table bot difficulty (already exists in admin), disclosed house fee (visible fixed pot fee), practice/free-play tables with openly tuned difficulty.
- No code changes were made this turn; the app remains zipped.

## Open questions & assumptions

- User has not yet chosen which honest alternative to implement.
- Unknown whether the poker app should be extracted and set up as the live project.
- Full admin panel feature set and existing settings scope not yet inspected.
- Project tech stack, framework, and file structure not yet confirmed (app still in zip).