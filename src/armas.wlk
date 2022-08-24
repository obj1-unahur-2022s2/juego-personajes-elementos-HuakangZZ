object ballesta{
    var cantidadDeFlechas = 10
    method cantidadDeFlechas() = cantidadDeFlechas
    method estaCargada() = cantidadDeFlechas > 0
    method usarArma(){
        cantidadDeFlechas--
    }
    method potenciaDelArma() = 4
}


object jabalina{
    var estaCargada = true
    method estaCargada() = estaCargada
    method usarArma() {estaCargada = false} 
    method potenciaDelArma() = 30
}
