import armas.*

object castillo{
    var nivelDeDefensa = 150
    method altura() = 20
    method nivelDeDefensa() = nivelDeDefensa
    method recibirAtaque(unArma){
        nivelDeDefensa = 0.max(nivelDeDefensa - unArma.potenciaDelArma())
    }
    method valorOtorgado() = nivelDeDefensa / 5
    method recibirTrabajo(){
        nivelDeDefensa = 200.min(nivelDeDefensa + 20)
    }

}

object tipa{
    var altura = 8
    method altura() = altura
    method recibirAtaque(unArma){}
    method valorOtorgado() = altura*2
    method recibirTrabajo() {altura++} 
}

object aurora{
    var estaViva = true
    method estaViva() = estaViva
    method altura() = 1
    method recibirAtaque(unArma){
      if (unArma.potenciaDelArma() >= 10){estaViva = false}
    }
    method valorOtorgado() = 15
    method recibirTrabajo(){}
    
}
