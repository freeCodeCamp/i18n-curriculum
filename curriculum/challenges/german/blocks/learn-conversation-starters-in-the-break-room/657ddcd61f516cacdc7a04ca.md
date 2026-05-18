---
id: 657ddcd61f516cacdc7a04ca
title: Aufgabe 128
challengeType: 19
dashedName: task-128
lang: en-US
---

<!-- (audio) Maria: The bookstores I remember are all downtown. But there's a bus that stops two blocks away. -->

# --description--

Maria informiert Tom über öffentliche Verkehrsmittel und erwähnt dabei speziell ein Verkehrsmittel, das in der Nähe hält. Das ist wichtig, um sich in der Stadt fortzubewegen, besonders zu Orten, die nicht zu Fuß erreichbar sind.

`Two blocks away` bedeutet, dass Sie an zwei Straßenecken vorbeigehen müssen, um zu einem Ort zu gelangen. Es ist ein kurzer Fußweg in einer Stadt.

`Downtown` ist das Zentrum einer Stadt, wo es viele Geschäfte, Restaurants und meist hohe Gebäude gibt.

# --questions--

## --text--

Was sagt Maria, hält zwei Blocks entfernt?

## --answers--

Ein Taxi

### --feedback--

Maria erwähnt eine öffentliche Verkehrsmöglichkeit, keinen privaten Service.

---

Ein Zug

### --feedback--

Züge halten normalerweise nicht an Blocks, sondern an Bahnhöfen.

---

Ein Bus

---

Eine Fahrradvermietung

### --feedback--

Vermietungen sind normalerweise stationäre Dienste, keine Verkehrsmittel, die halten.

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
