---
id: 679afc19cfcee1abd9e60ce2
title: Завдання 61
challengeType: 19
dashedName: task-61
lang: en-US
---

<!-- (Audio) Brian: If people don't feel valued, they might lose motivation, right? -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Що, на думку Браяна, може статися, якщо ми не слухаємо тих у команді, хто не погоджується?

## --answers--

Вони можуть втратити мотивацію.

---

Вони припинять суперечки.

### --feedback--

Ігнорування думок людей не припиняє суперечок; це може просто зробити людей менш залученими.

---

Вони працюватимуть старанніше, щоб довести свою точку зору.

### --feedback--

Браян не припускає, що відчуття недооціненості змушує людей працювати старанніше.

---

Вони автоматично погодяться з усім.

### --feedback--

Неслухання людей не змушує їх погоджуватися з усім — натомість це може призвести до їх відчуження.

## --video-solution--

1

# --explanation--

`To feel valued` описує відчуття, яке виникає, коли ви вірите, що ваші думки, зусилля та внески цінують. Наприклад:

`The project manager always dedicates some time during the meeting to hear what we have to say. This makes everyone in the team feel valued.` — це означає, що ставлення менеджера проєкту приносить команді хороші результати.

Браян припускає, що якщо думки членів команди ігнорують, вони можуть почуватися неважливими. Якщо члени команди відчувають свою цінність, вони, ймовірно, залишаться залученими та будуть робити внесок нових ідей.

З іншого боку, якщо люди відчувають, що їхні думки не мають значення, вони можуть відійти від справ і втратити мотивацію робити внесок, що може зашкодити загальній роботі команди та продуктивності.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-2.mp3",
      "startTime": 1,
      "startTimestamp": 42.54,
      "finishTimestamp": 46.1
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 4.56,
      "dialogue": {
        "text": "If people don't feel valued, they might lose motivation, right?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 5.06
    }
  ]
}
```
