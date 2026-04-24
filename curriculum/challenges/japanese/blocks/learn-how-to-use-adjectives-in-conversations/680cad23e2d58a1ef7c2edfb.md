---
id: 680cad23e2d58a1ef7c2edfb
title: タスク19
challengeType: 22
dashedName: task-19
lang: en-US
---

<!-- (Audio) Sarah: Those are the ones. But, we found something even better in your catalog, these high-capacity ones here. -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Those are the ones. But, we found something even better in your catalog, BLANK BLANK ones here.`

## --blanks--

`these`

### --feedback--

この単語は話者の近くにある特定のものを指すときに使います。

---

`high-capacity`

### --feedback--

この複合語は、大量の作業、ストレージ、またはエネルギーを扱えるものを意味します。`-`を使うことを忘れないでください。

# --explanation--

`High-capacity`は、標準のバージョンと比べて大量のものを管理または保持するように設計されたものを表します。例えば：

`We installed high-capacity batteries in the new devices.` – これはバッテリーがより多くの電力を蓄え、長持ちすることを意味し、技術機器で役立ちます。

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_19-1.mp3",
      "startTime": 1,
      "startTimestamp": 27.3,
      "finishTimestamp": 32.68
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 6.38,
      "dialogue": {
        "text": "Those are the ones, but we found something even better in your catalog, these high capacity ones here.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 6.88
    }
  ]
}
```
