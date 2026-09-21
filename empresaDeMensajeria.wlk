import mensajero.*
import paquete.*
import destino.*

object mensajeria{
    const listaDeMensajeros = []

    method contrata(mensajero){
        if (! listaDeMensajeros.contains( mensajero )) {
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
        return listaDeMensajeros.size() > 2
    }
    method puedeSerEntregadoPorElPrimero(algoParaEntregar, destino){
        return  algoParaEntregar.sePuedeEntregar(destino, listaDeMensajeros.first()) 
    }
    method pesoDelUltimo(){
        return listaDeMensajeros.last().peso()
    }
    method pesoPromedio(){
        return self.pesoTotalDeMensajeros() / listaDeMensajeros.size()
    }
    method pesoTotalDeMensajeros(){
        return listaDeMensajeros.sum({mensajero => mensajero.peso()})
    }
    method hayAlgunMensajeroQuePuedeEntregar(algoParaEntregar, unDestino){
        return listaDeMensajeros.any({mensajero => algoParaEntregar.sePuedeEntregar(unDestino, mensajero)})
    }

}

