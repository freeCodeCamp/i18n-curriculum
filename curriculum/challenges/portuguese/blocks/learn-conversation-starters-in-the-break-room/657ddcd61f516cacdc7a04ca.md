---
id: 657ddcd61f516cacdc7a04ca
title: Tarefa 128
challengeType: 19
dashedName: task-128
---

<!-- (audio) Maria: The bookstores I remember are all downtown. But there's a bus that stops two blocks away. -->

# --description--

Maria informa Tom sobre as opções de transporte público, mencionando especificamente um transporte que para nas proximidades.Isso é importante para se locomover pela cidade, especialmente para lugares que não estão a uma distância que se possa ir a pé.

`Two blocks away` significa que você precisa passar por duas esquinas para chegar a um lugar.É uma caminhada curta em uma cidade.

`Downtown` é o coração de uma cidade onde há muitas lojas, restaurantes e geralmente prédios altos.

# --questions--

## --text--

O que Maria diz que para a duas quadras de distância?

## --answers--

Um táxi

### --feedback--

Maria menciona uma opção de transporte público, não um serviço privado.

---

Um trem

### --feedback--

Trens normalmente não param em blocos; eles param em estações.

---

Um barramento

---

Um aluguel de bicicleta

### --feedback--

Aluguéis geralmente são serviços estacionários, não algo que para.

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
