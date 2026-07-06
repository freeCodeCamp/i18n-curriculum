---
id: 657ddcd61f516cacdc7a04ca
title: المهمة 128
challengeType: 19
dashedName: task-128
lang: en-US
---

<!-- (audio) Maria: The bookstores I remember are all downtown. But there's a bus that stops two blocks away. -->

# --description--

تُخبر ماريا توم عن خيارات النقل العام، مخصصةً ذكر وسيلة نقل تتوقف بالقرب. هذا مهم للتنقل في المدينة، خصوصًا إلى الأماكن التي لا يمكن الوصول إليها سيرًا على الأقدام.

`Two blocks away` تعني أنه يجب أن تمشي عبر تقاطعين شارعين لتصل إلى المكان. إنها مسافة قصيرة في المدينة.

`Downtown` هو مركز المدينة حيث توجد العديد من المتاجر والمطاعم، وعادةً ما تكون هناك مبانٍ شاهقة.

# --questions--

## --text--

ما الذي تقول ماريا إنه يتوقف على بعد تقاطعين؟

## --answers--

سيارة أجرة

### --feedback--

تذكر ماريا خيار نقل عام، وليس خدمة خاصة.

---

قطار

### --feedback--

القطارات عادة لا تتوقف عند التقاطعات؛ بل تتوقف في المحطات.

---

حافلة

---

تأجير دراجات

### --feedback--

التأجير عادة خدمات ثابتة، وليس شيئًا يتوقف.

## --video-solution--

3

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
      "filename": "1.3-5.mp3",
      "startTime": 1,
      "startTimestamp": 37.92,
      "finishTimestamp": 42.38
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
      "finishTime": 5.46,
      "dialogue": {
        "text": "The bookstores I remember are all downtown. But there's a bus that stops two blocks away.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.96
    }
  ]
}
```
