---
id: 656d1becadf67d05d5b27bab
title: タスク149
challengeType: 19
dashedName: task-149
lang: en-US
---

<!--
AUDIO REFERENCE:
Sophie: Oh, come on, Brian.
Brian: But it's true. She's the person to go to if you need help.
-->

# --description--

`he`の代名詞を学んだときと同様に、`she`のような代名詞は女性を指すために使われます。会話の中で繰り返しを避けるのに役立ちます。次の会話の部分を見てください：

- ソフィー: `Oh, come on, Brian.`

- ブライアン: `But it's true. She's the person to go to if you need help.`

ここで、ブライアンはソフィーを指すために`she`を使っています。ソフィーの名前を繰り返す代わりに、ブライアンは代名詞`she`を使って会話をスムーズにし、繰り返しを避けています。

# --questions--

## --text--

この会話で、ブライアンはソフィーの名前を繰り返さずに指すためにどの単語を使っていますか？

## --answers--

`he`

### --feedback--

`He`は男性を指します。

---

`they`

### --feedback--

`They`は複数形で、複数の人を指します。

---

`it`

### --feedback--

`It`は通常、物や動物を指すときに使います。

---

`she`

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "cafe.png",
    "characters": [
      {
        "character": "Sophie",
        "position": { "x": 25, "y": 0, "z": 1.3 },
        "opacity": 0
      },
      {
        "character": "Brian",
        "position": { "x": 75, "y": 15, "z": 1.2 },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.1-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.6,
      "finishTimestamp": 28.16
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 2.4,
      "dialogue": {
        "text": "Oh, come on, Brian.",
        "align": "left"
      }
    },
    {
      "character": "Brian",
      "startTime": 3.3,
      "finishTime": 6.35,
      "dialogue": {
        "text": "But it's true. She's the person to go to if you need help.",
        "align": "right"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 6.85
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 6.85
    }
  ]
}
```
