# ------------------------------------------------------------
# 1. Carregamento das bibliotecas
# ------------------------------------------------------------
library(daltoolbox)
library(tidyr)
library(readr)
library(dplyr)
library(ggplot2)
library(stringr)


# ------------------------------------------------------------
# 2. Leitura da base de dados de dengue - 2024
# ------------------------------------------------------------

dados_dengue <- read_delim(
  file = "dados/DENGBR24.csv",
  delim = ",",
  col_types = cols(.default = col_character()),
  show_col_types = FALSE
)


# ------------------------------------------------------------
# 3. Caracterização inicial do dataset original
# ------------------------------------------------------------

quantidade_linhas_original <- nrow(dados_dengue)
quantidade_colunas_original <- ncol(dados_dengue)


cat("Quantidade de linhas: ",quantidade_linhas_original,"\n")
cat("Quantidade de colunas: ",quantidade_colunas_original,"\n")

dados_dengue_sudeste <- dados_dengue[
  dados_dengue$SG_UF_NOT %in% c(33,32,35,31),# pegando apenas o sudeste
]

quantidade_linhas_sudeste <- nrow(dados_dengue_sudeste)
quantidade_colunas_sudeste <- ncol(dados_dengue_sudeste)

resultado <- as.data.frame(table(dados_dengue_sudeste$EVOLUCAO)) #pegar a proprorcao de obitos e curas

print(resultado)

print(unique(dados_dengue_sudeste$SG_UF_NOT))

print(unique(dados_dengue_sudeste$ID_AGRAVO))

# ------------------------------------------------------------
# 4. Caracterização da base, dos tipos de atributos, dos valores faltantes e das
  #duplicidade
# ------------------------------------------------------------

# valores_faltantes <- data.frame(
#   atributo = names(dados_dengue),
#   quantidade_faltantes = colSums(is.na(dados_dengue)),
#   total_valores_coluna = sapply(dados_dengue, length)
# ) %>%
#   mutate(
#     percentual_faltantes = round(
#       quantidade_faltantes / total_valores_coluna * 100,
#       2
#     )
#   ) %>%
#   arrange(desc(quantidade_faltantes))

# valores_faltantes

# #Duplicidades
# quantidade_duplicados <- sum(duplicated(dados_dengue))

# quantidade_duplicados

# ------------------------------------------------------------
# 5. Estatísticas descritivas e pelo menos cinco visualizações relevantes
# ------------------------------------------------------------
