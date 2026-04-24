---
id: 69399bbb6d7a7bfeedaddd96
title: タスク 13
challengeType: 22
dashedName: task-13
lang: es
---

<!-- (Audio) Basti: Me llamo Sebastián Ávila Gómez. -->

# --description--

動詞 `escribir` は「書く」という意味です。スペイン語話者が単語の書き方やつづり方を説明したいとき、よく `se escribe` という表現を使います。

この形は動詞 `escribir` から来ていて、名前やメールアドレス、その他の単語を文字ごとにつづる前によく使われます。例えば：

- `Carlos se escribe C-a-r-l-o-s.` – カルロス は C-a-r-l-o-s とつづります。  

- `Mi apellido se escribe con z.` – 私の苗字は z でつづります。

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Hola, buenas noches.`

`Me llamo Sebastián Ávila Gómez.`

`Sebastián BLANK BLANK S-e-b-a-s-t-i-á-n, con acento en la última a.`

## --blanks--

`se`

### --feedback--

この小さな単語は、何かの書き方を説明するときによく使われる表現の一部です。

---

`escribe`

### --feedback--

この動詞の形は `escribir` から来ていて、単語をつづるときに使われます。

# --explanation--

`Se escribe` は単語や名前の書き方を説明するときに使われます。

動詞 `escribir` から来ていて、文字ごとにつづる前によく使われます。

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 25,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 0.81,
      "finishTimestamp": 16.5
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 2.41,
      "dialogue": {
        "text": "Hola, buenas noches.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "startTime": 3.32,
      "finishTime": 6.25,
      "dialogue": {
        "text": "Me llamo Sebastián Ávila Gómez.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "startTime": 7.36,
      "finishTime": 16.69,
      "dialogue": {
        "text": "Sebastián se escribe s-e-b-a-s-t-i-á-n, con acento en la última a.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 17.19
    }
  ]
}
```
