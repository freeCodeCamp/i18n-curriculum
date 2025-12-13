---
id: 6903d3c4ccae5fffec5f3cbc
title: Tarefa 4
challengeType: 19
dashedName: task-4
lang: es
---

<!-- (Audio) Mateo: Soy puertorriqueño. -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

Qual é a nacionalidade de Mateo?

## --answers--

`Chileno`

### --feedback--

Esta opção se refere a alguém do Chile.

---

`Peruano`

### --feedback--

Esta palavra descreve uma pessoa do Peru.

---

`Puertorriqueño`

---

`Colombiana`

### --feedback--

Isso se refere a uma mulher da Colômbia e a terminação `-a` indica a forma feminina, que não corresponde a Mateo.

## --video-solution--

3

# --explanation--

`Soy` ("I am") vem do verbo `ser` e é usado para expressar identidade, nacionalidade ou profissão. Por exemplo:

- `Soy chilena.` – Sou chilena.

- `Soy chileno.` – Sou chileno.

- `Soy puertorriqueña` - Eu sou porto-riquenha. (feminino)

- `Soy puertorriqueño` - Eu sou porto-riquenho. (masculino)

- `Soy canadiense.` – Eu sou canadense. (neutro)

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
    "characters": [
      {
        "character": "Mateo",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_spanish_meet_mateo.mp3",
      "startTime": 1,
      "startTimestamp": 5.81,
      "finishTimestamp": 7.13
    }
  },
  "commands": [
    {
      "character": "Mateo",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mateo",
      "startTime": 1,
      "finishTime": 2.32,
      "dialogue": {
        "text": "Soy puertorriqueño.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "opacity": 0,
      "startTime": 2.82
    }
  ]
}
```
