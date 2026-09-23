import mensajero.*
import paquete.*
import destino.*

object mensajeria{
    const listaDeMensajeros = []
    var property  paquetesPendientes = []
    var property paquetesEntregados = []
    

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
    method puedeSerEntregadoPorElPrimero(algoParaEntregar){
        return  algoParaEntregar.sePuedeEntregar(listaDeMensajeros.first()) 
    }
    method pesoDelUltimo(){
        return listaDeMensajeros.last().peso()
    }
    method hayAlgunMensajeroQuePuedeEntregar(algoParaEntregar){
        return listaDeMensajeros.any({mensajero => algoParaEntregar.sePuedeEntregar(mensajero)})
    }
    method losQuePuedenLlevar(algoParaEntregar){
        return listaDeMensajeros.filter({mensajero => algoParaEntregar.sePuedeEntregar(mensajero)})
    }
    method pesoPromedio(){
        return self.pesoTotalDeMensajeros() / listaDeMensajeros.size() >= 500
    }
    method pesoTotalDeMensajeros(){
        return listaDeMensajeros.sum({mensajero => mensajero.peso()})
    }
    method entregar(algoParaEntregar){
        if (self.hayAlgunMensajeroQuePuedeEntregar(algoParaEntregar)){
            paquetesEntregados.add(algoParaEntregar)
        }
        else paquetesPendientes.add(algoParaEntregar)
    }
    method facturacion(){
        return paquetesEntregados.sum({paquete => paquete.precio()})
    }

    method entregarTodos(conjuntoDePaquetes){
        conjuntoDePaquetes.forEach({paquete => self.entregar(paquete)})
    }
    method entregarElMasCaro(){
        const  elMasCaroPorAhora = self.elMásCaro()
        self.entregar(elMasCaroPorAhora)
        paquetesPendientes.remove(self.elMásCaro())
    }
    method elMásCaro(){
        return paquetesPendientes.max({paquete => paquete.precio()})
    }

}

