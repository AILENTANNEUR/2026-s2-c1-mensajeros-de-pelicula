import mensajero.*
object puenteDeBrooklyn{
    method precioDelEnvio(){
        return 150
    }
    method puedePasarElMensajero(mensajero) {
        return  mensajero.peso()
    }
    

}

object matrix{

    method precioDelEnvio(){
        return 500
    }
   
    method puedePasarElMensajero(mensajero){
        return mensajero.puedeLlamar()
    }
}

