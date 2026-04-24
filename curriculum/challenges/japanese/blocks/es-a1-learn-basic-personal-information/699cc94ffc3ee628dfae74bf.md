---
id: 699cc94ffc3ee628dfae74bf
title: タスク 31
challengeType: 22
dashedName: task-31
lang: es
---
<!-- (Audio) Mateo: Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r. -->

# --description--

`Es` は動詞 `ser` から来ていて、何かを特定したり紹介したりするために使われます。例えば：

- `Es mi número.` - これは私の番号です。
  
- `Es mi correo.` - これは私のメールアドレスです。

メールアドレスをつづるとき、特定の記号は声に出して言います：

`Punto` は記号 `.` を表すために使われます。例えば：

`ana.lopez` は `ana punto lopez` と読まれます。

`Arroba` は記号 `@` を表すために使われます。例えば：

`ana.lopez@ejemplo.com` は `ana punto lopez arroba ejemplo punto com` と読まれます。

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`BLANK m a t e o BLANK d e l g a d o BLANK s a n j u a n BLANK p r.`

## --blanks--

`Es`

### --feedback--

この形の `ser` は何かを紹介したり特定したりするために使われます。

---

`punto`

### --feedback--

この言葉はメールアドレスの記号 `.` を言うときに使われます。

---

`arroba`

### --feedback--

この言葉は記号 `@` を言うときに使われます。

---

`punto`

### --feedback--

この言葉は最後の文字 `p r` の前にもう一度出てきます。

# --explanation--

全文は次の通りです：

`Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r.`

`Es` が情報を紹介します。

`Punto` は記号 `.` を表します。

`Arroba` は記号 `@` を表します。

これらの言葉はメールアドレスを声に出してつづるときによく使われます。

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Mateo",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_mateo_email_dialogue_with_camila.mp3",
      "startTime": 1,
      "startTimestamp": 17.02,
      "finishTimestamp": 35.09
    }
  },
  "commands": [
    {
      "character": "Mateo",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mateo",
      "startTime": 1,
      "finishTime": 19.07,
      "dialogue": {
        "text": "Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "opacity": 0,
      "startTime": 19.57
    }
  ]
}
```
