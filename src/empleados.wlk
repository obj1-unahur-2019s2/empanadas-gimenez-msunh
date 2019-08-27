object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
	//var property sueldo = 15000

	//var sueldo = 15000
	
	var property sueldo = 15000
	var resultado = 0
	
//	var deuda = 0
//	var dinero = 0
	
	
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }

// metodos aplicados en clase	
	method cobrarSueldo(){
		 resultado += sueldo
	}
	
	
	method gastar(cuanto){
		resultado -= cuanto
	}
	
	method totalDeuda(){
		return (resultado.min(0))
	}
	
	method totalDinero(){
		return resultado.max(0)
	}
	
//fin metodos aplicados en clase	
	


//	method cobrarSueldo() {
//		var cuantoDescuento = deuda.min(sueldo)
//		deuda -= cuantoDescuento 
//		dinero += sueldo - cuantoDescuento
//
//}
//
//	method gastar(cuanto) {
//		// le alcanza la plata para todo el gasto
//		if (dinero >= cuanto) {
//			dinero -= cuanto
//		} else {
//			// le alcanza la plata para una parte
//			if (dinero > 0) {
//				deuda += cuanto - dinero
//				dinero = 0
//			} else {
//				// no tiene plata, pura deuda
//				deuda += cuanto
//			}
//		}
//	}

	
//	method totalDeuda(){
//	return deuda 	
//	}
//	
//	method totalDinero(){
//	return dinero
//	}




	
}
object baigorria {
	
	var dinero = 0
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	
	
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() { 
		
		 return cantidadEmpanadasVendidas * montoPorEmpanada
		
	}
	
	method cobrarSueldo(){
		dinero = dinero + (cantidadEmpanadasVendidas * montoPorEmpanada)
		
	}
	
	method cobrarSueldoCheto(){
		dinero = dinero + self.sueldo()
	}
	
	
	method totalCobrado(){
		return dinero
	}
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	
	
	//method pagarA( empleado ) { dinero -= empleado.sueldo() }
	
	method pagarA(empleado) {
    dinero -= empleado.sueldo()
    empleado.cobrarSueldo()
	}
}

