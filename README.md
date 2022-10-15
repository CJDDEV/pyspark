### Objetivo 1: Contagem de casos de covid19 2020-2021 
Localidade: Brasil.
Fonte: https://covid.saude.gov.br/.
Método: Contagem realizada utilizando agrupamento por Região, Estado e Município.
Formato: 4 arquivos CSV totalizando 222,3 Mb; Volume registros: 2.624.943. Período 25/02/2020 a 06/07/2021.
Carga inicial no HDFS; criação de tabela externa e tabela Parquet/Snappy no Hive. Objetivo: Reproduzir as contagens do site fonte dos dados utilizando os recursos de partições no HDFS.
### Objetivo 2: Envio e recebimento de dados do Kafka utilizando o Spark.
Selecionando dados da tabela Hive/Parquet do objetivo anterior, realizando o envio para o Kafka e checagem através do recebimento via Spark.
