---
id: 5c6c06847491271903d37cfd
title: Usare l'attributo value con i pulsanti di opzione e le caselle di spunta
challengeType: 0
forumTopicId: 301099
dashedName: use-the-value-attribute-with-radio-buttons-and-checkboxes
---

# --description--

When a form gets submitted, the data is sent to the server and includes entries for the options selected. Inputs of type `radio` and `checkbox` report their values from the `value` attribute.

Ad esempio:

```html
<label for="indoor">
  <input id="indoor" value="indoor" type="radio" name="indoor-outdoor">Indoor
</label>
<label for="outdoor">
  <input id="outdoor" value="outdoor" type="radio" name="indoor-outdoor">Outdoor
</label>
```

Qui hai due input di tipo `radio`. Quando l'utente invia il modulo con l'opzione `indoor` selezionata, i dati del modulo includeranno la linea: `indoor-outdoor=indoor`. Questo proviene dagli attributi `name` e `value` dell'input "indoor".

Se si omette l'attributo `value`, i dati del modulo inviato usano il valore predefinito, che è `on`. In questo scenario, se l'utente ha cliccato l'opzione "indoor" e ha inviato il modulo, i dati del modulo risultante saranno `indoor-outdoor=on`, il che non è utile. Quindi l'attributo `value` deve essere impostato su qualcosa che identifichi l'opzione.

# --instructions--

Dai a ciascuno degli elementi di input esistenti di tipo `radio` e `checkbox` l'attributo `value`. Non creare alcun nuovo elemento radio o casella di controllo. Usa il testo dell'etichetta, in minuscolo, come valore per l'attributo.

# --hints--

Uno dei tuoi pulsanti di opzione dovrebbe avere l'attributo `value` di `indoor`.

```js
const indoorRadioButton = [...document.querySelectorAll('label > input[type="radio"]')].filter(x => x.value === "indoor");
assert.notEmpty(indoorRadioButton)
```

Uno dei tuoi pulsanti di opzione dovrebbe avere l'attributo `value` di `outdoor`.

```js
const outdoorRadioButton = [...document.querySelectorAll('label > input[type="radio"]')].filter(x => x.value === "outdoor");
assert.notEmpty(outdoorRadioButton);
```

Uno dei tuoi pulsanti di opzione dovrebbe avere l'attributo `value` di `loving`.

```js
const lovingCheckbox = [...document.querySelectorAll('label > input[type="checkbox"]')].filter(x => x.value === "loving");
assert.notEmpty(lovingCheckbox); 
```

Una delle tue caselle di spunta dovrebbe avere l'attributo `value` di `lazy`.

```js
const lazyCheckbox = [...document.querySelectorAll('label > input[type="checkbox"]')].filter(x => x.value === "lazy");
assert.notEmpty(lazyCheckbox); 
```

Una delle tue caselle di spunta dovrebbe avere l'attributo `value` di `energetic`.

```js
const energeticCheckbox =  [...document.querySelectorAll('label > input[type="checkbox"]')].filter(x => x.value === "energetic");
assert.notEmpty(energeticCheckbox);
```

# --seed--

## --seed-contents--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <p>Things cats love:</p>
  <ul>
    <li>catnip</li>
    <li>laser pointers</li>
    <li>lasagna</li>
  </ul>
  <p>Top 3 things cats hate:</p>
  <ol>
    <li>flea treatment</li>
    <li>thunder</li>
    <li>other cats</li>
  </ol>
  <form action="https://www.freecatphotoapp.com/submit-cat-photo">
    <label for="indoor"><input id="indoor" type="radio" name="indoor-outdoor"> Indoor</label>
    <label for="outdoor"><input id="outdoor" type="radio" name="indoor-outdoor"> Outdoor</label><br>
    <label for="loving"><input id="loving" type="checkbox" name="personality"> Loving</label>
    <label for="lazy"><input id="lazy" type="checkbox" name="personality"> Lazy</label>
    <label for="energetic"><input id="energetic" type="checkbox" name="personality"> Energetic</label><br>
    <input type="text" placeholder="cat photo URL" required>
    <button type="submit">Submit</button>
  </form>
</main>
```

# --solutions--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <p>Things cats love:</p>
  <ul>
    <li>catnip</li>
    <li>laser pointers</li>
    <li>lasagna</li>
  </ul>
  <p>Top 3 things cats hate:</p>
  <ol>
    <li>flea treatment</li>
    <li>thunder</li>
    <li>other cats</li>
  </ol>
  <form action="https://www.freecatphotoapp.com/submit-cat-photo">
    <label for="indoor"><input id="indoor" type="radio" name="indoor-outdoor" value="indoor"> Indoor</label>
    <label for="outdoor"><input id="outdoor" type="radio" name="indoor-outdoor" value="outdoor"> Outdoor</label><br>
    <label for="loving"><input id="loving" type="checkbox" name="personality" value="loving"> Loving</label>
    <label for="lazy"><input id="lazy" type="checkbox" name="personality" value="lazy"> Lazy</label>
    <label for="energetic"><input id="energetic" type="checkbox" name="personality" value="energetic"> Energetic</label><br>
    <input type="text" placeholder="cat photo URL" required>
    <button type="submit">Submit</button>
  </form>
</main>
```
