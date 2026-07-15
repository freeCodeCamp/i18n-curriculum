---
id: 66f1adcf97e3e4c1bd89ebf5
title: Quiz zur Web-Performance
challengeType: 8
dashedName: quiz-web-performance
---

# --description--

Um das Quiz zu bestehen, müssen Sie mindestens 18 der 20 untenstehenden Fragen richtig beantworten.

# --quizzes--

## --quiz--

### --question--

#### --text--

Was ist der entscheidende Unterschied zwischen echter Performance und wahrgenommener Performance in der Webentwicklung?

#### --distractors--

Echte Performance konzentriert sich auf die Anzahl der HTTP-Anfragen, die der Browser stellt, während sich die wahrgenommene Performance auf die Geschwindigkeit des CSS-Renderns stützt.

---

Echte Performance bezieht sich nur auf Ladezeiten, während sich die wahrgenommene Performance auf visuelle Elemente wie Animationen und Ladeanzeigen bezieht.

---

Echte Performance umfasst nur serverseitige Verarbeitungszeiten, während sich die wahrgenommene Performance vollständig auf die Client-Seite bezieht.

#### --answer--

Echte Performance beschreibt, wie schnell Inhalte geladen werden, während wahrgenommene Performance angibt, wie schnell Nutzer glauben, dass die Seite lädt.

### --question--

#### --text--

Welche Metrik zeigt am besten an, wie schnell Inhalte auf einer Webseite erscheinen?

#### --distractors--

Zeit bis zur Interaktivität (TTI)

---

Seitenladezeit (PLT)

---

Last Contentful Paint (LCP)

#### --answer--

First Contentful Paint (FCP)

### --question--

#### --text--

Welche der folgenden Maßnahmen ist KEIN Weg, um Ladezeiten von Seiten zu reduzieren?

#### --distractors--

Optimierung von Medieninhalten.

---

Nutzung von Browser-Caching.

---

Minimierung und Komprimierung von Dateien.

#### --answer--

Nur JPEG-Dateien verwenden.

### --question--

#### --text--

Was bedeutet „time to usable“?

#### --distractors--

Es ist das Intervall von der Anforderung einer Seite durch den Nutzer bis zu dem Zeitpunkt, an dem er mit Formularen auf der Seite interagieren kann.

---

Es ist die Zeit, die benötigt wird, bis alle Bilder und Animationen verfügbar und nutzbar sind.

---

Dies ist die Zeit, die alle CSS- und JavaScript-Animationen benötigen, um auf dem Bildschirm zu laden.

#### --answer--

Es ist das Intervall von der Anforderung einer Seite durch den Nutzer bis zu dem Zeitpunkt, an dem er sinnvoll mit ihr interagieren kann.

### --question--

#### --text--

Was misst First Contentful Paint (FCP)?

#### --distractors--

Die Gesamtzeit zum Laden aller JavaScript-Dateien auf der Seite.

---

Die Verzögerung, bevor ein Nutzer mit Elementen auf der Seite interagieren kann.

---

Die Zeit, die alle Stylesheets benötigen, um vollständig zu laden und angewendet zu werden.

#### --answer--

Die Zeit, die benötigt wird, bis das erste Textstück oder Bild gerendert wird.

### --question--

#### --text--

Welches der folgenden Tools ist KEIN häufig verwendetes Werkzeug zur Performance-Messung?

#### --distractors--

Chrome Entwicklerwerkzeuge

---

Lighthouse

---

WebPageTest

#### --answer--

WebMeasure

### --question--

#### --text--

Wofür werden Performance Web APIs verwendet?

#### --distractors--

Sie werden nur zur Messung der Performance von CSS-Animationen verwendet.

---

Sie werden verwendet, um die Performance einer Webseite automatisch zu beschleunigen.

---

Sie liefern eine detaillierte Tabelle mit Performance-Metriken für den Nutzer.

#### --answer--

Sie ermöglichen Entwicklern, direkt im Code zu verfolgen, wie effizient eine Webseite lädt und reagiert.

### --question--

#### --text--

Welche Strategie kann die wahrgenommene Performance effektiv verbessern?

#### --distractors--

Große Bilder verwenden, um die visuelle Qualität insgesamt zu verbessern.

---

CSS-Stile zuletzt laden, um das Rendern von Inhalten zu priorisieren.

---

Alle Skripte vorladen, damit sie bei Bedarf bereitstehen.

#### --answer--

Ein Lade-Skelett anzeigen, während Inhalte geladen werden.

### --question--

#### --text--

Welcher Begriff beschreibt die Zeit, die eine Anfrage benötigt, um zwischen Browser und Server hin- und zurückzureisen?

#### --distractors--

Rendering

---

INP

---

CDN

#### --answer--

Latenz

### --question--

#### --text--

Wie wirkt sich die Optimierung von CSS auf die Seitenperformance aus?

#### --distractors--

Sie verhindert, dass der Browser unnötiges JavaScript ausführt.

---

Sie reduziert die Gesamtgröße von Bilddateien.

---

Sie macht Lazy Loading von Bildern überflüssig.

#### --answer--

Sie beschleunigt das Parsen von HTML.

### --question--

#### --text--

Welche der folgenden Metriken zeigt, wie lange der Hauptthread durch schwere JavaScript-Aufgaben blockiert ist?

#### --distractors--

Quellreihenfolge

---

Absprungrate

---

WebPageTest

#### --answer--

Gesamte Blockierzeit

### --question--

#### --text--

Was wird bei der Messung von Interaction to Next Paint (INP) bewertet?

#### --distractors--

Die Zeit, die die Seite benötigt, um nach einer Nutzerinteraktion alle Stile und Bilder vollständig zu laden.

---

Die Verzögerung zwischen einer Nutzerinteraktion und der Fähigkeit des Browsers, die nächste Eingabe zu registrieren.

---

Das Intervall zwischen der Ausführung von JavaScript und dem Aktualisieren des Seiteninhalts durch den Browser.

#### --answer--

Die Zeit zwischen einer Nutzerinteraktion und der Reaktion des Browsers durch das Rendern des nächsten Frames.

### --question--

#### --text--

Welche der folgenden APIs liefert hochpräzise Zeitstempel (in Millisekunden), um zu messen, wie lange verschiedene Teile Ihrer Seite zum Laden benötigen?

#### --distractors--

`performance.delay()`

---

`performance.previous()`

---

`performance.next()`

#### --answer--

`performance.now()`

### --question--

#### --text--

Welche der folgenden APIs liefert eine Aufschlüsselung jeder Phase des Seitenladens vom DNS-Lookup bis zu `DOMContentLoaded`?

#### --distractors--

Permit Timing API

---

Performance Text API

---

Perform Timing API

#### --answer--

Performance Timing API

### --question--

#### --text--

Welche der folgenden APIs hört auf Performance-Ereignisse wie Layout-Verschiebungen, lange Tasks und Nutzerinteraktionen?

#### --distractors--

```js
const observer = new PermitObserve((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

---

```js
const observer = new PerformObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

---

```js
const observer = new PermitObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

#### --answer--

```js
const observer = new PerformanceObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

### --question--

#### --text--

Wie verbessert Lazy Loading von Bildern die Seitenperformance?

#### --distractors--

Es sorgt dafür, dass alle Bilder sofort laden, um die Nutzererfahrung zu verbessern.

---

Es reduziert die Größe der Bilddateien, um das Laden zu beschleunigen.

---

Es lädt Bilder vor, um Ladeverzögerungen zu vermeiden.

#### --answer--

Es verzögert das Laden von nicht wesentlichen Bildern, bis sie im Sichtbereich sind.

### --question--

#### --text--

Was versteht man unter Code Splitting?

#### --distractors--

Es bedeutet, Ihren React-Code in Module aufzuteilen, die nur kritische Aufgaben ausführen.

---

Es bedeutet, Ihren HTML-Code in Module aufzuteilen, die nur nicht-kritische Aufgaben ausführen.

---

Es bedeutet, Ihren CSS-Code in Module aufzuteilen, die kritische und nicht-kritische Aufgaben ausführen.

#### --answer--

Es bedeutet, Ihren JavaScript-Code in Module aufzuteilen, die kritische und nicht-kritische Aufgaben ausführen.

### --question--

#### --text--

Welche der folgenden Methoden ist der korrekte Weg, ein Bild per Lazy Loading zu laden?

#### --distractors--

```html
<img src="placeholder.jpg" lazy="loading">
```

---

```html
<img src="placeholder.jpg" load="lazy">
```

---

```html
<img src="placeholder.jpg" lazy="load">
```

#### --answer--

```html
<img src="placeholder.jpg" loading="lazy">
```

### --question--

#### --text--

Welche der folgenden Maßnahmen ist KEIN Weg, um INP zu verbessern?

#### --distractors--

Reduzierung der Hauptthread-Arbeit durch Aufteilung langer JavaScript-Aufgaben.

---

Optimierung von Event-Handlern.

---

Aufschieben oder Lazy Loading von schweren Assets.

#### --answer--

Nur PNG- und JPEG-Bilder verwenden.

### --question--

#### --text--

Warum ist Energieeffizienz ein wichtiger Aspekt der Web-Performance?

#### --distractors--

Sie verbessert die visuelle Attraktivität der Webseite insgesamt.

---

Sie minimiert die Menge an JavaScript, die auf einer Webseite verwendet wird.

---

Sie verringert die Anzahl der benötigten CSS-Dateien und lässt Ihr CSS schneller laufen.

#### --answer--

Sie reduziert die Belastung der Hardware, spart Energie und verbessert die Nachhaltigkeit.

