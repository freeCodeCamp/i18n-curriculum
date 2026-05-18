---
id: 698a5b056fac9afc70ef3cad
title: Aufgabe 10
challengeType: 22
dashedName: task-10
lang: es
---

<!-- (Audio) Camila: Brasil, Colombia, Panamá -->

# --description--

Lassen Sie uns einige der Länder überprüfen, die Sie bisher gelernt haben.

| Land | Staatsangehörigkeit (weiblich) | Staatsangehörigkeit (männlich) |
| :--- | :--- | :--- |
| `Brasil` | `brasileña` | `brasileño` |
| `Colombia` | `colombiana` | `colombiano` |
| `México` | `mexicana` | `mexicano` |
| `Panamá` | `panameña` | `panameño` |
| `República Dominicana` | `dominicana` | `dominicano` |

Im Spanischen sind Ländernamen Eigennamen und beginnen immer mit einem Großbuchstaben.

Beachten Sie, dass die Staatsangehörigkeiten `brasileño`/`brasileña` und `panameño`/`panameña` den einzigartigen Buchstaben `eñe` (`ñ`) verwenden.

Camila übt einige dieser Länder. Können Sie sie erkennen?

# --instructions--

Hören Sie sich das Audio an und vervollständigen Sie die folgende Folge.

# --fillInTheBlank--

## --sentence--

`BLANK - Colombia - BLANK`

## --blanks--

`Brasil`

### --feedback--

Dieses Land ist das größte in Südamerika und beginnt mit einem Großbuchstaben.

---

`Panamá`

### --feedback--

Dieses Land ist bekannt für seinen berühmten Kanal. Denken Sie daran, auf dem letzten Buchstaben `a` einen Akzent zu setzen und den ersten Buchstaben großzuschreiben.

# --explanation--

Die Folge lautet `Brasil` - `Colombia` - `Panamá`.

# --scene--

```json
{
  "setup": {
    "background": "company2-dining.png",
    "characters": [
      {
        "character": "Camila",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_warm_up_describing_people_at_work.mp3",
      "startTime": 1,
      "startTimestamp": 20.9,
      "finishTimestamp": 25.4
    }
  },
  "commands": [
    {
      "character": "Camila",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Camila",
      "startTime": 1,
      "finishTime": 1.96,
      "dialogue": {
        "text": "Brasil",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "startTime": 2.88,
      "finishTime": 3.79,
      "dialogue": {
        "text": "Colombia",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "startTime": 4.79,
      "finishTime": 5.5,
      "dialogue": {
        "text": "Panamá",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "opacity": 0,
      "startTime": 6
    }
  ]
}
```
