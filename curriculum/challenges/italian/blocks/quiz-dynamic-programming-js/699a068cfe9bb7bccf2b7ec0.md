---
id: 699a068cfe9bb7bccf2b7ec0
title: Quiz sulla programmazione dinamica
challengeType: 8
dashedName: quiz-dynamic-programming-js
---

# --description--

Per superare il quiz, devi rispondere correttamente ad almeno 9 delle 10 domande seguenti.

# --quizzes--

## --quiz--

### --question--

#### --text--

Quali sono le due proprietà essenziali che devono essere presenti in un problema affinché la programmazione dinamica sia un approccio efficace?

#### --distractors--

Tempo di esecuzione rapido e uso minimo della memoria

---

Capacità di ricorsione e loop iterativi

---

Elaborazione sequenziale e calcolo parallelo

#### --answer--

Sovrapposizione di sottoproblemi e sottostruttura ottimale

### --question--

#### --text--

Qual è la differenza principale tra gli approcci di memoizzazione e tabulazione nella programmazione dinamica?

#### --distractors--

La memoizzazione usa tabelle hash mentre la tabulazione usa array, rendendola più efficiente.

---

La memoizzazione è più veloce ma usa più memoria e cicli CPU rispetto alla tabulazione.

---

La memoizzazione può risolvere solo problemi più semplici rispetto alla tabulazione.

#### --answer--

La memoizzazione è un approccio top-down che usa la ricorsione, mentre la tabulazione è un approccio bottom-up che usa l’iterazione.

### --question--

#### --text--

Perché le soluzioni ricorsive naive ai problemi di programmazione dinamica hanno tipicamente complessità temporale esponenziale?

#### --distractors--

Perché usano quantità esponenziali di memoria per archiviare variabili.

---

Perché richiedono di ordinare i dati in tempo esponenziale.

---

Perché devono controllare tutte le possibili permutazioni dell’input.

#### --answer--

Perché ogni chiamata ricorsiva si ramifica più volte, causando il ricalcolo ripetuto degli stessi sottoproblemi.

### --question--

#### --text--

Cosa significa sottostruttura ottimale nel contesto della programmazione dinamica?

#### --distractors--

L’algoritmo deve usare la struttura dati più efficiente disponibile.

---

La soluzione deve minimizzare contemporaneamente la complessità temporale e spaziale.

---

Il problema deve avere una soluzione ottimale unica e singola.

#### --answer--

La soluzione ottimale può essere costruita a partire dalle soluzioni ottimali dei suoi sottoproblemi.

### --question--

#### --text--

Quando si implementa la memoizzazione, cosa succede quando una funzione viene chiamata con argomenti già calcolati?

#### --distractors--

La funzione ricalcola il risultato per garantire precisione.

---

La funzione fa la media tra i risultati vecchi e nuovi per maggiore precisione.

---

Viene lanciato un errore perché i calcoli duplicati non sono permessi.

#### --answer--

Il risultato memorizzato nella cache viene restituito immediatamente senza ricalcolo.

### --question--

#### --text--

Qual è un vantaggio chiave dell’uso della tabulazione invece della memoizzazione?

#### --distractors--

La tabulazione richiede sempre meno memoria della memoizzazione.

---

La tabulazione può risolvere una classe più ampia di problemi.

---

La tabulazione è sempre più facile da implementare e comprendere.

#### --answer--

La tabulazione evita l’overhead della ricorsione e offre un’esecuzione sequenziale prevedibile.

### --question--

#### --text--

In una soluzione di programmazione dinamica bottom-up, perché i casi base vengono inizializzati per primi?

#### --distractors--

Per allocare la memoria per la struttura dati in modo efficiente.

---

Per prevenire loop infiniti nell’algoritmo.

---

Per migliorare la complessità temporale dell’algoritmo.

#### --answer--

Per fornire valori fondamentali su cui costruire tutti i sottoproblemi più grandi.

### --question--

#### --text--

Come trasforma la programmazione dinamica la complessità temporale dei problemi che mostrano sottoproblemi sovrapposti?

#### --distractors--

Da polinomiale a logaritmica dividendo il problema in modo efficiente.

---

Da quadratica a lineare ottimizzando le strutture di loop.

---

Da lineare a costante usando tabelle hash.

#### --answer--

Da esponenziale a polinomiale memorizzando e riutilizzando le soluzioni dei sottoproblemi.

### --question--

#### --text--

Quale compromesso fa tipicamente la programmazione dinamica per ottenere una migliore complessità temporale?

#### --distractors--

Sacrifica la leggibilità del codice per un’esecuzione più veloce.

---

Richiede algoritmi più complessi e difficili da mantenere.

---

Limita la dimensione dei problemi che possono essere risolti.

#### --answer--

Usa spazio aggiuntivo per archiviare risultati intermedi.

### --question--

#### --text--

In quale scenario la programmazione dinamica NON sarebbe l’approccio algoritmico appropriato?

#### --distractors--

Quando il problema richiede di trovare una soluzione ottimale.

---

Quando il problema può essere suddiviso in sottoproblemi più piccoli.

---

Quando la complessità spaziale deve essere minimizzata.

#### --answer--

Quando i sottoproblemi sono indipendenti e non si sovrappongono.
