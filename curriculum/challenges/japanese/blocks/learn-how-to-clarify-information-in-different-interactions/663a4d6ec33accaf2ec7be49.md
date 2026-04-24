---
id: 663a4d6ec33accaf2ec7be49
title: タスク 28
challengeType: 22
dashedName: task-28
lang: en-US
---

<!-- (Audio) Sophie: Sure. Tom is a tall guy with a friendly smile. -->

# --description--

`smile` は、幸せを表すために口の端を上げることです。これは、嬉しい時や親切にしたい時に顔で行う動作です。

`Friendly` は、親切で感じがよく、話しやすい人を表します。フレンドリーな人は、周りの人を安心させて幸せな気持ちにさせます。

`A friendly smile` は、親切で歓迎していることを示す笑顔です。相手に良い気持ちを与え、友達になりたいという気持ちを伝えます。

会話を聞いて、空欄を埋めてください。

# --fillInTheBlank--

## --sentence--

`Sure. Tom is a tall guy with a BLANK BLANK.`

## --blanks--

`friendly`

### --feedback--

この空欄は、親切で話しやすく、歓迎している人を表しています。

---

`smile`

### --feedback--

口で幸せを表したい時にする動作です。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.12,
      "finishTimestamp": 17.74
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.62,
      "dialogue": {
        "text": "Sure. Tom is a tall guy with a friendly smile.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.12
    }
  ]
}
```
