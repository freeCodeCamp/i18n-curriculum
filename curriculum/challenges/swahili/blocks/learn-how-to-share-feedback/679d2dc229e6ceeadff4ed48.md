---
id: 679d2dc229e6ceeadff4ed48
title: Zoezi la 92
challengeType: 22
dashedName: task-92
lang: en-US
---

<!-- (Audio) James: Do you think we need to update the software again? If we do, it might delay other projects. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi iliyo hapa chini.

# --fillInTheBlank--

## --sentence--

`Do you think we need to update the software again? If we BLANK, it might BLANK other projects.`

## --blanks--

`do`

### --feedback--

Neno hili hutumika kuepuka kurudia kitenzi `update` kutoka kwenye sentensi iliyotangulia.

---

`delay`

### --feedback--

Neno hili linamaanisha kuchelewesha au kufanya jambo lifanyike baadaye kuliko ilivyopangwa.

# --explanation--

Badala ya kusema `If we update the software, it might delay other projects.`, James alilifupisha kuwa `If we do`. Neno `do` hutumika mara nyingi kuepuka kurudia kitenzi au usemi kamili ulio tumika kwenye sentensi iliyotangulia. Kwa mfano:

`She wants to join the meeting, and if she does, she'll need the link.` - Badala ya kusema `if she joins the meeting`, unaweza kutumia `does` kuibadilisha na kwa njia hii unaweza kuepuka kurudia.

`To delay` linamaanisha kufanya jambo lifanyike baadaye kuliko ilivyopangwa. Kwa mfano:

`The flight was delayed due to bad weather.` - Hii inamaanisha ndege ilicheleweshwa na haikuondoka kwa wakati.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 26.86,
      "finishTimestamp": 31.46
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 2.88,
      "dialogue": {
        "text": "Do you think we need to update the software again?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "startTime": 3.16,
      "finishTime": 5.6,
      "dialogue": {
        "text": "If we do, it might delay other projects.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 6.1
    }
  ]
}
```
