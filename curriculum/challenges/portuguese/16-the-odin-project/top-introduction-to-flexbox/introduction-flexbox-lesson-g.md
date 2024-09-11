---
id: 6571c34568e4b3b17d3957f8
title: Lição B de Introdução ao Flexbox
challengeType: 15
dashedName: introduction-flexbox-lesson-g
---

# --description--

`flex-shrink` é similar a `flex-grow`, mas define o "fator de encolhimento" de um item flex. `flex-shrink` só é aplicado se o tamanho de todos os itens flex for maior do que o tamanho do contêiner pai. Por exemplo, se as 3 divs acima tivessem uma declaração de largura como: `width: 100px` e `.flex-container` fosse menor que `300px`, elas teriam que encolher para caber.

O fator de encolhimento padrão é `flex-shrink: 1`, o que significa que todos os itens vão encolher igualmente. Se você não quiser que um item encolha, você pode especificar `flex-shrink: 0;`. Você também pode especificar números mais altos para fazer com que certos itens encolham em uma taxa maior que o normal.

Aqui está um exemplo. Se você encolher a janela do navegador, perceberá que `.two` nunca fica menor que a largura dada de `250px`, mesmo que a regra `flex-grow` especifique que cada elemento deve ter tamanho igual.

<iframe allowfullscreen="true" allowpaymentrequest="true" allowtransparency="true" class="cp_embed_iframe " frameborder="0" height="300" width="100%" name="cp_embed_2" scrolling="no" src="https://codepen.io/TheOdinProjectExamples/embed/JjJXZVz?height=300&amp;default-tab=html%2Cresult&amp;slug-hash=JjJXZVz&amp;editable=true&amp;user=TheOdinProjectExamples&amp;name=cp_embed_2" style="width: 100%; overflow:hidden; display:block;" title="CodePen incorporado" loading="lazy" id="cp_embed_JjJXZVz"></iframe>

Uma importante implicação que deve ser percebida aqui é o fato de que, quando você especifica `flex-grow` ou `flex-shrink`, os itens flexíveis não necessariamente respeitam seus valores dados para `width`. No exemplo acima, os 3 elementos div recebem uma `width` de `250px`, mas quando o pai é suficientemente grande, crescem para o preencher. Da mesma maneira, quando o contêiner pai é muito pequeno, o comportamento padrão é que eles encolham para caber. Isso não é um bug, mas pode ser um comportamento confuso se você não estiver esperando por isso.

# --question--

## --text--

Qual é o comportamento padrão de `flex-shrink` quando aplicado a itens flexíveis?

## --answers--

Ele impede que qualquer item encolha.

---

Ele faz com que todos os itens encolham a uma taxa igual.

---

Ele faz com que apenas itens específicos encolham.

---

Ele aumenta o tamanho dos itens igualmente.


## --video-solution--

2
