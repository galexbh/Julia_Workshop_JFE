# Procesamiento del lenguaje natural

El proyecto de procesamiento del lenguaje natural (referido como NLP a partir de ahora, por sus siglas en inglés) busca ilustrar las capacidades de realizar procesamiento de texto utilizando ecosistemas ya existentes en Julia. Estos combinan la elegancia de escritura de código de Julia junto con el alto rendimiento para ser capaces de realizar análisis a gran escala.

Esto se hará con el paquete TextAnalysis, el cual podría para algunas aplicaciones extenderse por TextModels. Se debe utilizar algún archivo de texto con tamaño no trivial (más de algún par de párrafos) y partir de allí para realizar los siguientes pasos:

Cargar el archivo en las estructuras nativas de TextAnalysis, procurando que la metadata sea descriptiva.

Realizar análisis descriptivos como frecuencia y ubicación de términos (posible con un léxicon o con la matriz de términos del documento).

Hacer algún análisis intermedio:

1. Sentiment Analysis

2. Named Entity Recnognition

3. Latent Semantic Analysis

4. Clasificador basado en Naive Bayes

5. Latent Dirichlet Allocation

etc.
