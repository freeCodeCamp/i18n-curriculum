---
id: 5e46f7f8ac417301a38fb92a
title: Medizinischer Datenvisualisierer
challengeType: 10
forumTopicId: 462368
dashedName: medical-data-visualizer
---

# --description--

You will be <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-medical-data-visualizer/" target="_blank" rel="noopener noreferrer nofollow">working on this project with our Gitpod starter code</a>.

Wir sind noch dabei, den interaktiven Teil des Python-Lehrplans zu entwickeln. Zurzeit kannst du dir lediglich einige Videos auf unserem YouTube-Channel für freeCodeCamp.org ansehen – diese bringen dir alles bei, was du wissen musst, um dieses Projekt abzuschließen:

- <a href="https://www.freecodecamp.org/news/python-for-everybody/" target="_blank" rel="noopener noreferrer nofollow">Python for Everybody Video Course</a> (14 hours)

- <a href="https://www.freecodecamp.org/news/how-to-analyze-data-with-python-pandas/" target="_blank" rel="noopener noreferrer nofollow">Wie man Daten mit Python-Pandas analysiert </a> (10 Stunden)

# --instructions--

In diesem Projekt wirst du mit Hilfe von `matplotlib`, `seaborn`, und `pandas` Berechnungen aus medizinischen Untersuchungsdaten visualisieren und durchführen. Die Datensatzwerte wurden bei medizinischen Untersuchungen gesammelt.

## Data description

Die Zeilen des Datensatzes repräsentieren Patienten und die Spalten stellen Informationen wie Körpermessungen, Ergebnisse verschiedener Bluttests und Lebensweisen dar. Du wirst den Datensatz verwenden, um die Beziehung zwischen Herzkrankheiten, Körpermessungen, Blutmarkern und Lebensweisen zu erforschen.

Dateiname: medical_examination.csv

|                    Feature                    |    Variablentyp    |   Variable    |                        Wert                         |
|:---------------------------------------------:|:------------------:|:-------------:|:---------------------------------------------------:|
|                      Age                      | Objective Feature  |     `age`     |                     int (days)                      |
|                    Height                     | Objective Feature  |   `height`    |                      int (cm)                       |
|                    Weight                     | Objective Feature  |   `weight`    |                     float (kg)                      |
|                    Gender                     | Objective Feature  |   `gender`    |                   Kategorie-Code                    |
|            Systolic blood pressure            |  Prüfungsfeature   |    `ap_hi`    |                         int                         |
|           Diastolic blood pressure            |  Prüfungsfeature   |    `ap_lo`    |                         int                         |
|                  Cholesterol                  |  Prüfungsfeature   | `cholesterol` | 1: normal, 2: höher als normal, 3: weit über normal |
|                    Glucose                    |  Prüfungsfeature   |    `gluc`     | 1: normal, 2: höher als normal, 3: weit über normal |
|                    Smoking                    | Subjective Feature |    `smoke`    |                        binär                        |
|                Alcohol intake                 | Subjective Feature |    `alco`     |                        binär                        |
|               Physical activity               | Subjective Feature |   `active`    |                        binär                        |
| Presence or absence of cardiovascular disease |    Zielvariable    |   `cardio`    |                        binär                        |


## Instructions
By each number in the `medical_data_visualizer.py` file, add the code from the associated instruction number below.

1. Import the data from `medical_examination.csv` and assign it to the `df` variable
2. Erstelle die `overweight`-Spalte in der `df`-Variable
3. Normalisiere die Daten, indem du `0` immer für gut und `1` immer für schlecht verwendest. Wenn der Wert von `cholesterol` oder `gluc` 1 ist, wird der Wert auf `0` gesetzt. Setze den Wert auf `1`, wenn der Wert größer als `1` ist.
4. Zeichne das kategorische Plot in der `draw_cat_plot`-Funktion
5. Create a DataFrame for the cat plot using `pd.melt` with values from `cholesterol`, `gluc`, `smoke`, `alco`, `active`, and `overweight` in the `df_cat` variable.
6. Die Daten in `df_cat` gruppieren und neu formatieren, um sie durch `cardio` aufzuteilen. Zeigt die Anzahl der einzelnen Merkmale an. You will have to rename one of the columns for the `catplot` to work correctly.
7. Convert the data into `long` format and create a chart that shows the value counts of the categorical features using the following method provided by the seaborn library import : `sns.catplot()`
8. Get the figure for the output and store it in the `fig` variable
9. Ändere die nächsten zwei Zeilen nicht
10. Draw the Heat Map in the `draw_heat_map` function
11. Bereinige die Daten in der `df_heat`-Variablen, indem du die folgenden Patientensegmente herausfilterst, die falsche Daten darstellen:
    - diastolic pressure is higher than systolic (Keep the correct data with `(df['ap_lo'] <= df['ap_hi'])`)
    - height is less than the 2.5th percentile (Keep the correct data with `(df['height'] >= df['height'].quantile(0.025))`)
    - height is more than the 97.5th percentile
    - weight is less than the 2.5th percentile
    - weight is more than the 97.5th percentile
12. Calculate the correlation matrix and store it in the `corr` variable
13. Generate a mask for the upper triangle and store it in the `mask` variable
14. Richte die `matplotlib`- ein
15. Plot the correlation matrix using the method provided by the `seaborn` library import: `sns.heatmap()`
16. Ändere die nächsten zwei Zeilen nicht

## Entwicklung

Write your code in `medical_data_visualizer.py`. Für die Entwicklung kannst du `main.py` verwenden, um deinen Code zu testen.

## Testen

Die Einheitstests für dieses Projekt befinden sich in `test_module.py`. Wir haben die Tests von `test_module.py` nach `main.py` importiert, um Ihnen die Arbeit zu erleichtern.

## Absenden

Kopiere die URL deines Projekts und sende es an freeCodeCamp.

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
