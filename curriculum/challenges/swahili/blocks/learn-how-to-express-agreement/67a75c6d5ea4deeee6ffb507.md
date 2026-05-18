---
id: 67a75c6d5ea4deeee6ffb507
title: Zoezi la 21
challengeType: 19
dashedName: task-21
lang: en-US
---

<!-- (Audio) Linda: Absolutely. And I can also prepare some user scenarios for testing, so we can ensure a smooth user experience. -->

# --instructions--

Sikiliza sauti na ujibu swali lililopo hapa chini.

# --questions--

## --text--

Linda anatoa kufanya nini?  

## --answers--  

Tayarisha hali za mtumiaji kwa ajili ya majaribio.  

---  

Ruka hatua ya majaribio.  

### --feedback--  

Linda hapendekezi kuruka majaribio; anachangia kikamilifu katika hilo.  

---  

Muombe mtu mwingine ashughulikie majaribio ya mtumiaji.  

### --feedback--  

Linda hahamishi zoezi hilo kwa mtu mwingine.  

---  

Buni upya kiolesura cha mtumiaji kutoka mwanzo.  

### --feedback--  

Linda hasemi kuhusu kubuni upya kiolesura.  

## --video-solution--  

1  

# --explanation--  

Sikiliza maneno muhimu yanayoonyesha anachotaka Linda kufanya.  

`I can also` – Hii inaonyesha anajitolea kuchangia.  

`Prepare some user scenarios for testing` – Hii inaeleza wazi zoezi analolichukua jukumu la kufanya.  

`Ensure a smooth user experience` – Hii inaeleza kwa nini majaribio ni muhimu na kuimarisha dhamira yake kwa mradi.  

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_10-1.mp3",
      "startTime": 1,
      "startTimestamp": 20.86,
      "finishTimestamp": 26.68
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 6.82,
      "dialogue": {
        "text": "Absolutely. And I can also prepare some user scenarios for testing so we can ensure a smooth user experience.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.32
    }
  ]
}
```
