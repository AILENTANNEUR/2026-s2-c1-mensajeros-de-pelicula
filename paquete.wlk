import mensajero.* 

object paquete{
    
    method precioDelPaquete(destino){
        return destino.precioDelEnvio()

    }
    method estaPago(monto, destino) {
        return monto >=  self.precioDelPaquete(destino) 

    }
    method pagaPaquete(monto){
        return monto 
    }

    method sePuedeEntregar(monto,destino, mensajero){
        return self.estaPago(monto, destino) && destino.puedePasarElMensajero(mensajero)
    }

}
