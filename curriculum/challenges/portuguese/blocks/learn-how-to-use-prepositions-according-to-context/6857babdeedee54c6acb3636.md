---
id: 6857babdeedee54c6acb3636
title: Tarefa 134
challengeType: 19
dashedName: task-134
---

<!-- (Audio) Sarah: If you head straight down this corridor and turn left at the break area, you'll see them stored right across from the coffee machine. -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

Onde os monitores estão armazenados agora?

## --answers--

No final do estacionamento.

### --feedback--

Sarah não menciona o estacionamento.

---

Dentro da sala de TI.

### --feedback--

Eles foram removidos da sala de TI mais cedo.

---

Ao lado da mesa de segurança.

### --feedback--

Não há menção a uma mesa de segurança.

---

Bem perto da máquina de café.

## --video-solution--

4

# --explanation--

Sarah dá instruções claras terminando com um ponto de referência: `the coffee machine`.

Ela explica que depois de descer pelo corredor e virar à esquerda, os monitores podem ser encontrados posicionados em frente a ele, fazendo da máquina de café o ponto de referência visível mais próximo para encontrá-los.

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
      "filename": "B1_22-3.mp3",
      "startTime": 1,
      "startTimestamp": 12.68,
      "finishTimestamp": 18.22
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
      "finishTime": 6.54,
      "dialogue": {
        "text": "If you head straight down this corridor and turn left at the break area, you'll see them stored right across from the coffee machine.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 7.04
    }
  ]
}
```
