USE AdventureWorks2019
GO

--Se requiere saber la cantidad m�xima y m�nima de pedido de cada producto por entidad de negocio

SELECT ppv.BusinessEntityID, ppv.ProductID, pp.Name AS Producto, ppv.MAxOrderQty AS Cantidad_M�xima_Pedido, ppv.MinOrderQty AS Cantidad_m�nima_pedido
FROM Purchasing.ProductVendor ppv
INNER JOIN Production.Product pp
ON ppv.ProductID = pp.ProductID