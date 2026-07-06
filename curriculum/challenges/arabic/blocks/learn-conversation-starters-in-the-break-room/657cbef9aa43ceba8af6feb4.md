---
id: 657cbef9aa43ceba8af6feb4
title: المهمة 51
challengeType: 22
dashedName: task-51
lang: en-US
---

<!-- (audio) Sophie: I think she has a passion for technology and enjoys leading our team. -->

# --description--

عندما تحب فعل شيء كثيرًا، يمكنك أن تقول إنك `enjoy` هذا الشيء. هذه طريقة بسيطة للتعبير عن أن شيئًا ما يجعلك سعيدًا.

على سبيل المثال، يمكنك أن تقول: `I enjoy playing video games`. هذا يعني أن لعب ألعاب الفيديو ممتع بالنسبة لك.

في الحوار، تخبر صوفي عن شيء تستمتع ماريا به في عملها.

# --fillInTheBlank--

## --sentence--

`I think she has a passion for technology and she BLANK leading our team.`

## --blanks--

`enjoys`

### --feedback--

هذا الفعل يعني أن ماريا تحب شيئًا وتشعر بالسعادة عند القيام به. وينتهي بـ `-s`.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 8.50,
      "finishTimestamp": 11.88
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
      "finishTime": 4.38,
      "dialogue": {
        "text": "I think she has a passion for technology and she enjoys leading our team.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.88
    }
  ]
}
```
