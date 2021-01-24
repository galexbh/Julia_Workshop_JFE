"""
    # ! Procesamiento del Lenguaje Natural
    # * Busca ilustrar las capacidades de realizar procesamiento de texto utilizando ecosistemas ya existentes en Julia.
    # @author galexbh@protonmail.com
    # @version 0.1
"""

using Pkg; Pkg.activate("."); Pkg.instantiate()

using TextAnalysis

# Configuración del documento

pathname = "./Document/test.txt"

crps = Corpus([FileDocument(pathname)])

update_lexicon!(crps)

# Estandarizando el crps

#standardize!(crps, NGramDocument)

# Modificando la metadata

language!(crps, [TextAnalysis.Languages.Spanish()])

title!(crps, ["Acabar con todo"])

author!(crps, ["Octavio Paz"])

timestamp!(crps, ["Desconocido"])

crps

# Ver la metadata

languages(crps)
titles(crps)
authors(crps)
timestamps(crps)

# Creación de una matriz de términos del documento

m = DocumentTermMatrix(crps)

dtm(m, :dense)

# Frecuencia de los terminos

tf(m)

# LSA: Latent Semantic Analysis

lsa(crps)
