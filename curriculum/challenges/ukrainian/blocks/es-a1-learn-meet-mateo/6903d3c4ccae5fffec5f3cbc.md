---
id: 6903d3c4ccae5fffec5f3cbc
title: Завдання 4
challengeType: 19
dashedName: task-4
lang: es
---

<!-- (Audio) Mateo: Soy puertorriqueño. -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Яка національність у Матео?

## --answers--

`Chileno`

### --feedback--

Цей варіант стосується людини з Чилі.

---

`Peruano`

### --feedback--

Це слово описує людину з Перу.

---

`Puertorriqueño`

---

`Colombiana`

### --feedback--

Це стосується жінки з Колумбії, а закінчення `-a` вказує на жіночий рід, що не відповідає Матео.

## --video-solution--

3

# --explanation--

`Soy` ("Я є") походить від дієслова `ser` і використовується для вираження ідентичності, національності або професії. Наприклад:

- `Soy chilena.` – Я чилійка. (жіночий рід)

- `Soy chileno.` – Я чилієць. (чоловічий рід)

- `Soy puertorriqueña` - Я пуерториканець. (жіночий рід)

- `Soy puertorriqueño` - Я пуерториканець. (чоловічий рід)

- `Soy canadiense.` – Я канадець. (нейтральний)

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
