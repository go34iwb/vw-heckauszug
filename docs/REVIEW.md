# VW T6 Heckauszug - Technische Review

**Datum:** 13. September 2026
**Basis:** CONTEXT.md, DECISIONS.md, TODO.md
**Status:** Review der Planung (HTML-Zeichnung noch nicht erstellt)

---

## 1. Dimensionsketten-Konsistenz (Horizontal)

| Item | Spezifikation | Berechnung | Status |
|------|---------------|------------|--------|
| Modul 1 Breite | 310 mm | - | OK |
| Modul 2 Breite | 500 mm | - | OK |
| Modul 3 Breite | 310 mm | - | OK |
| Summe Modul-Breiten | 1120 mm | 310+500+310 | OK |
| Profilstärke (4x vertikal à 20mm) | 80 mm | 4 × 20mm | OK |
| **Gesamt** | **1200 mm** | 1120 + 80 | ✅ **PASS** |

**Dimensionsketten-Tiefe (nach hinten) bzw. Seitenansicht**
- Vorne: vertikales Bosch Profil (Höhe 550 mm, Breite/Tiefe 40 mm) direkt vor den Euroboxen.
- Euroboxen: Breite/Tiefe 600 mm, liegen vertikal direkt aufeinander; vorne und hinten jeweils ein vertikales Bosch Profil (gleiche Abmessungen wie vorne).
- Unter den Euroboxen: Brett (Länge 600 mm) liegt auf einem U‑Profil; das Brett ist vorne und hinten mit den vertikalen Bosch Profilen abgeschlossen.
- Das U‑Profil enthält in seiner Nut eine eingeklappte Bierbank (Bierbank‑Führung).
- Befestigung: Das Brett wird auf das U‑Profil geschraubt; die U‑Profile sind direkt an die Auszüge montiert (U‑Profil dient nur als Bierbank‑Führung und Brett‑Montagelösung).

**Zum 12. Punkt (erforderliche Korrekturen): hier ist es die Option E: Brett auf U‑Profil montieren; U‑Profile im Querschnitt sind direkt an die Auszüge montiert (U‑Profil nur als Bierbank‑Führung und Brett‑Montagelösung)**


**Bemerkung:** Die 4 vertikalen Profile (2 links, 2 rechts) zu je 20mm Stärke addieren 80mm. 1120 + 80 = 1200mm gesamt. **Konsistent.**

---

## 2. Dimensionsketten-Konsistenz (Vertikal)

### Modul 1 & 3 (Standard mit U-Profilen)
| Layer | Höhe | Kumulativ |
|-------|------|-----------|
| Basis-Profil (hochkant 20x40) | 20 mm | 20 mm |
| U-Profil | 70 mm | 90 mm |
| Brett (15mm) | 15 mm | 105 mm |
| Luft bis Oberrahmen | 445 mm | 550 mm |
| Oberrahmen-Profil | 20 mm | 570 mm |
| **Gesamthöhe** | **590 mm** | 590 mm |

✅ **PASS** - Schließt exakt auf 590mm.

### Modul 2 (Kühlbox-Drop)
| Layer | Höhe | Kumulativ |
|-------|------|-----------|
| Basis-Profil (hochkant 20x40) | 20 mm | 20 mm |
| Brett (15mm, tiefergelegt) | 15 mm | 35 mm |
| Luft bis Oberrahmen | 515 mm | 550 mm |
| Oberrahmen-Profil | 20 mm | 570 mm |
| **Gesamthöhe** | **590 mm** | 590 mm |

✅ **PASS** - Schließt exakt auf 590mm.

---

## 3. Schwerlastauszug-Montage & Freiraum (KRITISCH)

### Problem: Höhenkonflikt Modul 1 & 3
```
Spezifikation CONTEXT.md:
- Schwerlastauszüge: 53mm hoch, 20mm dick
- Alu U-Profile: 70mm hoch
- Brett: 15mm (in U-Profil eingelegt?)
```

**Analyse:**
- Auszugshöhe 53mm + Brett 15mm = **68mm** Aufbauhöhe
- U-Profil Innenhöhe: 70mm (Außenmaß)
- Typische U-Profil Wandstärke: 2-3mm → Lichte Innenhöhe ca. **64-66mm**

**KONFLIKT:** 68mm Aufbau > 64-66mm lichte Höhe im U-Profil → **FAIL**

**Mögliche Lösungen:**
1. Brett **unter** die Auszüge montieren (Aufbau: Auszug 53mm → Brett 15mm = 68mm, U-Profil deckt nur Auszug ab)
2. Flachere Auszüge (z.B. 35-40mm Bauhöhe)
3. Höheres U-Profil (z.B. 80-90mm)
4. Brett in U-Profil **einlassen** (Nutfräsen) → reduziert effektive Aufbauhöhe

### Modul 2 (Drop) - Kein U-Profil
- Auszug 53mm + Brett 15mm = 68mm Aufbauhöhe
- Basis-Profil 20mm hochkant → Brett sitzt bei 35mm (20+15) → **OK, kein Konflikt**

---

## 4. Modul 2 Brett-Montage (OFFEN / UNKLAR)

**Status in DECISIONS.md:** "Exakte Montagewinkel-Spezifikation für Brett-Aufhängung in Modul 2" → **Offener Punkt**

**Was fehlt:**
- [ ] Art der Winkel (Winkelprofil, Lochblech, gedruckt, gefräst?)
- [ ] Befestigung am Auszug (Schrauben durch Auszug-Lochbild?)
- [ ] Befestigung am Brett (von oben? von unten? Seitlich?)
- [ ] Einstellbarkeit (Höhenjustage für Auszug-Ausrichtung?)
- [ ] Kraftfluss: Querkräfte (Seitenlast) → wie aufgenommen?

**Empfehlung:** Detaillierung vor Fertigungsbeginn zwingend erforderlich.

---

## 5. Profil-Verbindungen

| Verbindung | Methode | Bewertung |
|------------|---------|-----------|
| Vertikal ↔ Längsträger (Ecken) | T-Nuten in Slot 6 + Winkelverbinder | Standard, OK |
| Querträger (flach) ↔ Vertikal | T-Nuten + Winkelverbinder | OK, aber: Querträger flach = weniger Hebelarm |
| Modul 1↔2, 2↔3 (Trennfugen) | Getrennte Rahmen, keine Durchgängigkeit | OK (gewollt) |
| Endkappen | Offene Profile oben/unten | **FEHLEND** - Endkappen nicht spezifiziert |

**Toleranz-Stack-up Ecken:**
- Profil 20x40 B-Typ: Slot-Maß typisch 6.2-6.4mm
- T-Nut M6/M8: Positionstoleranz ±0.2mm
- Winkelverbinder: Bohrloch-Toleranz ±0.3mm
- **Kumulativ pro Ecke: ~±0.5mm** → Bei 1200mm Breite = **akzeptabel**

---

## 6. Bierbank-Passung (Modul 1 & 3)

| Maß | Wert | Bewertung |
|-----|------|-----------|
| Bierbank Dicke | 40 mm | Gegeben |
| U-Profil lichte Höhe | 55 mm (CONTEXT) | 70mm - 2×Wand ~55mm |
| **Luft** | **15 mm** | ✅ **PASS** - Ausreichend für Einführspiel |

---

## 7. Kühlbox-Passung (Modul 2)

| Maß | Wert | Bewertung |
|-----|------|-----------|
| Kühlbox Breite | 369 mm | Gegeben |
| Modul 2 lichte Breite | 420 mm (CONTEXT: "420mm clear") | 500mm - 2×Profil(20) - 2×Auszug(20) = 420mm |
| **Luft gesamt** | **51 mm** | ✅ **PASS** - 25mm pro Seite, gut justierbar |

---

## 8. Fahrzeughöhe (T6 Kofferraum)

| Maß | Wert | Bewertung |
|-----|------|-----------|
| Heckauszug Höhe | 590 mm | Planung |
| T6 Kofferraum Höhe | ~1200 mm | Typisch |
| **Resthöhe** | **~610 mm** | ✅ **PASS** - Ausreichend für Beladung/Entnahme |

---

## 9. Gewichtsabschätzung & Schwerpunkt (GROB)

### Materialmengen
| Bauteil | Anzahl | ca. Gewicht/Stk | Summe |
|---------|--------|-----------------|-------|
| Alu-Profile 20x40 (36 Stk à ~0.5kg/m) | 36m gesamt | ~18 kg | 18 kg |
| Schwerlastauszüge (6 Stk) | 6 | ~3 kg | 18 kg |
| U-Profile Alu (4 Stk à 0.6m) | 2.4m | ~1.5 kg/m | 3.6 kg |
| Brett schmal (2 Stk, 310×600×15mm) | 2 | ~2.5 kg | 5 kg |
| Brett breit (1 Stk, 420×600×15mm) | 1 | ~3.5 kg | 3.5 kg |
| Bierbänke (2 Stk) | 2 | ~5 kg | 10 kg |
| Winkelverbinder, Schrauben, T-Nuten | - | ~2 kg | 2 kg |
| **Gesamt (Leer)** | | | **~60 kg** |

### Beladung (Maximal)
| Last | Gewicht |
|------|---------|
| 4× Eurobox 600×400×220 (voll) | 4 × 15-20 kg = 60-80 kg |
| Kühlbox (gefüllt) | 25-30 kg |
| 2× Bierbank (bereits oben) | 10 kg |
| **Gesamt (beladen)** | **~155-180 kg** |

### Schwerpunkt
- Modul 1 & 3: Last nahe Fahrzeug-Seitenwand → **günstig**
- Modul 2 (Mitte): Kühlbox schwer, tief (Drop) → **sehr günstig** (niedriger SP)
- Auszüge 600mm Auszugslänge → bei Vollauszug SP vor Modul-Rahmen → **Kippmoment prüfen**

**Empfehlung:** Kippstabilität bei ausgezogenem Modul 2 (schwerste Last) rechnerisch nachweisen.

---

## 10. Montage- / Transport-Sequenz

### Vorgeschlagene Sequenz (aus TODO/CONTEXT)
1. **Module separat vormontieren** (Rahmen + Auszüge + Bretter + U-Profile)
2. **Module einzeln ins Fahrzeug tragen** (je ~20-25 kg leer)
3. **Im Fahrzeug verbinden** (ausrichten, evtl. verbinden?)
4. **Bierbänke einlegen, Euroboxen/Kühlbox beladen**

### Offene Punkte Transport/Montage
- [ ] Wie werden Module im Fahrzeug **gegeneinander fixiert**? (Nur durch Reibung? Zurrgurte? Formschlüssig?)
- [ ] Wie werden Module am **Fahrzeugboden** fixiert? (Zurrpunkte? Schrauben? Klett?)
- [ ] **Auszugsrichtung:** Alle 3 nach hinten? Oder Modul 2 seitlich?
- [ ] **Kühlbox-Strom:** Kabeldurchführung Modul 2 → Fahrzeug-Elektrik (OFFEN in DECISIONS.md)

---

## 11. Zusammenfassung: PASS / FAIL / OFFEN

| # | Prüfpunkt | Status | Korrektur erforderlich |
|---|-----------|--------|------------------------|
| 1 | Horizontale Maßkette (1200mm) | ✅ PASS | - |
| 2 | Vertikale Maßkette Modul 1&3 (590mm) | ✅ PASS | - |
| 3 | Vertikale Maßkette Modul 2 (590mm) | ✅ PASS | - |
| 4 | **Auszug + Brett in U-Profil (Höhe)** | ❌ **FAIL** | **Ja - grundlegend** |
| 5 | Modul 2 Brett-Montage (Winkel) | ⚠️ **OFFEN** | **Ja - Detail fehlt** |
| 6 | Profil-Verbindungen (T-Nut/Winkel) | ✅ PASS | Endkappen ergänzen |
| 7 | Bierbank Passung (15mm Luft) | ✅ PASS | - |
| 8 | Kühlbox Passung (51mm Luft) | ✅ PASS | - |
| 9 | Fahrzeughöhe (610mm Rest) | ✅ PASS | - |
| 10 | Gewicht / Schwerpunkt | ⚠️ **PRÜFEN** | Kippnachweis Modul 2 |
| 11 | Montage-Sequenz definiert | ⚠️ **TEILWEISE** | Fixierung Module/Fahrzeug fehlt |
| 12 | Kühlbox-Kabeldurchführung | ⚠️ **OFFEN** | Detaillierung nötig |

---

## 12. Erforderliche Korrekturen (Priorität)

### 🔴 **Hoch (Blocker für Fertigung)**
1. **Auszug/U-Profil Höhenkonflikt lösen** (Punkt 4)
   - Option A: Brett **unter** Auszüge montieren (U-Profil nur als Bierbank-Führung)
   - Option B: Flachere Auszüge (35-40mm) beschaffen
   - Option C: U-Profil höher (80-90mm) spezifizieren
   - Option D: Brett in U-Profil einfräsen (Nut 15mm tief)

2. **Modul 2 Brett-Montagewinkel definieren** (Punkt 5)
   - Skizze + BOM für Winkel (Material, Lochbild, Schrauben)
   - Einstellbarkeit für Auszug-Ausrichtung vorsehen

### 🟡 **Mittel (Vor Montage)**
3. **Endkappen für alle Profile** spezifizieren (Schutz, Optik, Verletzungsschutz)
4. **Kippstabilität Modul 2** rechnerisch prüfen (ausgezogen, voll beladen)
5. **Modul-Fixierung im Fahrzeug** definieren (Zurrpunkte, Anti-Rutsch, formschlüssig)
6. **Kühlbox-Kabeldurchführung** planen (Wasserdicht? Stecker? Führung?)

### 🟢 **Niedrig (Nice to have)**
7. Verstellfüße für Bodenunebenheiten (in DECISIONS.md offen)
8. Arretierung der Auszüge in Endposition (auf/zu)
9. Oberflächenschutz Profile (Eloxal? Pulverbeschichtung?)

---

## 13. Nächste Schritte (Empfohlen)

1. **Sofort:** Entscheidung zu Punkt 4 (Auszug/U-Profil Konflikt) → ändert BOM & Zeichnung
2. **Parallel:** Modul-2-Winkel konstruieren (CAD/Handskizze) → in HTML-Zeichnung aufnehmen
3. **Vor Bestellung:** Kippnachweis Modul 2, endgültige BOM erstellen
4. **HTML-Zeichnung:** Erst nach Klärung Punkte 1 & 2 erstellen (sonst 2x Arbeit)

---

*Review erstellt auf Basis der Planungsdokumente. Keine physische Prüfung / kein Prototyp vorhanden.*