---
id: 695fea6173bbffcaa3ffc36d
title: タスク 10
challengeType: 19
dashedName: task-10
lang: es
---

<!-- (Audio) Esteban: ¿Cómo te llamas? -->

# --description--

スペイン語で名前を尋ねる一般的な方法は2つあります。

どちらも日常的に使われており、意味は同じです。ただし、構造が異なります。

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

音声で聞いたものと**似ている**質問はどれですか？

## --answers--

`¿Cuál es tu nombre?`

---

`¿Dónde vives?`

### --feedback--

この質問は誰かの住んでいる場所を尋ねています。

---

`¿Cuál es tu apellido?`

### --feedback--

これは誰かの苗字を尋ねています。

---

`¿Tienes apodo?`

### --feedback--

これは誰かのニックネームがあるかどうかを尋ねています。

## --video-solution--

1

# --explanation--

エステバンは`¿Cómo te llamas?`と言っています。これはスペイン語で名前を尋ねる最も一般的な方法の一つです。同じ意味を持つもう一つの非常に一般的な質問は次の通りです：

`¿Cuál es tu nombre?`

どちらの質問も日常のスペイン語で名前を尋ねるために使われます。単に構造が異なるだけです：

- `¿Cómo te llamas?`は動詞`llamarse`（呼び出す、呼ばれる）を使っています。
- `¿Cuál es tu nombre?`は名前を名詞として直接尋ねています。

このタスクでは、誰かの名前を尋ねている選択肢が正解です。

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Esteban",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_personal_details_just_questions.mp3",
      "startTime": 1,
      "startTimestamp": 43.02,
      "finishTimestamp": 44.53
    }
  },
  "commands": [
    {
      "character": "Esteban",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Esteban",
      "startTime": 1,
      "finishTime": 2.51,
      "dialogue": {
        "text": "¿Cómo te llamas?",
        "align": "center"
      }
    },
    {
      "character": "Esteban",
      "opacity": 0,
      "startTime": 2.61
    }
  ]
}
```
