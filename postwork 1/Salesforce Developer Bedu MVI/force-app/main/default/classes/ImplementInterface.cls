public class ImplementInterface implements InterfacePractice {
    public void metodo1(){
        system.debug('Este es un método void');
    }
    public String metodo2(){
        system.debug('metodo2 returns string');
        return 'Tu color fav es rosa';
    }
    public void metodo3(String param1){
        system.debug('El param1 es: ' + param1);
    }
}
