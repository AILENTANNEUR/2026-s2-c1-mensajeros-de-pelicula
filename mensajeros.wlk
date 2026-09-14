
object jeanGray{
    
    method peso(){
        return 65
    }
    method puedeLlamar(){
        return true
    }
}

object neo{
    var property credito = 100
     method peso(){
        return 0
     }
    method puedeLlamar(){
        return credito > 0
    }
    
    
}

object saraConnor{
    var property pesoDeSara = 60
    var property vehiculo = moto

    method puedeLlamar(){
        return false
    }
    method peso(){
        return pesoDeSara +  vehiculo.pesoDelVehiculo()
    }

}

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





    
