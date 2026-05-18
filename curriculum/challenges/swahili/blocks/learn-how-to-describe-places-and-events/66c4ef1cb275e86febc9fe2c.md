---
id: 66c4ef1cb275e86febc9fe2c
title: Zoezi la 113
challengeType: 22
dashedName: task-113
lang: en-US
---

<!-- Audio Reference:
Sarah: It should, but it's not displaying because the live server extension might not be running. -->

<!-- Audio Reference:
Sarah: It should, but it's not displaying because the live server extension might not be running. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`It should, but it's not BLANK because the live server extension might not be BLANK.`

## --blanks--

`displaying`

### --feedback--

Kitendo cha kuonyesha au kuonyesha kitu. Neno hili linaishia `-ing`.

---

`running`

### --feedback--

Inaonyesha kuwa ugani umewezeshwa na unafanya kazi. Neno hili linaishia `-ing`.

# --explanation--

Gerundi ni aina ya kitenzi inayomalizika kwa `-ing` na hufanya kazi kama nomino. Katika sentensi hii, `displaying` na `running` ni gerundi zinazobainisha vitendo vinavyoendelea. Kwa mfano:

- `Updating the software is essential.` - Hapa, `Updating` ni gerundi inayobainisha kitendo.

Katika sentensi ya Sarah, `displaying` na `running` zinaelezea vitendo vinavyohusiana na ugani wa seva hai na jinsi unavyofanya kazi.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_1-3.mp3",
      "startTime": 1,
      "startTimestamp": 12.62,
      "finishTimestamp": 16.66
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 2.62,
      "dialogue": {
        "text": "It should, but it's not displaying",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "startTime": 2.62,
      "finishTime": 5.04,
      "dialogue": {
        "text": "because the live server extension might not be running.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.54
    }
  ]
}
```
