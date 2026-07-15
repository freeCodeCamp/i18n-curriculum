---
id: 66ed8fa2f45ce3ece4053eab
title: CSS-Grundlagen-Quiz
challengeType: 8
dashedName: quiz-basic-css
---

# --description--

Um das Quiz zu bestehen, müssen Sie mindestens 18 der 20 untenstehenden Fragen richtig beantworten.

# --quizzes--

## --quiz--

### --question--

#### --text--

Wofür steht CSS?

#### --distractors--

Kaskadierendes Stylescript

---

Verkettendes Stylescript

---

Castor-Salbei-Stil

#### --answer--

Kaskadierende Stylesheets

### --question--

#### --text--

Welche der folgenden ist eine korrekte CSS-Regel?

#### --distractors--

`p=red`

---

`p (color: red)`

---

`{p color: red;}`

#### --answer--

`p {color: red;}`

### --question--

#### --text--

Was bewirkt `<meta name="viewport">`?

#### --distractors--

Es verknüpft externe Stylesheets mit einer Webseite für responsives Design.

---

Es gibt die Metadaten an, die von Suchmaschinen zum Indexieren einer Webseite verwendet werden.

---

Es gibt die auf der Webseite verwendete Zeichencodierung an.

#### --answer--

Es steuert die Form und Größe einer Webseite auf verschiedenen Bildschirmgrößen.

### --question--

#### --text--

Welche Syntax ist korrekt, um inline CSS zu verwenden?

#### --distractors--

`<p color =  blue></p>`

---

`<p><style = blue></p>`

---

`p {color: blue;}`

#### --answer--

`<p style="color: blue;"></p>`

### --question--

#### --text--

Wenn Sie internes CSS verwenden, wo wird das `style`-Element innerhalb des HTML platziert?

#### --distractors--

Im `meta`-Element.

---

Im `script`-Element.

---

Im `body`-Element.

#### --answer--

Im `head`-Element.

### --question--

#### --text--

Welche Regel ist korrekt, um Breite und Höhe in CSS festzulegen?

#### --distractors--

`height-width: 50px;`

---

`width-and-height: 50px;`

---

`flex-width: 50px; flex-height: 50px;`

#### --answer--

`width: 50px; height: 50px;`

### --question--

#### --text--

Welcher Selektor zielt korrekt nur auf `h1`-Elemente ab, wenn sie sich innerhalb eines `div` befinden?

#### --distractors--

`div, h1 {}`

---

`div ~ h1 {}`

---

`div + h1 {}`

#### --answer--

`div h1 {}`

### --question--

#### --text--

Welcher Selektor ist korrekt, um direkte Kinder eines `footer` anzusprechen?

#### --distractors--

`footer ~ ul {}`

---

`footer + ul {}`

---

`footer ul {}`

#### --answer--

`footer > ul {}`

### --question--

#### --text--

Welcher Selektor ist korrekt, um das nächste Geschwisterelement eines `img` anzusprechen?

#### --distractors--

`img h1 {}`

---

`img > h1 {}`

---

`img ~ h1 {}`

#### --answer--

`img + h1 {}`

### --question--

#### --text--

Welcher Selektor ist korrekt, um alle Geschwister anzusprechen, die von einem `img`-Element vorausgehen?

#### --distractors--

`img > caption {}`

---

`img caption {}`

---

`img + caption {}`

#### --answer--

`img ~ caption {}`

### --question--

#### --text--

Welche Aussage ist WAHR über Block-Elemente?

#### --distractors--

Block-Elemente werden standardmäßig horizontal gestapelt.

---

`width` und `height`-Eigenschaften gelten normalerweise nicht für Block-Elemente, es sei denn, Sie setzen deren `display`-Eigenschaft auf `inline-block`.

---

Block-Elemente können keine Inline-Elemente enthalten.

#### --answer--

Block-Elemente beginnen in einer neuen Zeile und nehmen die volle Breite ihres Containers ein.

### --question--

#### --text--

Welche Aussage ist WAHR bei Verwendung des Werts `inline-block`?

#### --distractors--

Elemente werden vertikal gestapelt und nehmen immer die volle Breite ihres Containers ein.

---

Elemente richten sich horizontal aus, können aber keinen vertikalen Innen- oder Außenabstand anwenden.

---

Elemente respektieren Breiten- und Höhenangaben, können aber keine anderen Elemente enthalten.

#### --answer--

Elemente behalten den Inline-Fluss bei, erlauben aber das Festlegen von Breite und Höhe.

### --question--

#### --text--

Welcher der folgenden Selektoren hat die höchste Spezifität?

#### --distractors--

`div`

---

`h1`

---

`p`

#### --answer--

`#id`

### --question--

#### --text--

Welcher der folgenden Selektoren hat die niedrigste Spezifität?

#### --distractors--

`#id`

---

`.class`

---

`div h1`

#### --answer--

`h1`

### --question--

#### --text--

Was bewirkt der Selektor `*`?

#### --distractors--

Er zielt auf einige Elemente auf der Seite ab.

---

Er zielt auf Elemente ab, die Kinder auf der Seite haben.

---

Er zielt auf alle `p`-Elemente auf der Seite ab.

#### --answer--

Er zielt auf alle Elemente auf der Seite ab.

### --question--

#### --text--

Was bewirkt `!important` in CSS?

#### --distractors--

Es sorgt dafür, dass die CSS-Regel ausschließlich für Inline-Stile gilt und ignoriert Styles, die in externen oder internen Stylesheets definiert sind.

---

Es deaktiviert alle anderen CSS-Eigenschaften, die auf dasselbe Element angewendet werden, und macht die Regel effektiv zur einzigen, die das Styling des Elements beeinflusst.

---

Es gilt nur für einen bestimmten Selektor oder eine Gruppe von Elementen.

#### --answer--

Es überschreibt alle anderen Werte, die für diese Eigenschaft bei diesem Selektor angewendet werden.

### --question--

#### --text--

Wie funktioniert der CSS-Cascade-Algorithmus?

#### --distractors--

Er bestimmt die Styles des Elements basierend auf der Reihenfolge der Deklaration, unabhängig von anderen Faktoren.

---

Er wendet Styles ausschließlich basierend auf der Reihenfolge an, in der sie geschrieben sind, und ignoriert die Spezifität.

---

Er wendet Styles an, wobei die Spezifität priorisiert wird und Herkunft und Relevanz ignoriert werden.

#### --answer--

Er bestimmt die Styles des Elements basierend auf Spezifität und Reihenfolge der Deklaration.

### --question--

#### --text--

Welche Regel wendet `32px` Außenabstand auf alle Seiten an?

#### --distractors--

`margin-top: 32px;`

---

`margin: 32px 0;`

---

`margin: 0 32px;`

#### --answer--

`margin: 32px;`

### --question--

#### --text--

Welche Regel wendet `24px` Innenabstand oben und unten an?

#### --distractors--

`padding: 24px;`

---

`padding-top-bottom: 24px;`

---

`padding: 0 24px;`

#### --answer--

`padding: 24px 0;`

### --question--

#### --text--

Für `padding: 10px 20px 30px 40px` – was ist die korrekte Reihenfolge der Werte?

#### --distractors--

Rechts, Oben, Links, Unten.

---

Oben, Links, Unten, Rechts.

---

Oben, Unten, Rechts, Links.

#### --answer--

Oben, Rechts, Unten, Links.

## --quiz--

### --question--

#### --text--

Was sind die Hauptbestandteile einer CSS-Regel?

#### --distractors--

Elemente und Attribute

---

Style und Sheets

---

Skripte und Werte

#### --answer--

Selektoren und Deklarationsblöcke

### --question--

#### --text--

Welche der folgenden ist die korrekte Syntax für eine CSS-Regel?

#### --distractors--

```css
body [
  font-family: Arial;
]
```

---

```css
font-family {
  body: Arial;
}
```

---

```css
body {
  font-family; Arial:
}
```

#### --answer--

```css
body {
  font-family: Arial;
}
```

### --question--

#### --text--

Was sind Standard-Browser-Styles?

#### --distractors--

HTML-Elemente, die unabhängig vom Browser dieselben Styling-Eigenschaften haben.

---

Sie sind verpflichtende Styles, die Sie für bestimmte HTML-Elemente verwenden müssen.

---

Sie sind die Farbthemen für die verschiedenen Browser.

#### --answer--

Die CSS-Regeln, die Browser automatisch anwenden.

### --question--

#### --text--

Was ist der Standardwert für die Eigenschaft `width`?

#### --distractors--

`none`

---

`0`

---

`100%`

#### --answer--

`auto`

### --question--

#### --text--

Was gibt die Eigenschaft `min-height` an?

#### --distractors--

Die Start-Höhe für ein Element.

---

Die Höhe für ein Element.

---

Die maximale Höhe für ein Element.

#### --answer--

Die Mindesthöhe für ein Element.

### --question--

#### --text--

Welche der folgenden Aussagen ist WAHR über den universellen Selektor `*`?

#### --distractors--

Er hat die höchste Spezifität, weil er alle Elemente auf einer Seite stylen kann.

---

Er trägt 1 zu allen Teilen des Spezifitätswerts bei.

---

Er kann Styles nicht über verschiedene Browser hinweg zurücksetzen.

#### --answer--

Er hat den niedrigsten Spezifitätswert aller Selektoren.

### --question--

#### --text--

Welcher Selektor zielt korrekt auf `li`-Elemente einer geordneten Liste ab?

#### --distractors--

`li {}`

---

`ul li {}`

---

`ol + li {}`

#### --answer--

`ol li {}`

### --question--

#### --text--

Welcher Selektor zielt auf die Absatz-Elemente eines `div`-Elements ab?

#### --distractors--

`p div {}`

---

`div, p {}`

---

`p, div {}`

#### --answer--

`div p {}`

### --question--

#### --text--

Wo wendet `margin` Styling-Eigenschaften an?

#### --distractors--

Der Raum innerhalb des Elements.

---

Zwischen dem Inhalt und dem Rahmen.

---

Am Rahmen des Elements.

#### --answer--

Der Raum außerhalb des Elements.

### --question--

#### --text--

Wo wendet die Eigenschaft `padding` Styling an?

#### --distractors--

Zwischen dem Rahmen des Elements und den umliegenden Elementen.

---

Der Raum außerhalb des Elements.

---

Am Rahmen des Elements.

#### --answer--

Der Raum innerhalb des Elements.

### --question--

#### --text--

Welche Aussage ist FALSCH über Block-Elemente?

#### --distractors--

Sie können sich ausdehnen, um die Breite ihres Containers auszufüllen.

---

Gängige Block-Elemente sind `div`, `p` und `section`.

---

Block-Elemente beginnen in einer neuen Zeile und nehmen die volle Breite ihres Containers ein.

#### --answer--

Sie können nicht die volle verfügbare Breite einnehmen, da ihnen dies verwehrt wird.

### --question--

#### --text--

Welche Aussage ist FALSCH bei Verwendung des Werts `inline-block`?

#### --distractors--

`inline-block`-Elemente verhalten sich wie Inline-Elemente.

---

Sie können `width`- und `height`-Eigenschaften haben.

---

Elemente behalten den Inline-Fluss bei, erlauben aber das Festlegen von `width` und `height`.

#### --answer--

Sie teilen keine Eigenschaften mit Inline- oder Block-Elementen.

### --question--

#### --text--

Was ist WAHR über das Schlüsselwort `!important`?

#### --distractors--

Sie werden verwendet, um Kommentare für eine wichtige CSS-Eigenschaft zu machen.

---

Sie stellen sicher, dass eine CSS-Eigenschaft die korrekte Syntax hat.

---

Sie machen CSS-Regeln leichter wartbar.

#### --answer--

Sie überschreiben die Spezifität anderer Selektoren.

### --question--

#### --text--

Welches Zeichen steht vor einem Klassenselektor-Namen?

#### --distractors--

`#`

---

`$`

---

`*`

#### --answer--

`.`

### --question--

#### --text--

Welche Aussage ist FALSCH über Inline-Elemente?

#### --distractors--

Sie nehmen nur so viel Platz ein, wie sie benötigen.

---

Sie beginnen nicht in einer neuen Zeile.

---

Gängige Inline-Elemente sind `span` und `img`.

#### --answer--

Sie beginnen immer in einer neuen Zeile.

### --question--

#### --text--

Wo werden interne CSS-Styles aufgerufen?

#### --distractors--

Es sind Styles, die für das Projekt wichtig sind und daher nicht extern geteilt werden.

---

Da sie das Kern-Styling des Projekts bilden, werden sie in der `styles.css`-Datei gespeichert, damit andere Webseiten darauf zugreifen können.

---

Sie werden innerhalb des `body`-Elements gespeichert, wenn nur eine Webseite gestylt wird.

#### --answer--

Sie werden innerhalb des `style`-Abschnitts im `head`-Element geschrieben.

### --question--

#### --text--

Was ist die Reihenfolge für das Anwenden der Eigenschaft `padding`, wenn die Kurzschreibweise verwendet wird?

#### --distractors--

`top`, `bottom`, `left`, `right`

---

`left`, `right`, `top`, `bottom`

---

`right`, `top`, `left`, `bottom`

#### --answer--

`top`, `right`, `bottom`, `left`

### --question--

#### --text--

Was ist die Reihenfolge für das Anwenden der Eigenschaft `margin`, wenn die Kurzschreibweise verwendet wird?

#### --distractors--

`left`, `right`, `top`, `bottom`

---

`right`, `top`, `left`, `bottom`

---

`top`, `bottom`, `left`, `right`

#### --answer--

`top`, `right`, `bottom`, `left`

### --question--

#### --text--

Wofür werden inline CSS-Styles verwendet?

#### --distractors--

Sie werden nur verwendet, um Inline-Elemente zu stylen.

---

Sie werden verwendet, um Elemente nur dann zu stylen, wenn sie alle in derselben Zeile des Browser-Viewports erscheinen.

---

Sie werden verwendet, um das Problem der Trennung von Anliegen zu lösen.

#### --answer--

Sie werden verwendet, um direkt innerhalb des Elements zu stylen, anstatt internes oder externes CSS zu verwenden.

### --question--

#### --text--

Welches Symbol steht vor dem ID-Selektor?

#### --distractors--

`.`

---

`*`

---

`$`

#### --answer--

`#`

