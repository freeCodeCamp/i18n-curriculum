---
id: 657ddcd61f516cacdc7a04ca
title: Tarea 128
challengeType: 19
dashedName: task-128
lang: en-US
---

<!-- (audio) Maria: The bookstores I remember are all downtown. But there's a bus that stops two blocks away. -->

# --description--

Maria informa a Tom sobre las opciones de transporte público, mencionando específicamente un transporte que para cerca. Esto es importante para moverse por la ciudad, especialmente a lugares que no están a poca distancia a pie.

`Two blocks away` significa que necesitas pasar dos esquinas para llegar a un lugar. Es un paseo corto en una ciudad.

`Downtown` es el corazón de una ciudad donde hay muchas tiendas, restaurantes, y generalmente edificios altos.

# --questions--

## --text--

¿Qué dice María que para a dos cuadras de distancia?

## --answers--

Un taxi

### --feedback--

Maria menciona una opción de transporte público, no un servicio privado.

---

Un tren

### --feedback--

Los trenes no suelen parar en manzanas; paran en estaciones.

---

Un bus

---

Un alquiler de bicicletas

### --feedback--

Los alquileres son generalmente servicios estacionarios, no algo que para.

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
