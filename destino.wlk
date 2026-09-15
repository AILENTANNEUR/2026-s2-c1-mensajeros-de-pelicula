import mensajero.*
object puenteDeBrooklyn{
    method precioDelEnvio(){
        return 150
    }
    method puedePasarElMensajero(mensajero) {
        return  mensajero.peso() <= 1000
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

