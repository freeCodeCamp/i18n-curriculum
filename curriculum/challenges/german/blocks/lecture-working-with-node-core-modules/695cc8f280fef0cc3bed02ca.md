---
id: 695cc8f280fef0cc3bed02ca
title: Was ist das Path-Modul und wie funktioniert es?
challengeType: 19
dashedName: what-is-the-path-module-and-how-does-it-work
---

# --description--

Das Node.js `path`-Modul ermöglicht es Ihnen, mit Dateien und Verzeichnispfaden zu arbeiten. Es stellt mehrere nützliche Methoden zum Verarbeiten und Transformieren von Verzeichnissen bereit, darunter das Zusammenführen, Normalisieren und Auflösen von Verzeichnissen über verschiedene Plattformen und Betriebssysteme hinweg.

Um das `path`-Modul zu verwenden, können Sie es so importieren:

```js
const path = require("path");
```

Schauen wir uns einige der Methoden an, die das `path`-Modul bereitstellt, und wie sie funktionieren.

Zuerst sollten Sie die Node.js globalen Variablen `__filename` und `__dirname` kennen, auch bekannt als „common JS“-Variablen. Sie benötigen das `path`-Modul nicht, um auf sie zuzugreifen, weshalb sie globale Variablen genannt werden.

`__filename` ist der absolute Pfad der aktuellen Datei und `__dirname` ist der absolute Pfad des Verzeichnisses, das die aktuelle Datei enthält.

Zum Beispiel arbeite ich gerade mit einer `script.js`-Datei. So geben die beiden Methoden zurück:

```js
console.log(__filename);
// /Users/user/Desktop/fCC/script-code/node/node-path/script.js

console.log(__dirname);
// /Users/user/Desktop/fCC/script-code/node/node-path
```

Sie sollten auch relative und absolute Pfade kennen.

Ein relativer Pfad verweist auf eine Datei oder einen Ordner basierend auf Ihrem aktuellen Arbeitsverzeichnis. Zum Beispiel `./assets/src/text-files`.

Ein absoluter Pfad hingegen gibt die vollständige Adresse einer Datei oder eines Ordners vom Stamm Ihres Systems aus an, wie `/Users/johndoe/projects/app/assets/src/text-files.`.

Die `basename()`-Methode zeigt den letzten Teil der Datei an, also den Dateinamen:

```js
console.log(path.basename(__filename)); // script.js
```

`dirname()` gibt den Verzeichnisnamen eines Pfads zurück:

```js
console.log(path.dirname(__dirname)); // node-path
```

`extname()` gibt die Erweiterung der aktuellen Datei zurück:

```js
console.log(path.extname(__filename)); // .js
```

Sie können auch eine andere Datei angeben, um deren Erweiterung zurückzugeben:

```js
console.log(path.extname('text-files/text1.txt')); // .txt
```

Die `join()`-Methode nimmt alle übergebenen Pfadsegmente und fügt sie zu einem sauberen, normalisierten Pfad zusammen.

Das kann nützlich sein, wenn Sie verwandte Dateien in verschiedenen Ordnern zusammenführen möchten, um gemeinsam mit ihnen zu arbeiten:

```js
const joinedPath = path.join("src", "assets", "text-files");
console.log(joinedPath); // src/assets/text-files
```

Windows verwendet Backslashes zur Trennung von Verzeichnissen, daher ist das Ergebnis `src\assets\text-files`.

Außerdem korrigiert die `join()`-Methode automatisch falsche Schrägstriche und entfernt überflüssige:

```js
const wrongPath = path.join("/src//", "assets", "text-files");
console.log(wrongPath); // /src/assets/text-files
```

Die `resolve()`-Methode wandelt eine Folge von Pfadsegmenten in einen absoluten Pfad um. Sie beginnt bei Ihrem aktuellen Arbeitsverzeichnis und ergibt einen vollständigen Pfad, der auf den genauen Speicherort auf dem Gerät zeigt:

```js
const absolutePath = path.resolve("assets", "src", "text-files");
console.log(absolutePath);
// /Users/user/Desktop/fCC/script-code/node/node-path/assets/src/text-files
```

Der Unterschied zwischen `join()` und `resolve()` besteht darin, dass `join()` einen relativen Pfad erstellt, während `resolve()` einen absoluten Pfad zurückgibt.

Zuletzt gibt es die Methoden `parse()` und `format()`.

`parse()` nimmt ein Verzeichnis oder eine Datei und gibt ein Objekt zurück, das die Aufschlüsselung seiner Teile enthält, wie das Systemstammverzeichnis, das Verzeichnis, die Erweiterung und den Dateinamen:

```js
const parsedFile = path.parse(__filename);

console.log(parsedFile);
/*
{
 root: '/',
 dir: '/Users/user/Desktop/fCC/script-code/node/node-path',
 base: 'script.js',
 ext: '.js',
 name: 'script'
}
*/
```

`format()` hingegen baut einen Pfad aus einem Objekt zusammen, das Verzeichnis, Name und Erweiterung enthält:

```js
const formattedDirectory = path.format({
  dir: "/users/johndoe/docs",
  name: "file",
  ext: ".txt",
});

console.log(formattedDirectory); // /users/johndoe/docs/file.txt
```

# --questions--

## --text--

Was ist der Unterschied zwischen `path.dirname()` und `path.extname()` in Node.js?

## --answers--

`dirname()` entfernt die Dateierweiterung, während `extname()` den Verzeichnisnamen entfernt.

### --feedback--

Achten Sie darauf, welche Methode sich mit Verzeichnissen und welche sich mit Dateierweiterungen beschäftigt.

---

`dirname()` gibt den vollständigen Dateipfad zurück, während `extname()` den Verzeichnisnamen zurückgibt.

### --feedback--

Achten Sie darauf, welche Methode sich mit Verzeichnissen und welche sich mit Dateierweiterungen beschäftigt.

---

`dirname()` gibt den Verzeichnisnamen eines Pfads zurück, während `extname()` die Dateierweiterung zurückgibt.

---

`dirname()` und `extname()` geben beide denselben Wert zurück, jedoch in unterschiedlichen Formaten.

### --feedback--

Achten Sie darauf, welche Methode sich mit Verzeichnissen und welche sich mit Dateierweiterungen beschäftigt.

## --video-solution--

3

## --text--

Welche `path`-Methode baut einen vollständigen Dateipfad aus einem Objekt zusammen, das Verzeichnis-, Name- und Erweiterungseigenschaften enthält?

## --answers--

`path.parse()`

### --feedback--

Denken Sie daran, was das Gegenteil von `parse()` ist.

---

`path.format()`

---

`path.resolve()`

### --feedback--

Denken Sie daran, was das Gegenteil von `parse()` ist.

---

`path.join()`

### --feedback--

Denken Sie daran, was das Gegenteil von `parse()` ist.

## --video-solution--

2

## --text--

Worauf geben die Node.js globalen Variablen `__filename` und `__dirname` Zugriff?

## --answers--

Auf den absoluten Pfad der aktuellen Datei und ihres übergeordneten Verzeichnisses.

---

Auf den Namen des aktuellen Moduls und dessen Abhängigkeiten.

### --feedback--

Denken Sie daran, welche Variablen Ihnen automatisch vollständige Datei- und Ordnerpfade geben, ohne das Path-Modul zu verwenden.

---

Auf den relativen Pfad zum Node.js-Installationsverzeichnis.

### --feedback--

Denken Sie daran, welche Variablen Ihnen automatisch vollständige Datei- und Ordnerpfade geben, ohne das Path-Modul zu verwenden.

---

Auf die URL des laufenden Webservers und dessen Hostnamen.

### --feedback--

Denken Sie daran, welche Variablen Ihnen automatisch vollständige Datei- und Ordnerpfade geben, ohne das Path-Modul zu verwenden.

## --video-solution--

1
