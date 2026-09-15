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






    
