import objetos.*
import personas.*

object bolichito {
    const objetoEnVidriera = remera
    const objetoEnMostrador = pelota

    method esBrillante() {
        return objetoEnMostrador.esBrillante() && objetoEnVidriera.esBrillante()
    }
    method esMonocromatico() {
        return objetoEnMostrador.color() == objetoEnVidriera.color()
    }
    method estaEquilibrado() {
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }
    method tieneObjetoDeColor(unColor) {
        return objetoEnMostrador.color() == unColor || objetoEnVidriera.color() == unColor
    }
    method puedeMejorar(){
        return !self.estaEquilibrado() || self.esMonocromatico()
    }
    method sePuedeOfrecer(unaPersona){
        return unaPersona.leGusta(objetoEnVidriera) || unaPersona.leGusta(objetoEnMostrador)
    }
}
