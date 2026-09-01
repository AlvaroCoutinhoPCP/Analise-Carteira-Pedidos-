USE AdventureWorks2022;
GO

CREATE OR ALTER VIEW dbo.vw_CarteiraPedidosMensal AS
SELECT 
    (YEAR(h.OrderDate) * 100) + MONTH(h.OrderDate) AS AnoMesNum,
    YEAR(h.OrderDate) AS Ano,
    MONTH(h.OrderDate) AS Mes,
    p.Name AS NomeProduto,
    COUNT(DISTINCT h.SalesOrderID) AS QtdPedidos,
    SUM(d.OrderQty) AS QtdItensVendidos,
    SUM(d.LineTotal) AS FaturamentoProduto,
    ROUND(
        (SUM(d.LineTotal) / SUM(SUM(d.LineTotal)) OVER()) * 100, 
        2
    ) AS PercVolumeTotal
FROM Sales.SalesOrderHeader h
INNER JOIN Sales.SalesOrderDetail d ON h.SalesOrderID = d.SalesOrderID
INNER JOIN Production.Product p ON d.ProductID = p.ProductID
GROUP BY 
    YEAR(h.OrderDate),
    MONTH(h.OrderDate),
    p.Name;
GO