---
id: 699cc94ffc3ee628dfae74bf
title: Aufgabe 31
challengeType: 22
dashedName: task-31
lang: es
---
<!-- (Audio) Mateo: Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r. -->

# --description--

`Es` stammt vom Verb `ser` ab und wird verwendet, um etwas zu identifizieren oder darzustellen. Zum Beispiel:

- `Es mi número.` – Das ist meine Nummer.
  
- `Es mi correo.` – Das ist meine E-Mail.

Beim Buchstabieren einer E-Mail-Adresse werden bestimmte Symbole laut ausgesprochen:

`Punto` wird für das Symbol `.` verwendet. Zum Beispiel:

`ana.lopez` wird als `ana punto lopez` gelesen.

`Arroba` wird für das Symbol `@` verwendet. Zum Beispiel:

`ana.lopez@ejemplo.com` wird als `ana punto lopez arroba ejemplo punto com` gelesen.

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`BLANK m a t e o BLANK d e l g a d o BLANK s a n j u a n BLANK p r.`

## --blanks--

`Es`

### --feedback--

Diese Form von `ser` wird verwendet, um etwas darzustellen oder zu identifizieren.

---

`punto`

### --feedback--

Dieses Wort wird verwendet, wenn das Symbol `.` in einer E-Mail-Adresse ausgesprochen wird.

---

`arroba`

### --feedback--

Dieses Wort wird verwendet, wenn das Symbol `@` ausgesprochen wird.

---

`punto`

### --feedback--

Dieses Wort erscheint erneut vor den letzten Buchstaben `p r`.

# --explanation--

Der vollständige Satz lautet:

`Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r.`

`Es` leitet die Information ein.

`Punto` stellt das Symbol `.` dar.

`Arroba` stellt das Symbol `@` dar.

Diese Wörter werden häufig verwendet, wenn man eine E-Mail-Adresse laut buchstabiert.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Mateo",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_mateo_email_dialogue_with_camila.mp3",
      "startTime": 1,
      "startTimestamp": 17.02,
      "finishTimestamp": 35.09
    }
  },
  "commands": [
    {
      "character": "Mateo",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mateo",
      "startTime": 1,
      "finishTime": 19.07,
      "dialogue": {
        "text": "Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "opacity": 0,
      "startTime": 19.57
    }
  ]
}
```

