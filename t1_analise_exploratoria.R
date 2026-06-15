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
# 2. Leitura da base de dados de dengue - 2025
# ------------------------------------------------------------

dados_dengue <- read_delim(
  file = "dados/DENGBR25.csv",
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

# ------------------------------------------------------------
# 4. Caracterização da base, dos tipos de atributos, dos valores faltantes e das
  #duplicidade
# ------------------------------------------------------------


# ------------------------------------------------------------
# 5. Estatísticas descritivas e pelo menos cinco visualizações relevantes
# ------------------------------------------------------------
