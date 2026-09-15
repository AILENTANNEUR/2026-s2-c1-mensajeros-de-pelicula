object camion{
    var property cantidadDeAcoplados = 0

    method pesoDelVehiculo(){
        return 500 + ( 500 * cantidadDeAcoplados ) 
    }

}
object moto{
    method pesoDelVehiculo(){
        return 100
    }

}

