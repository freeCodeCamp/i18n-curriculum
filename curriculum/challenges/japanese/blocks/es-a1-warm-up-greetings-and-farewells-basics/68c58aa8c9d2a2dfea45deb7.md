---
id: 68c58aa8c9d2a2dfea45deb7
title: タスク7
challengeType: 19
dashedName: task-7
lang: es
---
<!-- (Audio) Elena: Hasta luego -->

# --description--

エレナはさよならを言っていますが、また会うことを期待しています。

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

エレナは「またね」と言うためにどのフレーズを使っていますか？

## --answers--

`Hasta luego.`

---

`Adiós`

### --feedback--

これはさよならですが、より決定的な別れを意味します。話者は別のフレーズを使っています。

---

`Chao`

### --feedback--

これもカジュアルな別れの挨拶ですが、音声で使われているものではありません。

---

`¡Hola!`

### --feedback--

これは「こんにちは」という意味の一般的な挨拶ですが、エレナが言っているのはこれではありません。

## --video-solution--

1

# --explanation--

`Hasta luego` はスペイン語でよく使われるさよならの言い方です。「またね」と訳されます。

これは相手にまた会うことを期待して使われますが、必ずしもすぐに会うわけではありません。例えば：

`Hasta luego, Marta.` – またね、マルタ。

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
