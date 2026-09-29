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
        return tieneCredito 
    }
    
    
}

object saraConnor{
    var property pesoDeSara = 60
    var property vehiculo = sinVehiculo

    method puedeLlamar(){
        return false
    }
    method peso(){
        return pesoDeSara +  vehiculo.pesoDelVehiculo()
    }
}
object ghostRider{

  method puedeLlamar(){
        return false
    }
    method peso(){
        return  80 +  moto.pesoDelVehiculo()
    } 
}






    
