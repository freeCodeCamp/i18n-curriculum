---
id: 63ee353e0d8d4841c3a7091f
title: CSS Foundations Lesson F
challengeType: 19
dashedName: css-foundations-lesson-f
---

# --description--

Okay, du hast bis jetzt schon eine ganze Menge durchgenommen. Es bleibt jetzt nur noch zu besprechen, wie du das CSS in dein HTML einfügen kannst. Es gibt drei Methoden um dies zu machen.

External CSS is the most common method you will come across, and it involves creating a separate file for the CSS and linking it inside of an HTML’s opening and closing `<head>` tags with a `<link>` element (which is a void element and doesn't require a closing tag):

First, you add a void element `<link>` tag inside of the opening and closing `<head>` tags of the HTML file. Das `href`-Attribut ist der Speicherort der CSS-Datei, entweder eine absolute URL oder, was du verwenden wirst, eine URL relativ zum Speicherort der HTML-Datei. Im vorstehenden Beispiel gehst du davon aus, dass sich beide Dateien in demselben Verzeichnis befinden. Das `rel`-Attribut ist notwendig und gibt die Beziehung zwischen der HTML-Datei und der verlinkten Datei an.

In der neu erstellten `styles.css`-Datei befindet sich dann der Selektor (`div` und `p`), gefolgt von einem Paar öffnender und schließender geschwungener Klammern, die einen "Deklarationsblock" bilden. Schließlich platzierst du alle Deklarationen innerhalb des Deklarationsblocks. `color: white;` ist eine Deklaration, bei der `color` die Eigenschaft und `white` der Wert ist, und `background-color: black;` ist eine weitere Deklaration.

Ein Hinweis zu Dateinamen: `styles.css` ist genau das, was du hier als Dateinamen gewählt hast. Du kannst die Datei benennen wie du willst, solange der Dateityp `.css` ist, obwohl "style" oder "styles" am häufigsten verwendet wird.

Einige Vorzüge dieser Methode sind:

1. Es trennt HTML und CSS voneinander, wodurch die HTML-Datei kleiner wird und die Inhalte sauberer aussehen.
2. Du brauchst das CSS nur an einer Stelle zu bearbeiten, was besonders praktisch für Websites mit vielen Seiten ist, die alle ähnliche Styles haben.

# --questions--

## --text--

Welche der folgenden Aussagen beschreibt am besten den Zweck des `rel`-Attributs im `<link>`-Element, wenn eine externe CSS-Datei mit einer HTML-Datei verknüpft wird?

## --answers--

Sie gibt den Speicherort der CSS-Datei im Verhältnis zum Speicherort der HTML-Datei an.

---

Sie gibt die Beziehung zwischen der HTML-Datei und der verknüpften Datei an.

---

Sie gibt den Typ der zu verlinkenden Datei an (z. B. "Stylesheet").


## --video-solution--

2
