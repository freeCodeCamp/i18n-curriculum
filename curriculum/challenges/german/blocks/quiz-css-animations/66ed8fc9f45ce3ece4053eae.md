---
id: 66ed8fc9f45ce3ece4053eae
title: CSS-Animationen-Quiz
challengeType: 8
dashedName: quiz-css-animations
---

# --description--

Um das Quiz zu bestehen, müssen Sie mindestens 18 der 20 untenstehenden Fragen richtig beantworten.

# --quizzes--

## --quiz--

### --question--

#### --text--

Was ist der Zweck der `transform`-Eigenschaft in CSS?

#### --distractors--

Um die Sichtbarkeit eines Elements zu ändern.

---

Um einen visuellen Effekt auf Text anzuwenden.

---

Um die Abmessungen eines Elements festzulegen.

#### --answer--

Um die Position, Größe und Form eines Elements zu verändern.

### --question--

#### --text--

Wie beeinflusst die CSS-Eigenschaft `animation-direction` eine Animation?

#### --distractors--

Sie gibt an, ob eine Animation wiederholt werden soll.

---

Sie legt die Dauer der Animation fest.

---

Sie definiert die Geschwindigkeit der Animation.

#### --answer--

Sie definiert, wie eine Animation abgespielt werden soll.

### --question--

#### --text--

Welche CSS-Eigenschaft lässt eine Animation 3-mal ablaufen?

#### --distractors--

`animation-repeat: 3`

---

`animation-loop: 3`

---

`animation-delay: 3`

#### --answer--

`animation-iteration-count: 3`

### --question--

#### --text--

Welche CSS-Timing-Funktion lässt eine Animation mit konstanter Geschwindigkeit von Anfang bis Ende ablaufen?

#### --distractors--

`ease`

---

`ease-in`

---

`ease-in-out`

#### --answer--

`linear`

### --question--

#### --text--

Was definiert die `@keyframes`-At-Regel in CSS?

#### --distractors--

Die Farben eines CSS-Verlaufs.

---

Die Winkel einer CSS-Drehung.

---

Die Abmessungen eines Elements.

#### --answer--

Die Phasen einer CSS-Animation.

### --question--

#### --text--

Was ist der Zweck der `translateX()`-Funktion in CSS?

#### --distractors--

Sie ändert die Deckkraft des Elements.

---

Sie dreht das Element.

---

Sie verschiebt das Element vertikal.

#### --answer--

Sie verschiebt das Element horizontal.

### --question--

#### --text--

Welche der folgenden Aussagen ist KEIN potenzielles Problem bei CSS-Animationen?

#### --distractors--

Sie können bei bestimmten Nutzenden Unbehagen oder körperliche Beschwerden verursachen.

---

Nutzende könnten sie als ablenkend empfinden.

---

Übermäßiger Gebrauch kann zu schlechter Leistung führen.

#### --answer--

Sie können die Benutzererfahrung verbessern.

### --question--

#### --text--

Wo wird die `@keyframes`-At-Regel definiert?

#### --distractors--

Innerhalb des `body`-Elements einer HTML-Datei.

---

Innerhalb des `head`-Elements einer HTML-Datei.

---

Innerhalb einer CSS-Klassendefinition.

#### --answer--

Auf oberster Ebene, außerhalb jeglicher CSS-Selektoren.

### --question--

#### --text--

Welche CSS-Eigenschaft erlaubt es, eine Animation zu pausieren und fortzusetzen?

#### --distractors--

`animation-timing-function`

---

`animation-delay`

---

`animation-direction`

#### --answer--

`animation-play-state`

### --question--

#### --text--

Welcher Wert sollte der `animation-name`-Eigenschaft in CSS zugewiesen werden?

#### --distractors--

Die Dauer der Animation in Sekunden.

---

Die für die Animation verwendete Timing-Funktion.

---

Die Verzögerung vor dem Start der Animation in Sekunden.

#### --answer--

Der Name der Animation, die durch die `@keyframes` definiert ist.

### --question--

#### --text--

Was bewirkt diese `@keyframes` At-Regel für das animierte Element?

```css
@keyframes animation {
  0% {
    transform: translateX(-50px);
  }
  100% {
    transform: translateX(100px);
  }
}
```

#### --distractors--

Sie dreht das Element 90 Grad im Uhrzeigersinn.

---

Sie ändert die Farbe des Elements zu Blau.

---

Sie skaliert das Element auf 50 % seiner ursprünglichen Größe und dann auf 100 %.

#### --answer--

Sie bewegt das Element horizontal von -50px bis 100px relativ zum Ausgangspunkt.

### --question--

#### --text--

Welche CSS-Eigenschaft definiert, wie eine Animation im Zeitverlauf abläuft?

#### --distractors--

`animation-delay`

---

`animation-fill-mode`

---

`animation-iteration-count`

#### --answer--

`animation-timing-function`

### --question--

#### --text--

Welche CSS-Eigenschaft wird verwendet, um anzugeben, dass eine Animation 5 Sekunden dauern soll?

#### --distractors--

```css
animation-name: 5s;
```

---

```css
animation-delay: 5s;
```

---

```css
animation-timing-function: 5s;
```

#### --answer--

```css
animation-duration: 5s;
```

### --question--

#### --text--

Was stellt `50%` in der folgenden CSS-`@keyframes` At-Regel dar?

```css
@keyframes animation {
  0% {
    transform: translateX(-50px);
  }
  50% {
    transform: translateX(25px);
  }
  100% {
    transform: translateX(100px);
  }
}
```

#### --distractors--

Den Startpunkt der Animation.

---

Den Endpunkt der Animation.

---

Die Geschwindigkeit der Animation.

#### --answer--

Den Mittelpunkt der Animation.

### --question--

#### --text--

Was passiert, wenn die Eigenschaft `transform: translateX(200px);` angewendet wird?

#### --distractors--

Das Element bewegt sich 200px nach links.

---

Das Element bewegt sich 200px nach unten.

---

Das Element dreht sich 200 Grad im Uhrzeigersinn.

#### --answer--

Das Element bewegt sich 200px nach rechts.

### --question--

#### --text--

Wie verhält sich die Animation, wenn `animation-iteration-count` auf `infinite` gesetzt wird?

#### --distractors--

Sie läuft einmal ab und stoppt.

---

Sie pausiert nach der ersten Wiederholung.

---

Sie stoppt nach drei Wiederholungen.

#### --answer--

Sie wiederholt sich unendlich.

### --question--

#### --text--

Welcher `@keyframes`-Selektor gibt den Startpunkt einer Animation an?

#### --distractors--

`50%`

---

`25%`

---

`100%`

#### --answer--

`0%`

### --question--

#### --text--

Welche Eigenschaften können mit der `animation`-Kurzschreibweise in CSS angegeben werden?

#### --distractors--

Nur der Name der Animation.

---

Der Name und die Dauer der Animation.

---

Der Name, die Dauer und die Verzögerung der Animation.

#### --answer--

Alle Animations-Eigenschaften.

### --question--

#### --text--

Welche CSS-Eigenschaft wird verwendet, um eine durch eine `@keyframes`-At-Regel definierte Animation anzuwenden?

#### --distractors--

`animation-duration`

---

`apply`

---

`translate`

#### --answer--

`animation`

### --question--

#### --text--

Welche CSS-Eigenschaft erlaubt es, eine Zeitspanne vor Beginn der Animation festzulegen?

#### --distractors--

`animation-fill-mode`

---

`animation-timing-function`

---

`animation-iteration-count`

#### --answer--

`animation-delay`

## --quiz--

### --question--

#### --text--

Was bewirkt die CSS-Eigenschaft `animation-delay`?

#### --distractors--

Legt fest, wie lange die Animation dauert.

---

Gibt die Timing-Funktion an.

---

Definiert die Animationsrichtung.

#### --answer--

Verzögert den Start der Animation.

### --question--

#### --text--

Welche Animations-Eigenschaft gibt an, wie das Element vor und nach der Animation gestylt sein soll?

#### --distractors--

`animation-delay`

---

`animation-direction`

---

`animation-iteration-count`

#### --answer--

`animation-fill-mode`

### --question--

#### --text--

Warum sollten CSS-Animationen mit Maß verwendet werden?

#### --distractors--

Zu viele CSS-Animationen können dazu führen, dass Styles fehlerhaft sind und inkonsistent über verschiedene Browser dargestellt werden.

---

Zu viele CSS-Animationen können zu niedrigeren oder gar keinen Platzierungen in Suchmaschinenergebnissen führen.

---

Zu viele CSS-Animationen führen automatisch zum Absturz des Servers und erhöhen die Wahrscheinlichkeit von Sicherheitsrisiken.

#### --answer--

Zu viele CSS-Animationen können die Leistung verschlechtern und für Nutzende mit bestimmten Barrierefreiheitsbedürfnissen ablenkend oder problematisch sein.

### --question--

#### --text--

Welche Animations-Eigenschaft bestimmt, ob die Animation vorwärts, rückwärts oder abwechselnd abgespielt wird?

#### --distractors--

`animation-fill-mode`

---

`animation-delay`

---

`animation-timing-function`

#### --answer--

`animation-direction`

### --question--

#### --text--

Welche CSS-Media-Query erkennt, ob der Nutzer minimale Animationen oder Bewegungseffekte angefordert hat?

#### --distractors--

`reduce-motion`

---

`min-motion-preference`

---

`motion-preferences`

#### --answer--

`prefers-reduced-motion`

### --question--

#### --text--

Welche Eigenschaft legt fest, wie oft eine `animation` wiederholt wird?

#### --distractors--

`animation-duration`

---

`animation-count`

---

`animation-delay`

#### --answer--

`animation-iteration-count`

### --question--

#### --text--

Welche CSS-Regel wird verwendet, um die Phasen und Stile einer Animation an verschiedenen Zeitpunkten während ihrer Dauer zu definieren?

#### --distractors--

`@style`

---

`@transition`

---

`@transform`

#### --answer--

`@keyframes`

### --question--

#### --text--

Welche Deklaration deaktiviert innerhalb der `prefers-reduced-motion` Media Query Übergänge?

#### --distractors--

`animation: none;`

---

`transition: remove;`

---

`animation-play-state: paused;`

#### --answer--

`transition: none;`

### --question--

#### --text--

Was erlaubt die Eigenschaft `animation-play-state`?

#### --distractors--

Festzulegen, wie oft die Animation wiederholt wird.

---

Anzugeben, wie lange die Animation dauert.

---

Zu bestimmen, in welche Richtung die Animation abläuft.

#### --answer--

Die Animation zu pausieren und fortzusetzen.

### --question--

#### --text--

Welche der folgenden Praktiken ist beim Arbeiten mit Animationen empfehlenswert?

#### --distractors--

Verwenden Sie so viele blinkende Farben und schnelle Bewegungen wie möglich, um Aufmerksamkeit zu erregen.

---

Vermeiden Sie es, Animationen auf verschiedenen Geräten oder Bildschirmgrößen zu testen.

---

Lassen Sie Animationen so lange wie möglich dauern, damit Nutzer sie bemerken.

#### --answer--

Vermeiden Sie Inhalte, die mehr als dreimal pro Sekunde blinken, um Anfälle oder Unbehagen zu verhindern.

### --question--

#### --text--

Warum wird die Deklaration `!important` in CSS-Regeln verwendet?

#### --distractors--

Um zu verhindern, dass andere Media Queries geladen werden.

---

Um Styles auf das erste Kindelement zu beschränken.

---

Um CSS leichter debuggen zu können.

#### --answer--

Um sicherzustellen, dass diese Regeln Vorrang vor anderen Styles haben.

### --question--

#### --text--

Was stellt `animation-iteration-count: 1 !important;` in CSS sicher?

#### --distractors--

Dass Animationen pausiert werden.

---

Dass Animationen unendlich laufen.

---

Dass Animationen bei jedem Zyklus die Richtung wechseln.

#### --answer--

Dass sich Schleifenanimationen nur einmal abspielen.

### --question--

#### --text--

Welche CSS-Eigenschaft gibt an, wie lange eine Animation dauern soll?

#### --distractors--

`animation-delay`

---

`animation-timing-function`

---

`animation-iteration-count`

#### --answer--

`animation-duration`

### --question--

#### --text--

Welche Eigenschaft ist KEIN Teil der `animation`-Kurzschreibweise?

#### --distractors--

`animation-delay`

---

`animation-timing-function`

---

`animation-direction`

#### --answer--

`animation-transform`

### --question--

#### --text--

Was definiert die `@keyframes`-Regel?

#### --distractors--

Die Timing-Funktion einer Animation.

---

Den Standardzustand eines Elements.

---

Die Media Queries für Animationen.

#### --answer--

Die Folge von Stilen an verschiedenen Punkten einer Animation.

### --question--

#### --text--

Was bewirkt diese `@keyframes` At-Regel für das animierte Element?

```css
@keyframes fade-in {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
```

#### --distractors--

Sie skaliert das Element von 0 % auf 100 % hoch.

---

Sie bewegt das Element von links nach rechts.

---

Sie ändert die Textfarbe zu Schwarz.

#### --answer--

Sie lässt das Element einblenden, indem die Transparenz allmählich verringert wird.

### --question--

#### --text--

Was stellt `100%` in einer Keyframes-Regel dar?

#### --distractors--

Den Anfang der Animation.

---

Den Mittelpunkt.

---

Die Easing-Funktion.

#### --answer--

Das Ende der Animation.

### --question--

#### --text--

Welche Eigenschaft steuert das Tempo einer `animation` über ihre Dauer?

#### --distractors--

`animation-duration`

---

`animation-delay`

---

`animation-iteration-count`

#### --answer--

`animation-timing-function`

### --question--

#### --text--

Was sollten Entwickler bei der Implementierung von Animationen beachten, um Barrierefreiheit zu gewährleisten?

#### --distractors--

Sich vollständig auf JavaScript für alle Animationen verlassen.

---

Häufige und intensive Animationen für Wirkung hinzufügen.

---

Nur fette, schnelle und überraschende Effekte einbauen.

#### --answer--

Subtile, gezielte Effekte verwenden, Präferenzen respektieren und Nutzerkontrolle anbieten.

### --question--

#### --text--

Welche der folgenden Syntaxen ist korrekt, um ein Element von links hereingleiten zu lassen?

#### --distractors--

```css
@keyframes slide-in {
  0 { 
    transform: translate(-100%); 
  }
  100 { 
    transform: translate(0); 
  }
}
```

---

```css
@keyframes slide-in {
  from { 
    translateX(-100%); 
  }
  to { 
    translateX(0); 
  }
}
```

---

```css
@keyframes slide-in {
  start { 
    transform: moveX(-100%); 
  }
  end { 
    transform: moveX(0); 
  }
}
```

#### --answer--

```css
@keyframes slide-in {
  0% { 
    transform: translateX(-100%); 
  }
  100% { 
    transform: translateX(0); 
  }
}
```
