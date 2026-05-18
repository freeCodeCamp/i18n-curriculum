---
id: 67aa23adedb02b11aaceda26
title: Zoezi la 8
challengeType: 19
dashedName: task-8
lang: en-US
---

<!-- (Audio) Anna: While furniture is important, many people mentioned that their computers need upgrades. -->

# --instructions--

Sikiliza sauti na jibu swali lililopo hapa chini.

# --questions--

## --text--

Ni nini muhimu zaidi, kulingana na Anna?

## --answers--

Kuboresha kompyuta.

---

Kununua samani mpya za ofisi.

### --feedback--

Anna anakubali kuwa samani ni muhimu lakini anasema watu wengi walitaja wanahitaji kitu kingine.

---

Kupata ruzuku kubwa zaidi ya kazi za mbali.

### --feedback--

Anna hasemi kuhusu kuongeza ruzuku, bali jinsi watu wanavyotaka kuitumia.

---

Kubadilisha maswali ya utafiti.

### --feedback--

Anna hakutaja chochote kuhusu maswali ya utafiti.

## --video-solution--

1

# --explanation--

`computer upgrade` inamaanisha kuboresha kompyuta kwa kuongeza au kubadilisha sehemu kama kumbukumbu zaidi (RAM), processor yenye kasi zaidi, au skrini bora. Kwa mfano:

- `I need a computer upgrade to run the latest software.` - Kompyuta ya mzungumzaji kwa sasa haina nguvu ya kutosha, hivyo wanahitaji bora zaidi.

- `After the computer upgrade, everything runs much faster.` - Utendaji wa mfumo uliboreshwa baada ya kusasisha au kubadilisha sehemu.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 12.06,
      "finishTimestamp": 15.8
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 4.74,
      "dialogue": {
        "text": "While furniture is important, many people mentioned that their computers need upgrades.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 5.24
    }
  ]
}
```
