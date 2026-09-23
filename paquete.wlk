import mensajero.* 
import destino.*
object paquete{
    var property estaPago = false
    var property destino = matrix

    
    method precio(){
        return 50

    }
    
    method pagar(){
        estaPago = true 
    }
    method destino(){
        return destino
    }

    method sePuedeEntregar(mensajero){
        return self.estaPago()  && self.destino().puedePasarElMensajero(mensajero)
    }
    
}
object paqueteExpress{
    var property estaPago = false

    method precioDelPaquete(){
        return 50 + self.destino().precio()

    }
    method pagar(){
        estaPago = true 
    }
    method destino(){
        return matrix
    }
    method sePuedeEntregar(mensajero){
        return self.estaPago()  && self.destino().puedePasarElMensajero(mensajero)
    }

}

object paquetito{
    var property destino = matrix
    method precioDelPaquete(){
        return  0
    }
    method estaPago(){
        return true
    }
    method destino(){
        return destino
    }
    method sePuedeEntregar( mensajero){
        return self.estaPago()  && self.destino().puedePasarElMensajero(mensajero) 
    }
    

}

object paqueton{
    const destinos = [ ]
    var property pagosRealizados = 0

    method estaPago(){
        return self.precio() >=  pagosRealizados
    }
    method pagoParcial(monto){
        pagosRealizados += monto
    }
    
    method precio(){
        return  destinos.size() * 100 
    }
    method agregar(destino){
        return destinos.add(destino)
    }
    method sePuedeEntregar(mensajero){
        return self.estaPago()  && destinos.all({unDestino => unDestino.puedePasarElMensajero(mensajero)})
    }
    method destino(){
        return destinos
    }
}


