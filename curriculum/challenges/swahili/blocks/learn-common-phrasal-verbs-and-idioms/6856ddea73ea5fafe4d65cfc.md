---
id: 6856ddea73ea5fafe4d65cfc
title: Zoezi la 95
challengeType: 19
dashedName: task-95
lang: en-US
---

<!-- (Audio) Jake: We could incorporate an interactive quiz during the onboarding process. It could teach users how to recognize and handle potential phishing attempts. -->

<!-- SPEAKING -->

# --instructions--

Sikiliza sauti na jibu swali lililopo hapa chini.

# --questions--

## --text--

Linda angeweza kupongeza wazo la Jake vipi?

## --answers--

`That's an excellent suggestion.`

### --audio-id--

EN02a86d00

---

`Are you sure that would work?`

### --audio-id--

EN13416258

### --feedback--

Hii inaonekana kuwa na shaka, si ya kuunga mkono.

## --video-solution--

1

# --explanation--

`That's an excellent suggestion` ni njia ya heshima na chanya ya kupongeza wazo la mtu kwa kuonyesha makubaliano makubwa na idhini. Kwa mfano:

- **Mbunifu wa picha:** `Let's add more visuals to the report.` – Mtu huyu anapendekeza kuingiza picha na michoro zaidi kwenye ripoti ili kuifanya ionekane wazi zaidi.

- **Msimamizi wa mradi:** `That's an excellent suggestion.` – Hii ina maana mtu anadhani wazo ni zuri sana na lina msaada.

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
