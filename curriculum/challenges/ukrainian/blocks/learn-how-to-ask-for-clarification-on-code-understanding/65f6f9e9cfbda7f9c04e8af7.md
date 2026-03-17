---
id: 65f6f9e9cfbda7f9c04e8af7
title: Завдання 41
challengeType: 19
dashedName: task-41
lang: en-US
---

<!-- (Audio) Brian: Understood. We can investigate this together, and by the end of it, we should have a clearer picture of what's happening. -->

# --description--

Фраза `by the end of it` часто використовується в англійській мові, щоб позначити висновок або фінальну частину процесу чи періоду часу. Вона означає, що після завершення певної діяльності буде досягнуто конкретного результату або розуміння.

# --questions--

## --text--

Що має на увазі Brian у діалозі, коли каже `by the end of it`?

## --answers--

Вони припинять розслідування.

### --feedback--

Ця фраза стосується досягнення висновку, а не обов’язково припинення діяльності.

---

Вони почнуть іншу діяльність.

### --feedback--

Brian говорить про завершення поточного розслідування, а не про початок чогось нового.

---

Вони зроблять перерву.

### --feedback--

Фраза зосереджена на досягненні розуміння наприкінці процесу, а не на перерві.

---

Після розслідування вони матимуть чіткіше уявлення про ситуацію.

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
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
      "filename": "6.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 20.74,
      "finishTimestamp": 26.28
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
      "finishTime": 6.54,
      "dialogue": {
        "text": "Understood. We can investigate this together, and by the end of it, we should have a clearer picture of what's happening.",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.04
    }
  ]
}
```
