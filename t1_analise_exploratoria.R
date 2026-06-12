# ============================================================
# T1 - Busca e Análise Exploratória de Dados com DAL Toolbox
# Base: DENGBR24.csv
# Fonte: https://dados.gov.br/dados/conjuntos-dados/arboviroses-dengue
# ============================================================

# ============================================================
# Integrantes
# ============================================================

# Robson Eduardo
# Stella Cipriano Queiroz
# Cesar Julinho Garcia Rios

cat("T1 - Busca e Análise Exploratória de Dados com DAL Toolbox\n")
cat("Integrantes:\n")
cat("- Robson Eduardo\n")
cat("- Stella Cipriano Queiroz\n")
cat("- Cesar Julinho Garcia Rios\n\n")

# ============================================================
# 1. Carregamento dos pacotes
# ============================================================

library(tidyverse)
library(daltoolbox)

# ============================================================
# 2. Carregamento da base de dados
# ============================================================

caminho_base <- "dados/DENGBR24.csv"

dados_dengue <- read_csv2(caminho_base)

# ============================================================
# 3. Conferência inicial da leitura
# ============================================================

cat("Base carregada com sucesso.\n")
cat("Quantidade de linhas:", nrow(dados_dengue), "\n")
cat("Quantidade de colunas:", ncol(dados_dengue), "\n\n")

head(dados_dengue)