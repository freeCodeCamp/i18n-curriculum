---
id: 6903d3c4ccae5fffec5f3cbc
title: المهمة 4
challengeType: 19
dashedName: task-4
lang: es
---

<!-- (Audio) Mateo: Soy puertorriqueño. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ما هي جنسية Mateo؟

## --answers--

`Chileno`

### --feedback--

تشير هذه الخيار إلى شخص من تشيلي.

---

`Peruano`

### --feedback--

تصف هذه الكلمة شخصًا من بيرو.

---

`Puertorriqueño`

---

`Colombiana`

### --feedback--

تشير هذه إلى امرأة من كولومبيا، والنهاية `-a` تدل على صيغة المؤنث، وهذا لا يتطابق مع Mateo.

## --video-solution--

3

# --explanation--

`Soy` ("أنا") تأتي من الفعل `ser` وتُستخدم للتعبير عن الهوية أو الجنسية أو المهنة. على سبيل المثال:

- `Soy chilena.` – أنا تشيلية. (مؤنث)

- `Soy chileno.` – أنا تشيلي. (مذكر)

- `Soy puertorriqueña` - أنا بورتوريكية. (مؤنث)

- `Soy puertorriqueño` - أنا بورتوريكي. (مذكر)

- `Soy canadiense.` – أنا كندي. (محايد)

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
