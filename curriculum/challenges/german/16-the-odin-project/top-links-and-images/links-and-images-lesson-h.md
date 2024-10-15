---
id: 637f700b72c65bc8e73dfe2f
title: Links and Images Lesson H
challengeType: 15
dashedName: links-and-images-lesson-h
---

# --description--

Websites wären ziemlich langweilig, wenn sie nur Text anzeigen könnten. Glücklicherweise bietet HTML eine Vielzahl von Elementen für die Darstellung unterschiedlichster Medien. Das am häufigsten verwendete Element ist das Bildelement.

To display an image in HTML you use the `<img>` element. Unlike the other elements you have encountered, the `<img>` is a void element. Empty, void HTML elements do not need a closing tag.

Anstatt den Inhalt mit einem öffnenden und abschließenden Tag zu umschließen, wird ein Bild mit einem `src`-Attribut in die Seite eingebettet, das dem Browser mitteilt, wo sich die Bilddatei befindet. Das `src`-Attribut funktioniert ähnlich wie das `href`-Attribut für Ankertags. Es kann ein Bild sowohl mit absoluten als auch mit relativen Pfaden einbetten.

Mit einem absoluten Pfad kann man z. B. ein Bild auf der "The Odin Project"-Seite anzeigen:

<iframe allowfullscreen="true" allowpaymentrequest="true" allowtransparency="true" class="cp_embed_iframe " frameborder="0" height="300" width="100%" name="cp_embed_1" scrolling="no" src="https://codepen.io/TheOdinProjectExamples/embed/gORbExZ?height=300&amp;theme-id=dark&amp;default-tab=html%2Cresult&amp;slug-hash=gORbExZ&amp;user=TheOdinProjectExamples&amp;name=cp_embed_1" style="width: 100%; overflow:hidden; display:block;" title="CodePen-Einbettung" loading="lazy" id="cp_embed_gORbExZ"></iframe>

Um Bilder von deinen eigenen Websites zu verwenden, kannst du einen relativen Pfad verwenden.

- Erstelle ein neues Verzeichnis mit dem Namen `images` im `odin-links-and-images`-Projekt.

- Lade anschließend <a href="https://unsplash.com/photos/Mv9hjnEUHR4/download?force=true&w=640" target="_blank"> dieses Bild</a> herunter und verschiebe es in das images-Verzeichnis, das du soeben erstellt hast.

- Benenne das Bild in `dog.jpg` um.

Füge das Bild schließlich in die `index.html`-Datei ein:

```html
<body>
  <h1>Homepage</h1>
    <a href="https://www.theodinproject.com/about">click me</a>

    <a href="pages/about.html">About</a>

    <img src="images/dog.jpg">
</body>
```

Speichere die `index.html`-Datei und öffne sie in einem Browser, um Charles in seiner ganzen Pracht zu sehen.


## Übergeordnete Verzeichnisse

Was, wenn du das Bild des Hundes auf der `about`-Seite verwenden möchtest? You would first have to go up one level out of the pages directory into its parent directory so you could then access the images directory.

Um zum übergeordneten Verzeichnis zu gelangen, musst du zwei Punkte im relativen Pfad wie folgt verwenden: `../.` Lass uns dies in Aktion sehen, füge innerhalb des `body` der `about.html`-Datei das folgende Bild unter der Überschrift ein, die du zuvor hinzugefügt hast:

```html
<img src="../images/dog.jpg">
```

Um dies zu verdeutlichen:

- Gehe zuerst zum übergeordneten Verzeichnis des Seitenverzeichnisses, das `odin-links-and-images` heißt.

- Dann kannst du vom übergeordneten Verzeichnis in das `images`-Verzeichnis wechseln.

- Schließlich kannst du auf die `dog.jpg`-Datei zugreifen.

Using the metaphor we used earlier, using `../` in a filepath is kind of like stepping out from the room you are currently in to the main hallway so you can go to another room.

## Alt-Attribut

Naben dem `src`-Attribut sollte jedes Bildelement auch ein `alt` (alternative text)-Attribut haben.

Das `alt`-Attribut wird verwendet, um ein Bild zu beschreiben. Es wird anstelle des Bildes verwendet, wenn dieses nicht geladen werden kann. Es wird auch bei Screenreader verwendet, um sehbehinderten Benutzern das Bild zu beschreiben.

So sieht das Beispiel des Logos von den The Odin Project aus, das du zuvor verwendet hast, wenn ein alt-Attribut hinzugefügt wird:
<iframe allowfullscreen="true" allowpaymentrequest="true" allowtransparency="true" class="cp_embed_iframe " frameborder="0" height="300" width="100%" name="cp_embed_2" scrolling="no" src="https://codepen.io/TheOdinProjectExamples/embed/ExXjoEp?height=300&amp;theme-id=dark&amp;default-tab=html%2Cresult&amp;slug-hash=ExXjoEp&amp;user=TheOdinProjectExamples&amp;name=cp_embed_2" style="width: 100%; overflow:hidden; display:block;" title="CodePen-Einbettung" loading="lazy" id="cp_embed_ExXjoEp"></iframe>

# --Auftrag--

Read about the <a href="https://www.freecodecamp.org/news/image-file-types-picture-format-extensions-jpeg-gif-png-svg-tiff/" target="_blank">four main image formats</a> that can be used on the web.

# --questions--

## --text--

Was sind die vier wichtigsten Bildformate, die für Bilder im Internet verwendet werden können?

## --answers--

MOV, GIF, PNG, und SVG.

---

JPG, PNG, GIF und SVG.

---

JPG, PDF, SVG und GIF.

## --video-solution--

2
