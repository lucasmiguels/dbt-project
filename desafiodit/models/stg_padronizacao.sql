
WITH raw_data AS (
    SELECT
        id_paciente,
        sexo,
        bairro,
        raca_cor,
        ocupacao,
        religiao,
        data_cadastro,
        escolaridade,
        nacionalidade,
        renda_familiar,
        data_nascimento,
        frequenta_escola,
        meios_transporte,
        doencas_condicoes,
        identidade_genero,
        meios_comunicacao,
        orientacao_sexual,
        situacao_profissional,
        data_atualizacao_cadastro,
        altura,
        peso,
        pressao_sistolica,
        pressao_diastolica,
        n_atendimentos_atencao_primaria,
        n_atendimentos_hospital,
        updated_at,
        tipo,
        -- Tratamento de True/False para 1/0 
        CAST(
            CASE 
                WHEN obito IN ('True', '1') THEN '1'
                WHEN obito IN ('False', '0') THEN '0'
                ELSE NULL 
            END AS INT
        ) AS obito,

        CAST(
            CASE 
                WHEN luz_eletrica IN ('True', '1') THEN '1'
                WHEN luz_eletrica IN ('False', '0') THEN '0'
                ELSE NULL 
            END AS INT
        ) AS luz_eletrica,

        CAST(
            CASE 
                WHEN em_situacao_de_rua IN ('True', '1') THEN '1'
                WHEN em_situacao_de_rua IN ('False', '0') THEN '0'
                ELSE NULL 
            END AS INT
        ) AS em_situacao_de_rua,

        CAST(
            CASE 
                WHEN possui_plano_saude IN ('True', '1') THEN '1'
                WHEN possui_plano_saude IN ('False', '0') THEN '0'
                ELSE NULL 
            END AS INT
        ) AS possui_plano_saude,

        CAST(
            CASE 
                WHEN vulnerabilidade_social IN ('True', '1') THEN '1'
                WHEN vulnerabilidade_social IN ('False', '0') THEN '0'
                ELSE NULL 
            END AS INT
        ) AS vulnerabilidade_social,

        CAST(
            CASE 
                WHEN familia_beneficiaria_auxilio_brasil IN ('True', '1') THEN '1'
                WHEN familia_beneficiaria_auxilio_brasil IN ('False', '0') THEN '0'
                ELSE NULL 
            END AS INT
        ) AS familia_beneficiaria_auxilio_brasil,

        CAST(
            CASE 
                WHEN crianca_matriculada_creche_pre_escola IN ('True', '1') THEN '1'
                WHEN crianca_matriculada_creche_pre_escola IN ('False', '0') THEN '0'
                ELSE NULL 
            END AS INT
        ) AS crianca_matriculada_creche_pre_escola,

        -- Tratamento da religião
        CASE 
            WHEN religiao IN ('Sem religião', 'Católica', 'Outra', 'Evangélica', 
                              'Espírita', 'Religião de matriz africana', 'Não', 
                              'Budismo', 'Judaísmo', 'Candomblé', 'Islamismo', 'Sim') 
            THEN religiao
            ELSE 'Não Registrado'
        END AS religiao_tratado,

        -- Tratamento da identidade de gênero
        CASE 
            WHEN identidade_genero IN ('Homossexual (gay / lésbica)', 'Bissexual') THEN 'Não registrado'
            WHEN identidade_genero IN ('Mulher transexual', 'Homem transexual') THEN 'Transexual'
            ELSE identidade_genero 
        END AS identidade_genero_tratado

    FROM {{ source('ditproject', 'raw_data') }}  
)

SELECT * FROM raw_data