---
id: 699eff4a6eefcef5c1d1059a
title: Aufgabe 24
challengeType: 22
dashedName: task-24
lang: es
---
<!-- (Audio) Basti: El dominio es q-u-e-t-z-a-l punto g-t. -->

# --description--

Das Wort `dominio` bezeichnet den Hauptteil einer Webadresse, üblicherweise den Abschnitt, der nach dem `@` in einer E-Mail oder nach `www` auf einer Website folgt.

Es wird häufig verwendet, wenn E-Mail-Adressen und URLs angegeben oder bestätigt werden. Zum Beispiel:

`El dominio es gmail punto com.` – Die Domain ist gmail.com.

`¿Cuál es el dominio?` – Was ist die Domain?

# --instructions--

Hören Sie sich die Audiodatei an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`El BLANK es q-u-e-t-z-a-l punto g-t.`

## --blanks--

`dominio`

### --feedback--

Dieses Substantiv bezeichnet den Hauptteil einer Web- oder E-Mail-Adresse.

# --explanation--

`Dominio` ist ein Substantiv, das den Domain-Teil einer E-Mail-Adresse oder Website benennt.

Es erscheint häufig, wenn Menschen digitale Kontaktinformationen buchstabieren oder bestätigen.

# --scene--

```json
{
  "setup": {
    "background": "desk.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 54.95,
      "finishTimestamp": 64.01
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 10.06,
      "dialogue": {
        "text": "El dominio es q-u-e-t-z-a-l punto g-t.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 10.56
    }
  ]
}
```
