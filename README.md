# Desafio_Engenharia_Dados

Teste técnico para posições em Engenharia de Dados (short track)

Cenário
No seguinte cenário você é a pessoa engenheira de dados por trás do projeto de DataOps junto a uma grande operadora de cartões de crédito.

Os dados a serem ingeridos e analisados em nossa plataforma de Big Data são dados de compras (trasacao), documentos (contrato) e dados de compradores (cliente).

Entregáveis
1) Sua primeira tarefa consiste em escrever uma aplicação para calcular o ganho total da empresa, o qual é obtido a partir da taxa administrativa do serviço de cartão de crédito para seus clientes. Esse ganho é calculado sobre um percentual das transações de cartão de crédito realizadas por eles. O cálculo é baseado no conjunto de dados abaixo, transacao, contrato e cliente da Figura 1.
<img width="1426" alt="Figura 1" src="https://user-images.githubusercontent.com/55203471/211107737-ecb1c7e3-46b6-4f7d-9566-502375fbf2a5.png">


O resultado esperado é uma consulta que retorne o ganho total da empresa por cliente que é 1.198,77 para o cliente A e 1,08 para o cliente D, conforme a Figura 2.
<img width="351" alt="Figura 2" src="https://user-images.githubusercontent.com/55203471/211107862-ee2a680d-02c0-40d4-9364-69f048497484.png">


Assim sendo, seguem snippet de código para criação da base de dados e dos dados exemplos (via SQL Server).

2) A segunda tarefa consiste em calcular o total líquido da empresa. Esse total é calculado da seguinte forma total_liquido = soma(total_bruto – desconto_percentual). O cálculo é baseado no conjunto de dados da Figura 3
<img width="736" alt="Figura 3" src="https://user-images.githubusercontent.com/55203471/211107944-105d9f82-8845-42ca-8a6b-09fe9a9b7ce6.png">


O resultado esperado é uma código com pyspark que retorne o total liquido da empresa que é 59973.46.

3) O terceiro entregável consiste na transformação de dados disponíveis em arquivo Json para o formato de dataframe, algo comum no dia a dia da empresa. Após transformar esse Json em dataframe é possível perceber que a coluna "item_list" está como dicionário. Seu gestor pediu dois pontos de atenção nessa tarefa:

- Expandir a coluna num mesmo dataframe;
- Normalizar os itens dessa coluna de dicionário e dividí-los em dois dataframes separados, seguindo o modelo relacional.

4) Imagine que o Json das notas fiscais é disponibilizado em uma API. Como você utilizaria as tecnologias da GCP para ingerir, transformar e, eventualmente, carregar esses dados em um BigTable? O quarto entregável consiste na construção de uma arquitetura de ingestão dos dados de nota fiscal do entregável anterior (como visto aqui), a qual deve atender aos seguintes pontos:

Esquemas de fluxo de dados;
- Descrições de funcionamento (se necessário);
- Nomes de tecnologias em ecossistema GCP (serviços, conectores, bibliotecas e módulos).
- Será apreciado como esforço extra se você conseguir avançar mais na aplicação além desse ponto.


Ou seja, temos quatro entregáveis:

- Consulta que retorne o ganho total da empresa por cliente;
- Código com pyspark que retorne o total liquido;
- Resolução de problema de transformação de dados (NF-e);
- Arquitetura exemplo da ingestão anterior (ecossistema GCP);
