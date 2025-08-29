---
id: 5e46f8edac417301a38fb930
title: Gesundheitskostenrechner mit einer linearen Regression
challengeType: 10
forumTopicId: 462379
dashedName: linear-regression-health-costs-calculator
---

# --description--

You will be <a href="https://colab.research.google.com/github/freeCodeCamp/boilerplate-linear-regression-health-costs-calculator/blob/master/fcc_predict_health_costs_with_regression.ipynb" target="_blank" rel="noopener noreferrer nofollow">working on this project with Google Colaboratory</a>.

Nachdem du diesen Link aufgerufen hast, erstelle eine Kopie des Notizbuchs entweder in deinem eigenen Konto oder vor Ort. Sobald du das Projekt abgeschlossen hast und es den Test bestanden hat (unter diesem Link enthalten), reiche deinen Projektlink unten ein. Wenn du einen Google Colaboratory-Link übermittelst, stelle sicher, dass du die Linkfreigabe für alle Personen, die den Link verwenden, aktivierst.

Wir sind noch dabei, die interaktiven Lehrinhalte für den Lehrplan zum maschinellen Lernen zu entwickeln. Vorerst kannst du die Video-Herausforderungen in dieser Zertifizierung durchgehen. Möglicherweise musst du auch nach zusätzlichen Lernressourcen suchen, ähnlich wie bei der Arbeit an einem realen Projekt.

# --instructions--

In dieser Herausforderung wirst du die Kosten des Gesundheitswesens anhand eines Regressionsalgorithmus vorhersagen.

Du erhälst einen Datensatz, der Informationen über verschiedene Personen, einschließlich ihrer Gesundheitskosten, enthält. Nutze die Daten, um die Kosten des Gesundheitswesens anhand neuer Daten vorherzusagen.

Die ersten beiden Zellen dieses Notizbuchs importieren sowohl die Bibliotheken und Daten.

Stelle sicher, dass du kategorische Daten in Zahlen umwandelst. Benutze 80% der Daten als `train_dataset` und 20% der Daten als `test_dataset`.

Trenn die "expenses" Spalte von diesem Datensatz mittels `pop`, um neue Datensätze namens `train_labels` und `test_labels` zu erstellen. Benutze diese Labels, wenn du dein Modell trainierst.

Erstelle ein Modell und trainiere es mit dem `train_dataset`. Führe die letzte Zelle in diesem Notebook aus, um das Modell zu prüfen. Die letzte Zelle wird das unsichtbare `test_dataset` verwenden, um zu prüfen, wie gut das Modell verallgemeinert.

Um diese Herausforderung zu meistern, muss `model.evaluate` einen mittleren absoluten Fehler von unter 3500 zurückgeben. Das bedeutet, dass es die Kosten für die Gesundheitsversorgung innerhalb eines Rahmens von $3500 richtig vorhersagt.

Die letzte Zelle wird auch Ausgaben mit Hilfe des `test_dataset` vorhersagen und die Ergebnisse grafisch darstellen.

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
