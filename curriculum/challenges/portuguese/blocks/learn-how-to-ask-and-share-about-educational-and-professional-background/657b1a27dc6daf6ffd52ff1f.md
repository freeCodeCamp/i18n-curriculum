---
id: 657b1a27dc6daf6ffd52ff1f
title: Tarefa 30
challengeType: 19
dashedName: task-30
lang: en-US
---

<!-- (Audio) Anna: Excellent. Can you share details about your educational background? Were you trained in a specific field?
Second Candidate: Yes. I have a master's degree in computer science. -->

# --description--

Em inglês, o substantivo com o sufixo `'s` seguido por uma segunda estrutura de substantivo é usado para mostrar posse ou pertencimento.

Se o primeiro substantivo estiver no singular, como em `Sarah's laptop`, isso indica que o laptop pertence a Sarah. No entanto, se o primeiro substantivo estiver no plural, a estrutura muda para o substantivo seguido de `'`, como em `teachers' office`, indicando um escritório para professores.

# --questions--

## --text--

A que se refere `master's degree` no contexto do diálogo?

## --answers--

Um diploma para professores escolares

### --feedback--

`Master's degree` refere-se a um grau acadêmico avançado, não especificamente para professores.

---

Um grau educacional de nível primário

### --feedback--

`Master's degree` é uma qualificação de ensino superior, além do nível primário.

---

Um grau em domínio de habilidades

### --feedback--

Embora implique especialização, `master's degree` refere-se especificamente a uma qualificação acadêmica.

---

Um grau acadêmico avançado

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Anna",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      },
      {
        "character": "Second Candidate",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 43.44,
      "finishTimestamp": 51.78
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
      "finishTime": 5.72,
      "dialogue": {
        "text": "Excellent. Can you share details about your educational background? Were you trained in a specific field?",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6
    },
    {
      "character": "Second Candidate",
      "opacity": 1,
      "startTime": 6
    },
    {
      "character": "Second Candidate",
      "startTime": 6.36,
      "finishTime": 9.34,
      "dialogue": {
        "text": "Yes. I have a master's degree in computer science.",
        "align": "center"
      }
    },
    {
      "character": "Second Candidate",
      "opacity": 0,
      "startTime": 9.84
    }
  ]
}
```
