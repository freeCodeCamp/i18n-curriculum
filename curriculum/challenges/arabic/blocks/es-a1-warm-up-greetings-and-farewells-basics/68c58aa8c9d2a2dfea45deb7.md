---
id: 68c58aa8c9d2a2dfea45deb7
title: المهمة 7
challengeType: 19
dashedName: task-7
lang: es
---
<!-- (Audio) Elena: Hasta luego -->

# --description--

إلينا تودعك، لكنها تتوقع رؤيتك مرة أخرى.

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ما العبارة التي تستخدمها إلينا لتقول "أراك لاحقًا"؟

## --answers--

`Hasta luego.`

---

`Adiós`

### --feedback--

هذه وداع، لكنها أكثر حسمًا. المتحدث يستخدم عبارة مختلفة.

---

`Chao`

### --feedback--

هذه أيضًا طريقة غير رسمية للوداع، لكنها ليست العبارة الموجودة في الصوت.

---

`¡Hola!`

### --feedback--

هذه تعني "مرحبًا"، تحية عامة، لكنها ليست ما تقوله إلينا.

## --video-solution--

1

# --explanation--

`Hasta luego` هي طريقة شائعة للوداع في الإسبانية. تعني "أراك لاحقًا".

تُستخدم عندما تتوقع رؤية الشخص مرة أخرى، لكن ليس بالضرورة قريبًا. على سبيل المثال:

`Hasta luego, Marta.` – أراك لاحقًا، مارتا.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Elena",
        "position": {
          "x": 50,
          "y": 25,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_spanish_greetings_in_the_morning.mp3",
      "startTime": 1,
      "startTimestamp": 5.68,
      "finishTimestamp": 6.64
    }
  },
  "commands": [
    {
      "character": "Elena",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Elena",
      "startTime": 1,
      "finishTime": 1.96,
      "dialogue": {
        "text": "Hasta luego.",
        "align": "center"
      }
    },
    {
      "character": "Elena",
      "opacity": 0,
      "startTime": 2.46
    }
  ]
}
```
