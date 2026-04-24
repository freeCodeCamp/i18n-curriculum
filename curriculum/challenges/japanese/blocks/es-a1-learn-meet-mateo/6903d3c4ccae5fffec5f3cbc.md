---
id: 6903d3c4ccae5fffec5f3cbc
title: タスク4
challengeType: 19
dashedName: task-4
lang: es
---

<!-- (Audio) Mateo: Soy puertorriqueño. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

マテオの国籍は何ですか？

## --answers--

`Chileno`

### --feedback--

この選択肢はチリ出身の人を指します。

---

`Peruano`

### --feedback--

この単語はペルー出身の人を表します。

---

`Puertorriqueño`

---

`Colombiana`

### --feedback--

これはコロンビア出身の女性を指し、末尾の`-a`は女性形を示しているため、マテオには合いません。

## --video-solution--

3

# --explanation--

`Soy`（「私は～です」）は動詞`ser`から来ており、身元、国籍、職業を表すために使われます。例えば：

- `Soy chilena.` – 私はチリ人です。（女性形）

- `Soy chileno.` – 私はチリ人です。（男性形）

- `Soy puertorriqueña` - 私はプエルトリコ人です。（女性形）

- `Soy puertorriqueño` - 私はプエルトリコ人です。（男性形）

- `Soy canadiense.` – 私はカナダ人です。（中性形）

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
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
      "filename": "ES_A1_spanish_meet_mateo.mp3",
      "startTime": 1,
      "startTimestamp": 5.81,
      "finishTimestamp": 7.13
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
      "finishTime": 2.32,
      "dialogue": {
        "text": "Soy puertorriqueño.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "opacity": 0,
      "startTime": 2.82
    }
  ]
}
```
