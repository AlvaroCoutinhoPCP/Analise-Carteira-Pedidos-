# Análise de Carteira de Pedidos Mensal (% do Volume Total)

# Visão Geral
Dashboard desenvolvido para acompanhamento mensal da carteira de pedidos, calculando a representatividade percentual sobre o volume total físico e financeiro. O tratamento de dados envolveu agregação e uso de Window Functions no SQL Server, combinado com uma dimensão dCalendario customizada em DAX.

---

# Tecnologias Utilizadas
* **SQL Server (.SQLEXPRESS / AdventureWorks2022):** Agregação por Ano/Mês, tratamento de chaves relacionais (AnoMesNum) e Window Functions (SUM() OVER()) para cálculo de % de participação.
* **Power BI:** Modelagem dimensional (Star Schema), relatórios interativos e cartões de KPI.
* **DAX:** Tabela dimensional dCalendario, métricas de apoio e tabelas de medidas.

---

# Estrutura do Repositório
* Criação_de_Tabelas.sql: Estruturação inicial do ambiente SQL.
* Criação_de_Views.sql: View dbo.vw_CarteiraPedidosMensal com agregações e cálculo de representatividade percentual.
* ANALISE DE CARTEIRA DE PEDIDOS.pbix: Arquivo completo com o relatório interativo e medidas.

---

# Destaques do Dashboard
1. **Visão de KPIs:** Cartões no topo exibindo Faturamento Total, Total de Pedidos, Total de Itens e % de Participação no Volume.
2. **Evolução Temporal:** Gráfico de linhas para acompanhamento de faturamento temporal com marcadores.
3. **Ranking de Produtos:** Gráfico de barras clusterizadas destacando o volume acumulado e a representatividade percentual dos itens com rótulos de dados limpos.
