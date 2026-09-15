import vehiculo.*
object jeanGray{
    
    method peso(){
        return 65
    }
    method puedeLlamar(){
        return true
    }
}

object neo{
    var property tieneCredito = true
     method peso(){
        return 0
     }
    method puedeLlamar(){
        tieneCredito 
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






    
