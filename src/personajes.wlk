import armas.*
import elementos.*

object mario{
    var valorRecolectado = 0
    var ultimoElementoVisitado
    method valorRecolectado() = valorRecolectado 
    method encontrar(elemento){
        valorRecolectado += elemento.valorOtorgado()
        elemento.recibirTrabajo()
        ultimoElementoVisitado = elemento
    }
    method estaFeli() = valorRecolectado >= 50 || ultimoElementoVisitado.altura() >= 10

}
object floki{
    var arma = ballesta
    method encontrar(elemento){
        if (arma.estaCargada()){
            elemento.recibirAtaque(arma)
            arma.usarArma()
        }
    }
    method cambiaArma(unArma){arma = unArma}
}
