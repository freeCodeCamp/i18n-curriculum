---
id: 5e46f8dcac417301a38fb92e
title: Katzen- und Hundebildklassifizierer
challengeType: 10
forumTopicId: 462377
dashedName: cat-and-dog-image-classifier
---

# --description--

You will be <a href="https://colab.research.google.com/github/freeCodeCamp/boilerplate-cat-and-dog-image-classifier/blob/master/fcc_cat_dog.ipynb" target="_blank" rel="noopener noreferrer nofollow">working on this project with Google Colaboratory</a>.

Nachdem du diesen Link aufgerufen hast, erstelle eine Kopie des Notizbuchs entweder in deinem eigenen Konto oder vor Ort. Sobald du das Projekt abgeschlossen hast und es den Test bestanden hat (unter diesem Link enthalten), reiche deinen Projektlink unten ein. Wenn du einen Google Colaboratory-Link übermittelst, stelle sicher, dass du die Linkfreigabe für alle Personen, die den Link verwenden, aktivierst.

Wir sind noch dabei, die interaktiven Lehrinhalte für den Lehrplan zum maschinellen Lernen zu entwickeln. Vorerst kannst du die Video-Herausforderungen in dieser Zertifizierung durchgehen. Möglicherweise musst du auch nach zusätzlichen Lernressourcen suchen, ähnlich wie bei der Arbeit an einem realen Projekt.

# --instructions--

Für diese Herausforderung vervollständige den Code, um Bilder von Hunden und Katzen zu klassifizieren. Du wirst TensorFlow 2.0 und Keras verwenden, um ein neuronales Netzwerk zu erstellen, das Bilder von Katzen und Hunden in mindestens 63% der Zeit richtig klassifiziert. (Extrapunkte, wenn du es auf 70% Genauigkeit bringst!)

Ein Teil des Codes wird dir gegeben, aber ein Teil des Codes musst du ausfüllen, um diese Herausforderung zu meistern. Lese die Anweisungen in jeder Textzelle, damit du weißt, was du in jeder Codezelle zu tun hast.

Die erste Codezelle importiert die erforderlichen Bibliotheken. In der zweiten Codezelle werden die Daten heruntergeladen und die Schlüsselvariablen festgelegt. Die dritte Zelle ist der erste Ort, an dem du deinen eigenen Code schreiben wirst.

Die Struktur der heruntergeladenen Datensatzdateien sieht folgendermaßen aus (du wirst feststellen, dass das Testverzeichnis keine Unterverzeichnisse hat und die Bilder nicht beschriftet sind):

```py
cats_and_dogs
|__ train:
    |______ cats: [cat.0.jpg, cat.1.jpg ...]
    |______ dogs: [dog.0.jpg, dog.1.jpg ...]
|__ validation:
    |______ cats: [cat.2000.jpg, cat.2001.jpg ...]
    |______ dogs: [dog.2000.jpg, dog.2001.jpg ...]
|__ test: [1.jpg, 2.jpg ...]
```

Du kannst Epochen und Batchgröße anpassen, wenn du willst, aber es ist nicht erforderlich.

Die folgenden Anweisungen beziehen sich auf bestimmte Zellennummern, die mit einem Kommentar am oberen Rand der Zelle angegeben werden (z. B. `# 3`).

## Cell 3

Jetzt bist du dran! Stelle jede der Variablen in dieser Zelle korrekt ein. (Sie sollten nicht mehr gleich `None` sein.)

Erstelle Bildgeneratoren für jeden der drei Bilddatensätze (Zug, Validierung, Test). Verwende `ImageDataGenerator`, um die Bilder zu lesen/dekodieren und in Fließkomma-Tensoren zu konvertieren. Verwende das Argument `rescale` (und vorerst keine anderen Argumente), um die Tensoren von Werten zwischen 0 und 255 auf Werte zwischen 0 und 1 umzuskalieren.

Verwende für die `*_data_gen` Variablen die `flow_from_directory Methode`. Gib die Stapelgröße, das Verzeichnis, die Zielgröße (`(IMG_HEIGHT, IMG_WIDTH)`), den Klassenmodus und alle anderen erforderlichen Angaben ein. `test_data_gen` wird der schwierigste sein. Für `test_data_gen`stelle sicher, dass `shuffle=False` an die `flow_from_directory` Methode übergeben wird. Dadurch wird sichergestellt, dass die endgültigen Vorhersagen in der Reihenfolge bleiben, die unser Test erwartet. Für `test_data_gen` wird es auch hilfreich sein, die Verzeichnisstruktur zu beobachten.


Nachdem du den Code ausgeführt hast, sollte die Ausgabe wie folgt aussehen:

```py
Found 2000 images belonging to 2 classes.
Found 1000 images belonging to 2 classes.
Found 50 images belonging to 1 class.
```

## Zelle 4

Die `plotImages` Funktion wird ein paar Mal verwendet, um Bilder zu zeichnen. Es benötigt ein Array von Bildern und eine Wahrscheinlichkeitsliste, obwohl die Wahrscheinlichkeitsliste optional ist. Dieser Code wird dir übergeben. Wenn du die `train_data_gen` Variable korrekt erstellt hast, wird diese Zelle fünf zufällige Trainingsbilder zeichnen.

## Zelle 5

Erstelle den `train_image_generator` unter Verwendung von `ImageDataGenerator`.

Da es nur eine kleine Anzahl von Trainingsbeispielen gibt, besteht die Gefahr einer Überanpassung. Eine Möglichkeit, dieses Problem zu beheben, ist die Erstellung von Schulungsdaten aus bestehenden Schulungsbeispielen durch Verwendung von willkürlichen Transformationen.

Füge 4-6 zufällige Transformationen als Argumente zu  `ImageDataGenerator` hinzu. Vergewissere dich, dass die Skalierung dieselbe ist wie zuvor.

## Zelle 6

Für diese Zelle musst du nichts tun. `train_data_gen` wird wie zuvor mit dem neuen `train_image_generator` erstellt. Dann wird ein einzelnes Bild fünfmal mit verschiedenen Variationen dargestellt.

## Zelle 7

Erstelle in dieser Zelle ein Modell für das neuronale Netzwerk, das Klassenwahrscheinlichkeiten ausgibt. Es sollte das Keras Sequential Modell verwenden. Es wird wahrscheinlich einen Stapel von Conv2D- und MaxPooling2D-Schichten und dann eine vollständig verbundene Schicht darüber beinhalten, die durch eine ReLU-Aktivierungsfunktion aktiviert wird.

Kompiliere das Modell, das die Argumente übergibt, um Optimierer und Verlust zu setzen. Gib auch `metrics=['accuracy']` ein, um die Trainings- und Validierungsgenauigkeit für jede Schulungsperiode anzuzeigen.

## Zelle 8

Verwende die `fit` Methode deines `model`, um das Netzwerk auszubilden. Stelle sicher, dass Argumente für `x`, `steps_per_epoch`, `epochs`, `validation_data`, unxd `validation_steps` weitergegeben werden.

## Zelle 9

Führe diese Zelle aus, um die Genauigkeit und den Verlust des Modells anzuzeigen.

## Zelle 10

Jetzt ist es an der Zeit, mit deinem Modell vorherzusagen, ob ein brandneues Bild eine Katze oder einen Hund darstellt.

Erhalte in dieser Zelle die Wahrscheinlichkeit, dass jedes Textbild (von `test_data_gen`) einen Hund oder eine Katze darstellt. `probabilities` sollten eine Liste von Ganzzahlen sein.

Rufe die `plotImages` Funktion auf und reiche die Testbilder und die dazugehörigen Wahrscheinlichkeiten jedes Testbilds ein.

Nachdem du die Zelle aufgerufen hast, solltest du alle 50 Testbilder mit einer Beschriftung sehen, die den Prozentsatz anzeigt, wie "sicher" es ist, dass das Bild eine Katze oder einen Hund darstellt. Die Genauigkeit entspricht der im obigen Diagramm gezeigten Genauigkeit (nach Ausführung der vorherigen Zelle). Mehrere Trainingsbilder könnten zu einer höheren Genauigkeit führen.

## Zelle 11

Führe diese letzte Zelle aus, um zu sehen, ob du die Herausforderung bestanden hast oder ob du es weiter versuchen musst.

# --hints--

Er sollte alle Python-Tests bestehen.

```js

```

# --solutions--

```py
  # Python challenges don't need solutions,
  # because they would need to be tested against a full working project.
  # Please check our contributing guidelines to learn more.
```
