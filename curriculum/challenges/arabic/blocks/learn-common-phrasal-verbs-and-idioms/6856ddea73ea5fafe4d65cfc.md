---
id: 6856ddea73ea5fafe4d65cfc
title: المهمة 95
challengeType: 19
dashedName: task-95
lang: en-US
---

<!-- (Audio) Jake: We could incorporate an interactive quiz during the onboarding process. It could teach users how to recognize and handle potential phishing attempts. -->

<!-- SPEAKING -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

كيف يمكن لـ Linda أن تمدح فكرة Jake؟

## --answers--

`That's an excellent suggestion.`

### --audio-id--

EN02a86d00

---

`Are you sure that would work?`

### --audio-id--

EN13416258

### --feedback--

هذا يبدو مشكوكًا فيه، وليس داعمًا.

## --video-solution--

1

# --explanation--

`That's an excellent suggestion` طريقة مهذبة وإيجابية لمدح فكرة شخص ما من خلال إظهار موافقة قوية وموافقة. على سبيل المثال:

- **مصمم جرافيك:** `Let's add more visuals to the report.` – يقترح هذا الشخص دمج المزيد من الرسومات والصور في التقرير لجعله أكثر حيوية.

- **مدير مشروع:** `That's an excellent suggestion.` – يعني هذا أن الشخص يعتقد أن الفكرة جيدة جدًا ومفيدة.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_24-2.mp3",
      "startTime": 1,
      "startTimestamp": 74.74,
      "finishTimestamp": 82.58
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 3.06,
      "dialogue": {
        "text": "We could incorporate an interactive quiz",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "startTime": 3.06,
      "finishTime": 4.3,
      "dialogue": {
        "text": "during the onboarding process.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "startTime": 4.6,
      "finishTime": 6.36,
      "dialogue": {
        "text": "It could teach users how to recognize",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "startTime": 6.36,
      "finishTime": 8.84,
      "dialogue": {
        "text": "and handle potential phishing attempts.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 9.34
    }
  ]
}
```
