import mensajeros.* 

object paquete{
    
    method precioDelPaquete(destino){
        return destino.precioDelEnvio()

    }
    method estaPago(monto, destino) {
        return monto == self.precioDelPaquete(destino) 

    }

    method sePuedeEntregar(monto,destino, mensajero){
        return self.estaPago(monto, destino) && destino.puedePasarElMensajero(mensajero)
    }

}
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

