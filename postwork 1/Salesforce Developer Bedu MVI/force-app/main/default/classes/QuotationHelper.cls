public class QuotationHelper {

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
}