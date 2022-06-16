public class QuotationHelper implements QuotationSync{

    //Postwork 2: generar dos cuentas Compuworld y Compumundo
    public void initialConfig (){
        Account cuenta1 = new Account();
        cuenta1.Name = 'Compumundo';
        insert cuenta1;
        
        Account cuenta2 = new Account();
        cuenta2.Name = 'Compuworld';
        System.debug('Este método permite crear estas cuentas');
    }

    //Postwork2: Retornar todos los productos del inventario
    public List<Inventario_c__c> productsInventory(){
        return [SELECT Name FROM Inventario_c__c];
        
    }

    //Postwork3: implementación de la interfaz QuotationSync
    public boolean confirmProductsExistsByCode(String code){
        
        //Verificar que el producto a traves de su External Id
        if ([SELECT ExternalId from Product2 WHERE ProductCode= :code]== null){
        return false;
        }else {
            return true;
        }
    }

    public integer searchProductByCode(String code){
        //RETORNAR LA CANTIDAD DEL INVENTARIO DISPONIBLE
        if ([SELECT Cantidad_dis_c__c FROM Inventario_c__c WHERE CodigoProd_c__c = :code]!= null){
            return [SELECT Cantidad_dis_c__c FROM Inventario_c__c WHERE CodigoProd_c__c = :code].size();
        } else {
            return 0;
        }
    }

}