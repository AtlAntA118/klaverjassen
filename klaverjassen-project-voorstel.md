# Klaverjassen Online - Project Voorstel

## Concept
Een moderne web-based klaverjassen applicatie met zowel multiplayer als AI-modus, gehost onder waldstrjitte8.xyz.

## Core Features

### Gameplay
- Authentieke Nederlandse klaverjasregels (Amsterdams of Rotterdams)
- 4 spelers, 2 teams
- Troefkeuze, roem, en nat/verzaken detectie
- Automatische puntentelling

### Speelmodi
- **Solo vs AI**: 3 AI tegenstanders met instelbare moeilijkheid
- **Online Multiplayer**: Realtime spelen tegen anderen
- **Privé tafels**: Met vrienden via invite link

### UI/UX
- Responsive design (desktop + mobiel)
- Donker/licht thema
- Kaartanimaties
- Geluideffecten (optioneel)

## Technische Stack (voorstel)

| Component | Technologie | Reden |
|-----------|-------------|-------|
| Frontend | React + Vite | Snel, modern, goede state management |
| Styling | Tailwind CSS | Snelle iteratie, consistent design |
| Backend | Node.js + Express | JavaScript full-stack, WebSocket support |
| Realtime | Socket.io | Betrouwbare WebSocket library |
| Database | SQLite/PostgreSQL | Scores, gebruikers, spelgeschiedenis |
| AI | Browser-based JS | Geen server load voor solo games |
| Hosting | VPS of Cloudflare Pages + Workers | Bestaande infra |

## Fasering

### Fase 1 - MVP Solo
- Speelbare game tegen 3 AI spelers
- Basis UI met kaarten en tafel
- Puntentelling en roem

### Fase 2 - Polish
- Animaties en geluiden
- Responsive mobile layout
- Instellingen (regelvarianten, thema)

### Fase 3 - Multiplayer
- Lobby systeem
- Realtime synchronisatie
- Chat functie

### Fase 4 - Accounts & Persistence
- Optionele registratie
- Statistieken en leaderboards
- Vrienden systeem

## Beschikbare Tools in Claude

### Desktop Commander (MCP)
Claude heeft via Desktop Commander directe toegang tot het lokale bestandssysteem:
- Bestanden lezen, schrijven, bewerken
- Directories aanmaken en navigeren
- Shell commando's uitvoeren
- Processen starten en monitoren (npm, node, python, etc.)
- Zoeken in bestanden en code

### GitHub CLI (gh)
Claude kan via de geïnstalleerde `gh` CLI direct met GitHub werken:
- Repositories aanmaken, forken, clonen
- Issues aanmaken en beheren
- Pull requests maken
- Code pushen en pullen
- Repository instellingen wijzigen

GitHub account: **AtlAntA118**

### Google Drive & Calendar
- Bestanden zoeken en ophalen uit Google Drive
- Calendar events bekijken en beheren

### Web Search & Fetch
- Documentatie opzoeken
- Externe resources ophalen
- API docs raadplegen

### Artifacts
Claude kan direct werkende previews maken:
- React componenten (.jsx)
- HTML/CSS pagina's
- SVG graphics
- Mermaid diagrammen

## Assets nodig
- Kaartafbeeldingen (SVG voor schaalbaarheid)
- Tafel/achtergrond graphics
- UI icons
- Geluidseffecten

## Open vragen
- Amsterdams of Rotterdams als default? (of keuze)
- Gastspelers toestaan of alleen geregistreerde gebruikers?
- Monetisatie overwegingen? (ads, premium features)
- GitHub repo public of private?
