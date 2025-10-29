---
id: 67aa23adedb02b11aaceda26
title: Tarefa 8
challengeType: 19
dashedName: task-8
---

<!-- (Audio) Anna: While furniture is important, many people mentioned that their computers need upgrades. -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

O que é mais importante, segundo Anna?

## --answers--

Atualizando computadores.

---

Comprando novos móveis para escritório.

### --feedback--

Anna reconhece que móveis são importantes mas diz que muitas pessoas mencionaram precisar de outra coisa.

---

Recebendo um auxílio maior para trabalho remoto.

### --feedback--

Anna não fala sobre aumentar a bolsa, apenas sobre como as pessoas querem usá-la.

---

Alterando as perguntas da pesquisa.

### --feedback--

Anna não menciona nada sobre as perguntas da pesquisa.

## --video-solution--

1

# --explanation--

Uma `computer upgrade` significa melhorar um computador adicionando ou substituindo peças como mais memória (RAM), um processador mais rápido ou uma tela melhor.Por exemplo:

- `I need a computer upgrade to run the latest software.` - O computador atual do falante não é poderoso o suficiente, então ele precisa de um melhor.

- `After the computer upgrade, everything runs much faster.` - O desempenho do sistema melhorou após a atualização ou substituição dos componentes.

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
