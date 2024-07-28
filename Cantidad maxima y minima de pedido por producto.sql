USE AdventureWorks2019
GO

--Se requiere saber la cantidad máxima y mínima de pedido de cada producto por entidad de negocio

SELECT ppv.BusinessEntityID, ppv.ProductID, pp.Name AS Producto, ppv.MAxOrderQty AS Cantidad_Máxima_Pedido, ppv.MinOrderQty AS Cantidad_mínima_pedido
FROM Purchasing.ProductVendor ppv
INNER JOIN Production.Product pp
ON ppv.ProductID = pp.ProductID