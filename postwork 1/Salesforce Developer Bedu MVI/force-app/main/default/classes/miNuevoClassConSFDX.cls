public with sharing class miNuevoClassConSFDX {
    public void miMetodoUno(){
        System.debug('Método instanciado');
    }
    
    public static void miMetodoDos(){
        System.debug('Método instanciado dos');
    }

    public static void miMetodoTres(String msj){
        System.debug('Método con parámetro '+ msj);
    }

    public String miMetodoCuatro(String nombre){
        return 'Hola' + nombre;
    }

    public miNuevoClassConSFDX() {

    }
}
