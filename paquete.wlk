import mensajero.* 
object paquete{
    var property estaPago = false
    
    method precioDelPaquete(destino){
        return destino.precioDelEnvio()

    }
    
    method pagar(){
        estaPago = true 
    }

    method sePuedeEntregar(destino, mensajero){
        return self.estaPago()  && destino.puedePasarElMensajero(mensajero)
    }

}