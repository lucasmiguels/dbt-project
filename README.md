# Análise de Dados de Saúde do Rio de Janeiro Utilizando DBT

Este projeto utiliza a ferramenta **DBT (Data Build Tool)** para realizar o tratamento, transformação e análise de dados relacionados à saúde do Rio de Janeiro. O DBT foi utilizado para realizar todo o processo de transformação dos dados, garantindo que os dados fossem adequadamente preparados para análise posterior.

## Objetivo

O objetivo deste projeto é analisar dados de pacientes do Rio de Janeiro, utilizando DBT para realizar o tratamento e transformação dos dados. Antes do processamento, foi realizada uma Análise Exploratória de Dados (EDA) para entender as características dos dados e identificar padrões ou problemas, o que possibilitou uma transformação mais eficiente e uma análise mais precisa.

Após a transformação com DBT, os dados ficaram prontos para uma análise melhor, com o suporte de modelos de dados otimizados e prontos para serem consumidos em relatórios ou análises.

## Infraestrutura

O banco de dados utilizado para armazenar, processar e transformar os dados é um **PostgreSQL hospedado no Render Cloud**. A plataforma Render Cloud foi escolhida pela sua escalabilidade e simplicidade na gestão de bancos de dados, permitindo um ambiente de processamento eficiente e acessível.

## Estrutura do Projeto

Este repositório segue a estrutura padrão do DBT, com os seguintes diretórios principais:

- **models**
- **macros**
- **seeds**
- **snapshots**
- **tests**
- **analysis**
- **logs**

## Análise Exploratória de Dados (EDA)

Antes de iniciar a transformação com DBT, uma análise exploratória de dados (EDA) foi realizada para entender as características dos dados. Durante essa fase, foram explorados aspectos como a presença de duplicatas, inconsistências e falta de padronização dos dados. Essa análise inicial foi fundamental para guiar as etapas de transformação e para tomar decisões sobre o modelo de dados a ser utilizado.

Após a transformação dos dados utilizando o DBT, foi realizada uma segunda Análise Exploratória de Dados (EDA) nos dados já processados. Essa nova EDA teve como objetivo aprofundar a exploração dos dados transformados, proporcionando uma visão mais clara e detalhada dos resultados obtidos após o processamento.