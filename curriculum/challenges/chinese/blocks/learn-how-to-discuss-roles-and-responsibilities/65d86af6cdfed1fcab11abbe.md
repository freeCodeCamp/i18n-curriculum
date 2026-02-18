---
id: 65d86af6cdfed1fcab11abbe
title: 任务 70
challengeType: 22
dashedName: task-70
lang: en-US
---

<!-- (Audio) Maria: He also ensures that everyone follows security procedures. -->

# --description--

`Follow security procedures` 意味着按照设计用来保护场所或人员安全的规则或步骤行事。这在许多领域尤其是工作场所非常重要，以防止问题或危险。

你已经了解到，在 `everyone` 之后，你应该使用动词的第三人称单数形式，因为 `everyone` 被视为组内的每个人，单独对待。

# --fillInTheBlank--

## --sentence--

`He also ensures that everyone BLANK BLANK BLANK.`

## --blanks--

`follows`

### --feedback--

这是动词的单数形式，表示每个人都执行该动作。

---

`security`

### --feedback--

这个词意味着保护人、地点或物品免受危险或伤害。 

---

`procedures`

### --feedback--

这些是需要遵循的安全步骤或规则。

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
