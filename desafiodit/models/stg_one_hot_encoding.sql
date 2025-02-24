WITH stg_padronizacao AS (
    SELECT * FROM {{ ref('stg_padronizacao') }}
)

SELECT 
    stg_padronizacao.*,
    
    -- Criando colunas binárias para doenças mais comuns (One-Hot Encoding)
    CASE WHEN doencas_condicoes LIKE '%Diabetes%' THEN 1 ELSE 0 END AS Diabetes,
    CASE WHEN doencas_condicoes LIKE '%Asma%' THEN 1 ELSE 0 END AS Asma,
    CASE WHEN doencas_condicoes LIKE '%Alcoolismo%' THEN 1 ELSE 0 END AS Alcoolismo,
    CASE WHEN doencas_condicoes LIKE '%Def. Física%' THEN 1 ELSE 0 END AS Def_Fisica,
    CASE WHEN doencas_condicoes LIKE '%Def. Mental%' THEN 1 ELSE 0 END AS Def_Mental,
    CASE WHEN doencas_condicoes LIKE '%Gestante%' THEN 1 ELSE 0 END AS Gestante,
    CASE WHEN doencas_condicoes LIKE '%Hipertensão%' THEN 1 ELSE 0 END AS Hipertensao,
    CASE WHEN doencas_condicoes LIKE '%AIDS%' THEN 1 ELSE 0 END AS AIDS,
    CASE WHEN doencas_condicoes LIKE '%Outros%' THEN 1 ELSE 0 END AS Outros,
    CASE WHEN doencas_condicoes LIKE '%Tabagismo%' THEN 1 ELSE 0 END AS Tabagismo,
    CASE WHEN doencas_condicoes LIKE '%Transtorno Mental%' THEN 1 ELSE 0 END AS Transtorno_Mental,
    CASE WHEN doencas_condicoes LIKE '%Tuberculose%' THEN 1 ELSE 0 END AS Tuberculose,
    CASE WHEN doencas_condicoes LIKE '%Usuário de Drogas%' THEN 1 ELSE 0 END AS Usuario_Drogas,
    CASE WHEN doencas_condicoes LIKE '%Violência Doméstica%' THEN 1 ELSE 0 END AS Violencia_Domestica,

    -- Criando colunas binárias para meios de transporte
    CASE WHEN meios_transporte LIKE '%Bicicleta%' THEN 1 ELSE 0 END AS Bicicleta,
    CASE WHEN meios_transporte LIKE '%Carro%' THEN 1 ELSE 0 END AS Carro,
    CASE WHEN meios_transporte LIKE '%Metrô%' THEN 1 ELSE 0 END AS Metro,
    CASE WHEN meios_transporte LIKE '%Ônibus%' THEN 1 ELSE 0 END AS Onibus,
    CASE WHEN meios_transporte LIKE '%Trem%' THEN 1 ELSE 0 END AS Trem,
    CASE WHEN meios_transporte LIKE '%Alternativo%' THEN 1 ELSE 0 END AS Alternativo,
    CASE WHEN meios_transporte LIKE '%Caminhão%' THEN 1 ELSE 0 END AS Caminhao,

    -- Criando colunas binárias para meios de comunicação
    CASE WHEN meios_comunicacao LIKE '%Internet%' THEN 1 ELSE 0 END AS Internet,
    CASE WHEN meios_comunicacao LIKE '%Jornal%' THEN 1 ELSE 0 END AS Jornal,
    CASE WHEN meios_comunicacao LIKE '%Rádio%' THEN 1 ELSE 0 END AS Radio,
    CASE WHEN meios_comunicacao LIKE '%Revista%' THEN 1 ELSE 0 END AS Revista,
    CASE WHEN meios_comunicacao LIKE '%Televisão%' THEN 1 ELSE 0 END AS Televisao,
    CASE WHEN meios_comunicacao LIKE '%Outros%' THEN 1 ELSE 0 END AS Outros_meios_comunicacao

FROM stg_padronizacao
