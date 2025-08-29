---
id: 5e9a093a74c4063ca6f7c161
title: Introducción a Lectura de datos
challengeType: 11
videoId: cDnt02BcHng
bilibiliIds:
  aid: 548023524
  bvid: BV1Nq4y1K7iV
  cid: 409020187
dashedName: reading-data-introduction
---

# --description--

*En lugar de usar notebooks.ai como se muestra en el vídeo, puede utilizar Google Colab en su lugar.*

Más recursos:

-  <a href="https://github.com/krishnatray/RDP-Reading-Data-with-Python-and-Pandas" target="_blank" rel="noopener noreferrer nofollow">Notebooks en GitHub</a>
-  <a href="https://colab.research.google.com/github/googlecolab/colabtools/blob/master/notebooks/colab-github-demo.ipynb" target="_blank" rel="noopener noreferrer nofollow">Cómo abrir Notebooks desde GitHub usando Google Colab.</a>

# --questions--

## --text--

Dado un archivo llamado `certificates.csv` con estos contenidos:

<pre>
Nombre$Certificates$Tiempo (en meses)
Tom$8$16
Kris$2$5
Ahmad$5$9
Beau$6$12
</pre>

Rellena los espacios en blanco de los argumentos que faltan a continuación:

```py
import csv

with open(__A__, 'r') as fp:
    reader = csv.reader(fp, delimiter=__B__)
    next(reader)
    for index, values in enumerate(reader):
        name, certs_num, months_num = values
        print(f"{name} earned {__C__} certificates in {months_num} months")
```

## --answers--

A: `'certificates.csv'`

B: `'-'`

C: `values`

---

A: `'certificates.csv'`

B: `'$'`

C: `certs_num`

---

A: `'certificates'`

B: `'$'`

C: `certs_num`

## --video-solution--

2

