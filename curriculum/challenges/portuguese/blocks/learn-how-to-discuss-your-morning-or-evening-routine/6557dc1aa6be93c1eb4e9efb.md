---
id: 6557dc1aa6be93c1eb4e9efb
title: Tarefa 29
challengeType: 19
dashedName: task-29
lang: en-US
---

<!-- (Audio) Sarah: Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team. -->

# --description--

A palavra `if` significa "se ou não". Por exemplo:

`She checks her emails to see if there are any urgent updates.` - Isso significa que ela está verificando para descobrir se existem atualizações urgentes.

`If` também pode fazer parte de uma declaração condicional, que mostra uma situação possível e seu resultado. Por exemplo:

`If there are urgent updates, I will reply immediately.` - Isso significa que a resposta depende da condição de haver atualizações urgentes.

# --questions--

## --text--

O que Sarah implica ao usar `if` em sua declaração sobre verificar e-mails e mensagens?

## --answers--

Ela sempre encontra atualizações urgentes da equipe dela.

### --feedback--

`If` não sugere certeza de encontrar atualizações urgentes.

---

Às vezes há atualizações urgentes, às vezes não.

---

Ela nunca verifica seus e-mails e mensagens.

### --feedback--

Sarah na verdade afirma que ela verifica seus e-mails e mensagens.

---

Verificar e-mails não faz parte da rotina dela.

### --feedback--

Sarah menciona que verificar e-mails e mensagens faz parte da sua rotina.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 55.08,
      "finishTimestamp": 60.78
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
      "finishTime": 6.70,
      "dialogue": {
        "text": "Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 7.20
    }
  ]
}
```
