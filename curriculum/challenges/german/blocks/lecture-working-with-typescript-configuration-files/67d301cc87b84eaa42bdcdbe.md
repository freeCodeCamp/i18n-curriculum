---
id: 67d301cc87b84eaa42bdcdbe
title: "Was ist eine tsconfig-Datei und warum ist es wichtig, sie in Ihren TypeScript-Projekten einzubinden?"
challengeType: 19
dashedName: what-is-a-tsconfig-file-and-why-is-it-important-to-include-in-your-typescript-projects
---

# --description--

Die Compiler-Einstellungen von TypeScript können so konfiguriert werden, dass sie den Anforderungen Ihres Projekts entsprechen. Diese Konfiguration befindet sich in einer `tsconfig.json`-Datei im Stammverzeichnis Ihres Projekts. Tatsächlich wird der Compiler ohne diese Datei nicht ausgeführt, es sei denn, Sie übergeben ihm direkt Befehlsflags. Aber was genau macht diese Datei? Schauen wir uns ein Beispiel an:

```json
{
  "compilerOptions": {
    "rootDir": "./src",
    "outDir": "./prod",
    "lib": ["ES2023"],
    "target": "ES2023",
    "module": "ES2022",
    "moduleResolution": "Node",
    "esModuleInterop": true,
    "skipLibCheck": true,
    "strict": true
  },
  "exclude": ["test/"]
}
```

Das sieht nach viel aus! Lassen Sie uns das also aufschlüsseln. Die `compilerOptions`-Eigenschaft enthält den „Kern“ Ihrer Konfiguration – hier steuern Sie, wie sich der TypeScript-Compiler verhält. Wenn wir uns dieses verschachtelte Objekt ansehen…

Die `rootDir` und `outDir` geben TypeScript an, welches Verzeichnis Ihre Quelldateien enthält und welches Verzeichnis den transpilierten JavaScript-Code enthalten soll.

Die `lib`-Eigenschaft bestimmt, welche Typdefinitionen der Compiler verwendet, und ermöglicht es Ihnen, Unterstützung für bestimmte ES-Versionen, das DOM und mehr einzuschließen.

`module` und `moduleResolution` arbeiten effektiv zusammen, um zu steuern, wie Ihr Paket Module verwendet – entweder CommonJS oder ECMAScript.

`esModuleInterop` sorgt für eine reibungslosere Interoperabilität zwischen CommonJS- und ES-Modulen, indem automatisch Namespace-Objekte für Importe erstellt werden. So wird es einfacher, Module aus verschiedenen Systemen in Ihren TypeScript-Projekten zusammen zu verwenden. Die `skipLibCheck`-Option überspringt die Validierung von `.d.ts`-Dateien, die nicht durch Importe in Ihrem Code referenziert werden.

Und schließlich erreichen wir den `strict`-Modus. Man könnte argumentieren, dass TypeScript ohne diese aktivierte Option nicht wirklich hilfreich ist, da sie eine Reihe weiterer Prüfungen aktiviert, wie zum Beispiel die Pflicht, nullable Typen korrekt zu behandeln, oder eine Warnung, wenn TypeScript einen Typ nicht ableiten kann und auf any zurückfällt.

Bevor wir abschließen, noch ein kurzer Hinweis zur obersten `exclude`-Eigenschaft – wenn Sie ein Quellverzeichnis definiert haben, kann es sein, dass Sie TypeScript-Code außerhalb dieses Verzeichnisses haben, den Sie nicht als Teil Ihres Produktionscodes kompilieren möchten. Zum Beispiel Ihren Testcode. Das `exclude`-Array weist den Compiler an, diese TypeScript-Dateien während der Kompilierung zu ignorieren, erlaubt aber dennoch Tools wie Intellisense, potenzielle Probleme anzuzeigen.

Es gibt eine Menge weiterer Compiler-Optionen, die Sie erkunden können – über 50! Ich ermutige Sie, die Dokumentation zu studieren und zu experimentieren, um die Konfiguration zu finden, die am besten zu den Anforderungen Ihres Projekts passt.

# --questions--

## --text--

Welche Eigenschaft in der `tsconfig.json`-Datei beeinflusst, wie sich der Compiler verhält?

## --answers--

`rootDir`

### --feedback--

Diese Eigenschaft ist ein Objekt, das Optionen für den Compiler enthält.

---

`compilerOptions`

---

`exclude`

### --feedback--

Diese Eigenschaft ist ein Objekt, das Optionen für den Compiler enthält.

---

`lib`

### --feedback--

Diese Eigenschaft ist ein Objekt, das Optionen für den Compiler enthält.

## --video-solution--

2

## --text--

Was bewirkt die `strict`-Option in der `tsconfig.json`-Datei?

## --answers--

Sie prüft nur auf nullable Typen.

### --feedback--

Diese Option aktiviert verschiedene Prüfungen, einschließlich der Behandlung von nullable Typen.

---

Sie erzwingt die Verwendung von CommonJS-Modulen.

### --feedback--

Diese Option aktiviert verschiedene Prüfungen, einschließlich der Behandlung von nullable Typen.

---

Sie schaltet mehrere Typprüfungsoptionen ein.

---

Sie schließt Testdateien von der Kompilierung aus.

### --feedback--

Diese Option aktiviert verschiedene Prüfungen, einschließlich der Behandlung von nullable Typen.

## --video-solution--

3

## --text--

Was ist der Zweck des `exclude`-Arrays in der `tsconfig.json`-Datei?

## --answers--

Anzugeben, welche Dateien kompiliert werden sollen.

### --feedback--

Sie können dies verwenden, um Testcode von der Kompilierung auszuschließen.

---

Um zusätzliche Bibliotheken aufzulisten, die einbezogen werden sollen.

### --feedback--

Sie können dies verwenden, um Testcode von der Kompilierung auszuschließen.

---

Um bestimmte Dateien während der Kompilierung zu ignorieren.

---

Um Ausgabeverzeichnisse für kompilierte Dateien zu definieren.

### --feedback--

Sie können dies verwenden, um Testcode von der Kompilierung auszuschließen.

## --video-solution--

3
