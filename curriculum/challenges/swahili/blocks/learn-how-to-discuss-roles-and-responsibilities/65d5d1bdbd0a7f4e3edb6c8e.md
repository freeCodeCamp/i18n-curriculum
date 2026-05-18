---
id: 65d5d1bdbd0a7f4e3edb6c8e
title: Zoezi la 35
challengeType: 19
dashedName: task-35
lang: en-US
---

<!-- (Audio) Tom: Hey, have you ever worked with Anna from HR? -->

# --description--

Sikiliza sauti na ujibu swali.

# --questions--

## --text--

Tom anaulizia nini?

## --answers--

Je, Anna anafanya kazi katika HR

### --feedback--

Swali la Tom linahusu hasa kama mtu huyo amewahi kufanya kazi na Anna, si kuhusu jukumu la Anna.

---

Je, Alice amewahi kupata uzoefu wa kufanya kazi na Anna.

---

Je, unapenda kufanya kazi katika HR

### --feedback--

Swali linahusu uzoefu wa zamani na Anna, si hisia binafsi kuhusu kufanya kazi katika HR.

---

Je, Anna amewahi kufanya kazi

### --feedback--

Makini ya swali la Tom ni uzoefu wa msikilizaji na Anna, si historia ya kazi ya Anna.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 2.88
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 3.88,
      "dialogue": {
        "text": "Hey, have you ever worked with Anna from HR?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.38
    }
  ]
}
```
