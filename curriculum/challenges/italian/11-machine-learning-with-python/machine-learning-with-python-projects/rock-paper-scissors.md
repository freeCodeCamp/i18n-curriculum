---
id: 5e46f8d6ac417301a38fb92d
title: Carta Sasso Forbici
challengeType: 10
forumTopicId: 462376
dashedName: rock-paper-scissors
---

# --description--

For this challenge, you will create a program to play Rock, Paper, Scissors. A program that picks at random will usually win 50% of the time. To pass this challenge your program must play matches against four different bots, winning at least 60% of the games in each match.

You will be <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-rock-paper-scissors/" target="_blank" rel="noopener noreferrer nofollow">working on this project with our Gitpod starter code</a>.

Stiamo ancora sviluppando la parte di didattica interattiva per il programma di machine learning. Per ora, dovrai utilizzare altre risorse per imparare a superare questa sfida.

# --instructions--

Nel file `RPS.py` ti è data una funzione chiamata `player`. La funzione prende un argomento che è una stringa che descrive l'ultima mossa dell'avversario ("R" per sasso, "P" per carta, o "S" per forbici). La funzione dovrebbe restituire una stringa che rappresenza la prossima mossa da giocare ("R", "P", o "S").

Una funzione giocatore riceverà una stringa vuota come argomento per la prima mano in una partita visto che non ci sono mani precedenti.

Il file `RPS.py` mostra una funzione di esempio che devi aggiornare. La funzione di esempio è definita con due argomenti (`player(prev_play, opponent_history = [])`). La funzione non è mai chiamata con un secondo argomento, quindi quello è completamente opzionale. La ragione per cui la funzione di esempio contiene un secondo argomento (`opponent_history = []`) è perché è l'unico modo per salvare lo stato tra invocazioni consecutive della funzione `player`. Hai bisogno dell'argomento `opponent_history` solo se vuoi tenere traccia delle mosse del tuo avversario.

*Suggerimento: per sconfiggere tutti e quattro gli avversari, il tuo programma potrebbe avere bisogno di diverse strategie che cambiano a seconda di come gli avversari giocano.*

## Development

Non cambiare `RPS_game.py`. Scrivi tutto il tuo codice in `RPS.py`. Per lo sviluppo, puoi usare `main.py` per testare il tuo codice.

`main.py` importa la funzione di gioco e i bot da `RPS_game.py`.

Per testare il tuo codice, fai una partita usando la funzione `play`. La funzione `play` prende quattro argomenti:

- two players to play against each other (the players are actually functions)
- il numero di mani da giocare nella partita
- un argomento opzionale per vedere la storia di ogni partita. Impostalo su `True` per vedere questi messaggi.

```py
play(player1, player2, num_games[, verbose])
```

Per esempio, ecco come chiamare la funzione se vuoi che `player` e `quincy` giochino 1000 mani uno contro l'altro e vuoi vedere il risultato di ogni mano:

```py
play(player, quincy, 1000, verbose=True)
```

## Test

I test unitari per questo progetto sono in `test_module.py`. Abbiamo importato i test da `test_module.py` in `main.py` per tua convenienza. If you uncomment the last line in `main.py`, the tests will run automatically whenever you run `python main.py` in the console.

## Invio

Copia l'URL del tuo progetto e consegnalo nell'input qua sotto.

# --hints--

Dovrebbe superare tutti i test Python.

```js

```

# --solutions--

```py
  # Python challenges don't need solutions,
  # because they would need to be tested against a full working project.
  # Please check our contributing guidelines to learn more.
```
