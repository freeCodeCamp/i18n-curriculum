---
id: 6903d3c4ccae5fffec5f3cbc
title: Attività 4
challengeType: 19
dashedName: task-4
lang: es
---

<!-- (Audio) Mateo: Soy puertorriqueño. -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Qual è la nazionalità di Mateo?

## --answers--

`Chileno`

### --feedback--

Questa opzione si riferisce a qualcuno del Cile.

---

`Peruano`

### --feedback--

Questa parola descrive una persona del Perù.

---

`Puertorriqueño`

---

`Colombiana`

### --feedback--

Questo si riferisce a una donna della Colombia, e la desinenza `-a` indica la forma femminile, che non corrisponde a Mateo.

## --video-solution--

3

# --explanation--

`Soy` ("Io sono") deriva dal verbo `ser` ed è usato per esprimere identità, nazionalità o professione. Per esempio:

- `Soy chilena.` – Sono cilena. (femminile)

- `Soy chileno.` – Sono cileno. (maschile)

- `Soy puertorriqueña` - Sono portoricana. (femminile)

- `Soy puertorriqueño` - Sono portoricano. (maschile)

- `Soy canadiense.` – Sono canadese. (neutro)

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
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
      "filename": "ES_A1_spanish_meet_mateo.mp3",
      "startTime": 1,
      "startTimestamp": 5.81,
      "finishTimestamp": 7.13
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
      "finishTime": 2.32,
      "dialogue": {
        "text": "Soy puertorriqueño.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "opacity": 0,
      "startTime": 2.82
    }
  ]
}
```
