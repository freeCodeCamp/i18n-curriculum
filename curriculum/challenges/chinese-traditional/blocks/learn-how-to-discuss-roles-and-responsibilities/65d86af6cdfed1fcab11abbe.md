---
id: 65d86af6cdfed1fcab11abbe
title: 任務 70
challengeType: 22
dashedName: task-70
lang: en-US
---

<!-- (Audio) Maria: He also ensures that everyone follows security procedures. -->

# --description--

`Follow security procedures` 意味著依照為保持場所或人員安全而設計的規則或步驟行事。在許多領域中，尤其是在工作場所，這非常重要，以防止問題或危險。

你學到在 `everyone` 之後，你應該使用動詞的第三人稱單數形式，因為 `everyone` 被視為群組中每個人，個別對待。

# --fillInTheBlank--

## --sentence--

`He also ensures that everyone BLANK BLANK BLANK.`

## --blanks--

`follows`

### --feedback--

這是動詞的單數形式，表示每個人都執行該動作。

---

`security`

### --feedback--

這個字意指保護人員、地點或物品免於危險或傷害。 

---

`procedures`

### --feedback--

這些是為了安全必須遵守的步驟或規則。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 33.80,
      "finishTimestamp": 36.56
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 3.76,
      "dialogue": {
        "text": "He also ensures that everyone follows security procedures.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 4.26
    }
  ]
}
```
