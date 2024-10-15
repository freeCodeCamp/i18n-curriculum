---
id: 637f702872c65bc8e73dfe33
videoId: ta3Oxx7Yqbo
title: Links and Images Lesson D
challengeType: 15
dashedName: links-and-images-lesson-d
---

# --description--


Im Allgemeinen gibt es zwei Arten von Links, die du erstellen wirst:

- Links zu Seiten auf anderen Websites im Internet

- Links zu Seiten auf deinen eigenen Websites


## Absolute Links
Links to pages on other websites on the internet are called absolute links. Ein typischer absoluter Link besteht aus den folgenden Teilen: `protocol://domain/path`. Ein absoluter Link wird immer das Protokoll und die Domäne des Ziels enthalten.

Du hast bereits einen absoluten Link in Aktion gesehen. The link you created to The Odin Project’s About page earlier was an absolute link as it contains the protocol and domain.

`https://www.theodinproject.com/about`

## Relative Links
Links to other pages within your own website are called relative links. Relative Links enthalten keine Domain-Namen, da es sich um eine andere Seite auf derselben Website handelt, wird davon ausgegangen, dass der Domain-Name derselbe ist wie der der Seite, auf der du den Link erstellt hast.

Relative links only include the file path to the other page, relative to the page you are creating the link on. Dies ist ziemlich abstrakt, lasst uns dies anhand eines Beispiels in Aktion sehen.

Within the `odin-links-and-images` directory, create another HTML file named `about.html` and paste the following code into it:

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Odin Links and Images</title>
  </head>

  <body>
    <h1>About Page</h1>
  </body>
</html>
```

Back in the `index` page, add the following anchor element to create a link to the `about` page:

```html
<body>
  <h1>Homepage</h1>
    <a href="https://www.theodinproject.com/about">click me</a>

    <a href="about.html">About</a>
</body>
```

Öffne die `index.html`-Datei in einem Browser und klicke auf den Link "Über", um sicherzustellen, dass alles richtig verknüpft ist. Clicking the link should go to the `about` page you just created.

This works because the `index` and `about` page are in the same directory. Das bedeutet, dass du einfach seinen Namen (`about.html`) als `href`-Wert des Links verwenden kannst.

But you will usually want to organize your website directories a little better. Normally you would only have the `index.html` at the root directory and all other HTML files in their own directory.

Erstelle ein Verzeichnis namens `pages` innerhalb des `odin-links-and-images`-Verzeichnisses und verschiebe die Datei `about.html` in dieses neue Verzeichnis.

Refresh the `index` page in the browser and then click on the `about` link. Sie wird nun gebrochen. Das liegt daran, dass sich der Speicherort der `about`-Seitendatei geändert hat.

Um dies zu beheben, musst du nur den `about`-Link `href`-Wert aktualisieren, um das `pages/`-Verzeichnis einzuschließen, da dies die neue Position der `about.html`-Datei relativ zur `index.html`-Datei ist.

```html
<body>
  <h1>Homepage</h1>
  <a href="pages/about.html">About</a>
</body>
```

Refresh the `index` page in the browser and try clicking the `about` link again, it should now be back in working order.

In den meisten Fällen wird dies problemlos funktionieren, aber es kann auch zu unerwarteten Problemen führen. Das Voranstellen von `./` vor den Link verhindert in den meisten Fällen solche Probleme. By adding `./` you are specifying to your code that it should start looking for the file/directory relative to the **current** directory.

```html
<body>
  <h1>Homepage</h1>
  <a href="./pages/about.html">About</a>
</body>
```

# --assignment--

Sieh dir oben Kevin Powells Video zur HTML-Dateistruktur an.

# --questions--

## --text--

Was ist der Unterschied zwischen einem absoluten und einem relativen Link?

## --answers--

Ein absoluter Link ist ein Link zu einer anderen Seite auf der aktuellen Website. Ein relativer Link ist ein Link zu einer anderen Website.

---

Ein absoluter Link ist ein Link zu einer anderen Website. Ein relativer Link ist ein Link zu einer anderen Seite auf der aktuellen Website.

---

Es besteht kein Unterschied zwischen absoluten und relativen Links.

## --video-solution--

2
