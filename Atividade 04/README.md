## Fluxo Ingestão Google Cloud
![arq_gcp](https://user-images.githubusercontent.com/55203471/211111665-0edd4c6b-365b-4c82-8c25-271d9930594e.png)



**Data Sources**
- Os dados são disponibilizados via APis

**Ingestão dos dados:**

- **Dataflow:** Faz a ingestão dos dados no bigquery 

**Camadas Bigquery:**

- **RAW DATA:** Dados brutos sem nenhum tipo de tratamento

- **TRUSTED DATA:** Faz a centralização dos dados

- **REFINED DATA:** Dados separados por tipos de informações (Categoria, assuntos, etc.)

**DataLake**

- **Cloud Bigtable:** Faz o armazenamento dos dados refinados

**Presentation:**

- **Pode ser ultilizado como ferramentas de visualizações:** Google Data Studio, Power BI, etc.

- **Cloud Functions:** Ambiente de execução sem servidor para criar e conectar serviços em nuvem.

**Gerenciamento, orquestradores e Governança dos dados:**

- **Cloud composer:** Orquestrador de fluxos gerenciado e criado no Apache Airflow, flexibilidade em criar fluxos e programação sem precisar focar no provisionamento de  recursos.

- **Cloud Data Fusion:** Ajuda a reduzir custos do pipeline e oferece funcionalidades de integração de dados, além de auxiliar em análises de impactoe compliance.

- **Cloud IAM:** Permite o gerenciamento de controles de acesso, concedendo apenas acessos necessários para cada usuário em seus respectivos projetos.

- **VPC Service Controls:** Controle de acesso, criação de politicas baseando-se no contexto dos recursos de nuvem e também estabelecer perimetros de segurança virtual para serviços baseados em APis. 

- **Data Catalog:** Pesquisa entradas de dados no qual cada usuário tem acesso, fornecec segurança para tabelas do BigQuery e pode catalogar metadados de recursos de diferentes sistemas do Google Cloud.

- **Cloud Source Repositories:** Auxilia na hospedagem, rastreamento e auxilia no gerenciamento as alterações em grandes bases de códigos no GCP.


