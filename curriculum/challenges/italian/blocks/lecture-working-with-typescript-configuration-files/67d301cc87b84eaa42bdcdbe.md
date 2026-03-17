---
id: 67d301cc87b84eaa42bdcdbe
title: Cos’è un file tsconfig e perché è importante includerlo nei tuoi progetti TypeScript?
challengeType: 19
dashedName: what-is-a-tsconfig-file-and-why-is-it-important-to-include-in-your-typescript-projects
---

# --description--

Le impostazioni del compilatore di TypeScript possono essere configurate per soddisfare le esigenze del tuo progetto. Questa configurazione risiede in un file `tsconfig.json` nella directory principale del tuo progetto. Infatti, senza di esso, il compilatore non verrà eseguito a meno che non gli vengano passati direttamente flag da riga di comando. Ma cosa fa esattamente questo file? Diamo un’occhiata a un file di esempio:

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

Sembra tanto! Quindi analizziamolo. La proprietà `compilerOptions` conterrà la "parte principale" della tua configurazione: qui controlli come si comporta il compilatore TypeScript. Guardando quell’oggetto annidato…

Le `rootDir` e `outDir` indicano a TypeScript quale directory contiene i file sorgente e quale directory dovrebbe contenere il codice JavaScript trascritto.

La proprietà `lib` determina quali definizioni di tipo usa il compilatore e ti permette di includere il supporto per specifiche versioni di ES, il DOM e altro.

`module` e `moduleResolution` lavorano insieme per gestire come il tuo pacchetto usa i moduli, sia CommonJS sia ECMAScript.

`esModuleInterop` permette una migliore interoperabilità tra moduli CommonJS e ES creando automaticamente oggetti namespace per le importazioni, facilitando l’uso di moduli provenienti da sistemi diversi nei tuoi progetti TypeScript, mentre l’opzione `skipLibCheck` evita di validare i file `.d.ts` che non sono referenziati da importazioni nel tuo codice.

E infine arriviamo alla modalità `strict`. Si potrebbe dire che TypeScript non sia veramente utile senza questo flag abilitato, perché attiva diversi altri controlli, come richiedere di gestire correttamente i tipi nullable o avvisare quando TypeScript non riesce a inferire un tipo e ricade su any.

Prima di concludere, una breve nota sulla proprietà `exclude` a livello superiore: quando hai definito una directory sorgente, potresti avere codice TypeScript al di fuori di quella directory che non vuoi venga compilato come parte del codice di produzione. Per esempio, il codice dei test. L’array `exclude` dice al compilatore di ignorare questi file TypeScript durante la compilazione, ma permette comunque a strumenti come Intellisense di esporre eventuali problemi.

Ci sono tantissime altre opzioni del compilatore che puoi esplorare — oltre 50! Ti incoraggio a consultare la documentazione e sperimentare per trovare la configurazione che funziona per le esigenze del tuo progetto.

# --questions--

## --text--

Quale proprietà nel file `tsconfig.json` influisce sul comportamento del compilatore?

## --answers--

`rootDir`

### --feedback--

Questa proprietà è un oggetto che contiene opzioni per il compilatore.

---

`compilerOptions`

---

`exclude`

### --feedback--

Questa proprietà è un oggetto che contiene opzioni per il compilatore.

---

`lib`

### --feedback--

Questa proprietà è un oggetto che contiene opzioni per il compilatore.

## --video-solution--

2

## --text--

Cosa fa l’opzione `strict` nel file `tsconfig.json`?

## --answers--

Controlla solo i tipi nullable.

### --feedback--

Questa opzione abilita vari controlli, incluso il trattamento dei tipi nullable.

---

Impone l’uso dei moduli CommonJS.

### --feedback--

Questa opzione abilita vari controlli, incluso il trattamento dei tipi nullable.

---

Attiva diverse opzioni di controllo dei tipi.

---

Esclude i file di test dalla compilazione.

### --feedback--

Questa opzione abilita vari controlli, incluso il trattamento dei tipi nullable.

## --video-solution--

3

## --text--

Qual è lo scopo dell’array `exclude` nel file `tsconfig.json`?

## --answers--

Specificare quali file compilare.

### --feedback--

Puoi usarlo per escludere il codice di test dalla compilazione.

---

Elencare librerie aggiuntive da includere.

### --feedback--

Puoi usarlo per escludere il codice di test dalla compilazione.

---

Ignorare certi file durante la compilazione.

---

Definire le directory di output per i file compilati.

### --feedback--

Puoi usarlo per escludere il codice di test dalla compilazione.

## --video-solution--

3
