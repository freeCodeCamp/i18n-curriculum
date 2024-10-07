---
id: 5e46f8d6ac417301a38fb92d
title: Schere Stein Papier
challengeType: 10
forumTopicId: 462376
dashedName: rock-paper-scissors
---

# --description--

For this challenge, you will create a program to play Rock, Paper, Scissors. A program that picks at random will usually win 50% of the time. To pass this challenge your program must play matches against four different bots, winning at least 60% of the games in each match.

Du wirst <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-rock-paper-scissors/" target="_blank" rel="noopener noreferrer nofollow"> an diesem Projekt mi unserem Gitpod-Startercode Arbeiten.</a>.

Wir sind noch dabei, den interaktiven Teil des Python-Kurses zu entwickeln. Momentan musst du noch andere Ressourcen verwenden, um zu lernen, wie man diese Herausforderung meistert.

# --instructions--

In der `RPS.py`-Datei wird dir eine Funktion namens `player` gegeben. Die Funktion verwendet ein Argument, welches ein String ist, die den letzten Zug des Gegners beschreibt ("R", "P", or "S"). Die Funktion sollte einen String zurückgeben, der den nächsten Zug darstellt ("R", "P", or "S").

Eine Spieler-Funktion erhält einen leeren String als Argument für das erste Spiel in einem Spiel, da es kein vorheriges Spiel gibt.

Die Datei `RPS.py` zeigt eine Beispielfunktion an, die du aktualisieren musst. Die Beispielfunktion wird mit zwei Argumenten (`player(prev_play, opponent_history = [])`) definiert. Die Funktion wird nie mit einem zweiten Argument aufgerufen, so dass eines komplett optional ist. Der Grund, warum die Beispielfunktion ein zweites Argument (`opponent_history = []`) enthält, liegt darin, dass dies die einzige Möglichkeit ist, den Zustand zwischen aufeinanderfolgenden Aufrufen der `player` Funktion zu speichern. Du brauchst nur das `opponent_history` Argument, wenn du den Überblick über die opponent_history behalten möchtest.

*Tipp: Um alle vier Gegner zu besiegen, muss dein Programm möglicherweise mehrere Strategien haben, die sich je nach Spielart des Gegners ändern.*

## Development

Ändere `RPS_game.py` nicht. Schreibe deinen ganzen Code in `RPS.py`. Für die Entwicklung kannst du `main.py` verwenden, um deinen Code zu testen.

`main.py` importiert die Spielfunktion und Bots von `RPS_game.py`.

Um deinen Code zu testen, spiele ein Spiel mit der `play` Funktion. Die `play` Funktion benötigt vier Argumente:

- two players to play against each other (the players are actually functions)
- die Anzahl der zu spielenden Spiele im Spiel
- ein optionales Argument, um den Log jedes Spiels zu sehen. Setze es auf `True`, um diese Nachrichten zu sehen.

```py
play(player1, player2, num_games[, verbose])
```

Hier ist zum Beispiel, wie du die Funktion aufrufen würdest, wenn du wollen würdest, dass `player` und `quincy` 1000 Spiele gegeneinander spielen und du die Ergebnisse jedes Spiels sehen möchstest:

```py
play(player, quincy, 1000, verbose=True)
```

## Prüfung

Die Einheitstests für dieses Projekt befinden sich in `test_module.py`. Wir haben die Tests von `test_module.py` zu `main.py` bereits für dich importiert. If you uncomment the last line in `main.py`, the tests will run automatically whenever you run `python main.py` in the console.

## Einreichung

Kopiere die URL deines Projekts und übermittle sie an freeCodeCamp.

# --hints--

Es sollte alle Python-Tests bestehen.

```js

```

# --solutions--

```py
  # Python challenges don't need solutions,
  # because they would need to be tested against a full working project.
  # Please check our contributing guidelines to learn more.
```
