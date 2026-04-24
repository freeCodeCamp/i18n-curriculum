---
id: 65dabf5eb13aae9ff91c40a2
title: タスク108
challengeType: 22
dashedName: task-108
lang: en-US
---

<!-- (Audio) Sophie: And you don't have to search for expensive solutions for that. -->

# --description--

フレーズ`search for`は、探検を通じて何かを探したり見つけようとしたりすることを意味します。例えば、`I need to search for my lost keys`は鍵を探すことを意味します。

単語`expensive`は、多くのお金がかかるものを表します。例えば、`That car is too expensive for me`はその車が高価であることを意味します。

`solution`は問題への答えや問題を解決する方法です。

`Doesn't/don't have to`は、何かをする必要や要求がないことを表現するために使われます。

# --fillInTheBlank--

## --sentence--

`And you don't have to BLANK BLANK BLANK BLANK for that.`

## --blanks--

`search`

### --feedback--

この単語は、何かを注意深く探すことを意味します。

---

`for`

### --feedback--

この前置詞は、探そうとしているものを示すために`search`と一緒に使われます。

---

`expensive`

### --feedback--

この単語は、多くのお金がかかるものを表します。

---

`solutions`

### --feedback--

これらは問題を解決する答えや方法です。

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-5.mp3",
      "startTime": 1,
      "startTimestamp": 32.52,
      "finishTimestamp": 35.22
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
      "finishTime": 3.70,
      "dialogue": {
        "text": "And you don't have to search for expensive solutions for that.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.20
    }
  ]
}
```
