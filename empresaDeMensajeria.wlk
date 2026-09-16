import mensajero.*
import paquete.*
import destino.*

object mensajeria{
    const listaDeMensajeros = []
    const paqueteresPendientes = []

    method contrata(mensajero){
        if (! listaDeMensajeros.any({ unMensajero => unMensajero == mensajero })) {
        listaDeMensajeros.add(mensajero)
    }
    }

    method despedi(mensajero){
        listaDeMensajeros.remove(mensajero)

    }
    method despediATodos(){
        listaDeMensajeros.clear()
    }
    method esGrande(){
        listaDeMensajeros.size() > 2

    }
    method puedeSerEntregadoPorElPrimero(unPaquete, destino){
        return  unPaquete.sePuedeEntregar(destino, listaDeMensajeros.first()) 
    }
    method pesoDelUltimo(){
        return listaDeMensajeros.last()({mensajero=> mensajero.peso()})
    }
    method pesoPromedio(){
        return self.pesoTotalDeMensajeros() / listaDeMensajeros.size()
    }
    method pesoTotalDeMensajeros(){
        return listaDeMensajeros.sum({mensajero => mensajero.peso()})
    }
    method hayAlgunMensajeroQuePuedeEntregar(algoParaEntregar, unDestino){
        return listaDeMensajeros.any({mensajero => paquete.sePuedeEntregar(unDestino, mensajero)})
    }

}
