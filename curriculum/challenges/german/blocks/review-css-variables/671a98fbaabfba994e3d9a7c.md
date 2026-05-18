---
id: 671a98fbaabfba994e3d9a7c
title: Überprüfung der CSS-Variablen
challengeType: 31
dashedName: review-css-variables
---

# --interactive--

## CSS-Custom-Properties (CSS-Variablen)

- **Definition**: CSS-Custom-Properties, auch bekannt als CSS-Variablen, sind von CSS-Autoren definierte Entitäten, die bestimmte Werte enthalten, die im gesamten Dokument wiederverwendet werden können. Sie sind eine mächtige Funktion, die effizientere, wartbarere und flexiblere Stylesheets ermöglicht. Custom Properties sind besonders nützlich, um designbare Themes zu erstellen. Sie können eine Reihe von Eigenschaften für verschiedene Themes definieren:

```css
:root {
  --bg-color: white;
  --text-color: black;
}

.dark-theme {
  --bg-color: #333;
  --text-color: white;
}

body {
  background-color: var(--bg-color);
  color: var(--text-color);
}
```

## Die `@property`-Regel

- **Definition**: Die `@property`-Regel ist eine mächtige CSS-Funktion, die Entwicklern erlaubt, Custom Properties mit größerer Kontrolle über ihr Verhalten zu definieren, einschließlich wie sie animiert werden und welche Anfangswerte sie haben.

```css
@property --property-name {
  syntax: '<type>';
  inherits: true | false;
  initial-value: <value>;
}
```

- **`--property-name`**: Dies ist der Name der Custom Property, die Sie definieren. Wie alle Custom Properties muss sie mit zwei Bindestrichen beginnen.
**`syntax`**: Dies definiert den Typ der Eigenschaft, der Dinge wie `<color>`, `<length>`, `<number>`, `<percentage>` oder komplexere Typen sein kann.
- **`inherits`**: Dies gibt an, ob die Eigenschaft ihren Wert vom Elternelement erben soll.
- **`initial-value`**: Dies legt den Standardwert der Eigenschaft fest.
- **Gradientenbeispiel mit der `@property`-Regel**: Dieses Beispiel erzeugt einen Farbverlauf, der beim Überfahren des Elements sanft animiert wird.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">

<div class="gradient-box"></div>
```

```css
@property --gradient-angle {
  syntax: "<angle>";
  inherits: false;
  initial-value: 0deg;
}

.gradient-box {
  width: 100px;
  height: 100px;
  background: linear-gradient(var(--gradient-angle), red, blue);
  transition: --gradient-angle 0.5s;
}

.gradient-box:hover {
  --gradient-angle: 90deg;
}
```

:::

- **Fallbacks**: Wenn Sie die Custom Property verwenden, können Sie einen Fallback-Wert mit der `var()`-Funktion angeben, genau wie bei Standard-Custom-Properties:

```css
.button {
  background-color: var(--main-color, #3498db);
}
```

# --assignment--

Überprüfen Sie die Themen und Konzepte zu CSS-Variablen.
