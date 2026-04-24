---
id: 68bb001c22f3bcbd1fdf38fa
title: タスク 1
challengeType: 19
dashedName: task-1
lang: es
---

<!-- (Audio) Elena: Hola -->

# --description--

エレナは「こんにちは」と言いたいです。スペイン語で人と会うときに、この言葉をよく耳にします。

# --instructions--

音声を聞いて、下の質問に答えてください。
正しい答えは**1つだけ**です。助けが必要な場合は、レッスンの一番下にある**説明**をクリックしてください。

# --questions--

## --text--

エレナは「こんにちは」と言うときにどの言葉を使っていますか？

## --answers--

`Hola`

---

`Adiós`

### --feedback--

これは話者が言っていることの反対の意味です。さらに助けが必要な場合は説明セクションを開いてください。

---

`Chao`

### --feedback--

これは話者が言っていることの反対の意味です。さらに助けが必要な場合は説明セクションを開いてください。

---

`Buenos días`

### --feedback--

これは「おはようございます」という意味ですが、音声で聞こえる言葉ではありません。

## --video-solution--

1

# --explanation--

`Hola` は挨拶の言葉です。誰かに会うときに使われ、「Hello」や「Hi」と似ています。例えば：

`¡Hola, buenos días!` – こんにちは、おはようございます！

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
      "startTimestamp": 0.35,
      "finishTimestamp": 0.9
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
      "finishTime": 1.55,
      "dialogue": {
        "text": "¡Hola!",
        "align": "center"
      }
    },
    {
      "character": "Elena",
      "opacity": 0,
      "startTime": 2.05
    }
  ]
}
```
