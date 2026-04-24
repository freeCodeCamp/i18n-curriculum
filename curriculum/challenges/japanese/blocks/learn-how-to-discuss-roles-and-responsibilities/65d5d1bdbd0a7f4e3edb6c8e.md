---
id: 65d5d1bdbd0a7f4e3edb6c8e
title: タスク 35
challengeType: 19
dashedName: task-35
lang: en-US
---

<!-- (Audio) Tom: Hey, have you ever worked with Anna from HR? -->

# --description--

音声を聞いて質問に答えてください。

# --questions--

## --text--

トムは何について尋ねていますか？

## --answers--

アンナが人事部で働いているかどうか

### --feedback--

トムの質問は、アンナの役割ではなく、その人と一緒に働いたことがあるかどうかに関するものです。

---

アリスがアンナと一緒に働いた経験があるかどうか

---

人事部で働くことが好きかどうか

### --feedback--

質問はアンナとの過去の経験についてであり、人事部で働くことに対する個人的な感情についてではありません。

---

アンナがこれまでに働いたことがあるかどうか

### --feedback--

トムの質問のフォーカスは、アンナの職歴ではなく、聞き手がアンナと働いた経験にあります。

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 2.88
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 3.88,
      "dialogue": {
        "text": "Hey, have you ever worked with Anna from HR?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.38
    }
  ]
}
```
