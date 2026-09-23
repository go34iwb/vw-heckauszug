# VW T6 Heckauszug - Kontext & Entscheidungen

## Projekt-Status
- **Erstellt**: 13. September 2026
- **Status**: Konzeptmodell und Zeichnungen in `index.html` konsolidiert
- **Varianten**: Zwei Varianten dokumentiert (Standard mit U-Profilen / Kühlbox-Drop)

## Wichtige Maße (Variante 1 - Detaillierte CAD-Spezifikation)

### Globale Außenmaße
- Gesamtbreite: 1200 mm (absolut)
- Gesamthöhe: 590 mm (inkl. oberer Profilrahmen)
- Gesamttiefe: 600 mm (bündig)

### Modul-Aufteilung (3 Module)
| Modul | Position | Breite (Außen) | Funktion |
|-------|----------|----------------|----------|
| 1 | Links | 310 mm | Euroboxen + Bierbank |
| 2 | Mitte | 500 mm | Kühlbox (Drop) |
| 3 | Rechts | 310 mm | Euroboxen + Bierbank |

### Vertikale Maßketten

**Modul 1 & 3 (Standard mit U-Profilen):**
- Basis-Profil: 20 mm
- U-Profil: 80 mm (seitliche Fuehrung; beginnt auf dem Basisrahmen)
- Brettstärke: 15 mm
- Oberkante Brett: 115 mm
- Unterkante Oberrahmen: 570 mm
- Lichte Nutzhöhe: 455 mm (fuer 2x 220 mm Euroboxen = 440 mm)
- Schwerlastauszuege: seitlich und parallel zu den U-Profilen, nicht als vertikale Schicht unter dem U-Profil rechnen

**Modul 2 (Kühlbox-Drop):**
- Basis-Profil: 20 mm
- Brettstärke: 15 mm (tiefergelegt zwischen Schienen)
- Oberkante Brett: ~35 mm
- Unterkante Oberrahmen: 550 mm
- Lichte Nutzhöhe: 515 mm (für 490mm Kühlbox + 25mm Puffer)

### Profile (20x40 mm B-Typ, alle hochkant außer Querträger flach)
- 12x Vertikal-Säulen: 550 mm
- 12x Längsträger: 600 mm
- 8x Querträger schmal (Modul 1&3): 270 mm
- 4x Querträger breit (Modul 2): 460 mm

### Auszüge & Holz
- 6x Schwerlastauszüge (53mm hoch, 20mm dick): 600 mm
- 4x Alu U-Profile (80mm): 600 mm (nur Modul 1&3)
- 2x Brett schmal: 310 x 600 mm
- 1x Brett breit: 420 x 600 mm (tiefergelegt)
- 2x Bierbank: 250 x 600 mm

## Wichtige Entscheidungen
1. **Single-Layer, oben offen** - Keine Zwischendecken, maximale Nutzhöhe
2. **Asymmetrische Modulbreiten** - 310 / 500 / 310 = 1120mm + Profile = 1200mm
3. **Kühlbox-Drop nur in Modul 2** - Keine U-Profile, Brett direkt zwischen Schienen
4. **Querträger flachgelegt** - Spart 20mm Bauhöhe vs. hochkant
4. **Bierbaenke als lose Einschuebe** - 40 mm stark, laufen in seitlichen U-Profil-Fuehrungen

## Nächste Schritte
- [ ] HTML mit 4 SVG-Zeichnungen erstellen (Front, Top, Side, Iso)
- [ ] GitHub Repo anlegen
- [ ] GitHub Pages konfigurieren
- [ ] BOM/Stückliste finalisieren