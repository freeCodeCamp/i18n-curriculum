---
id: 671a98fbaabfba994e3d9a7c
title: revisione delle variabili css
challengeType: 31
dashedName: review-css-variables
---

# --interactive--

## Proprietà personalizzate CSS (variabili CSS)

- **Definizione**: Le proprietà personalizzate CSS, note anche come variabili CSS, sono entità definite dagli autori CSS che contengono valori specifici da riutilizzare in tutto un documento. Sono una funzionalità potente che permette fogli di stile più efficienti, manutenibili e flessibili. Le proprietà personalizzate sono particolarmente utili per creare design tematizzabili. Puoi definire un insieme di proprietà per temi diversi:

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

## La regola `@property`

- **Definizione**: La regola `@property` è una funzionalità CSS potente che permette agli sviluppatori di definire proprietà personalizzate con un controllo maggiore sul loro comportamento, incluso come animarle e i loro valori iniziali.

```css
@property --property-name {
  syntax: '<type>';
  inherits: true | false;
  initial-value: <value>;
}
```

- **`--property-name`**: Questo è il nome della proprietà personalizzata che stai definendo. Come tutte le proprietà personalizzate, deve iniziare con due trattini.
**`syntax`**: Questo definisce il tipo della proprietà, che può essere cose come `<color>`, `<length>`, `<number>`, `<percentage>` o tipi più complessi.
- **`inherits`**: Specifica se la proprietà dovrebbe ereditare il suo valore dall'elemento genitore.
- **`initial-value`**: Imposta il valore predefinito della proprietà.
- **Esempio di gradiente usando la regola `@property`**: Questo esempio crea un gradiente che si anima dolcemente quando l'elemento viene passato con il mouse.

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

- **Fallback**: Quando usi la proprietà personalizzata, puoi fornire un valore fallback usando la funzione `var()`, proprio come faresti con le proprietà personalizzate standard:

```css
.button {
  background-color: var(--main-color, #3498db);
}
```

# --assignment--

Rivedi gli argomenti e i concetti sulle variabili CSS.
