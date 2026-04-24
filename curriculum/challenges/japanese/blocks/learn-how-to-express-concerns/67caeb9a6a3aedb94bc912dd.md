---
id: 67caeb9a6a3aedb94bc912dd
title: タスク129
challengeType: 22
dashedName: task-129
lang: en-US
---

<!-- (Audio) Maria: They also said the communication isn't great because they often don't hear about changes until it's too late. -->

# --instructions--

音声を聞いて、以下の文を完成させてください。  

# --fillInTheBlank--

## --sentence--

`They BLANK said the communication isn't great because they BLANK don't hear about changes until it's too late.`  

## --blanks--

`also`  

### --feedback--

これは「加えて」や「～もまた」という意味です。

---  

`often`  

### --feedback--

これは「頻繁に」や「何度も」という意味です。

# --explanation--

`Also` は、前に述べたことに加えてという意味です。例えば：

`She speaks English and also knows French.` - これは彼女が英語に加えてフランス語も知っているという意味です。  

`Often` は、頻繁にまたは定期的にという意味です。例えば：

`He often works late on Fridays.` - これは彼が金曜日に何度もまたは定期的に遅くまで働くという意味です。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 34.9,
      "finishTimestamp": 40.12
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
      "finishTime": 3.18,
      "dialogue": {
        "text": "They also said the communication isn't great",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3.18,
      "finishTime": 6.22,
      "dialogue": {
        "text": "because they often don't hear about changes until it's too late.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 6.72
    }
  ]
}
```
