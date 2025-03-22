


' Espera
symbol INTERVALO_ESPERA = 500

'' Vueltas
SYMBOL NumeroVuletasRandom = b0
symbol DiferenciaNumVuelta = b1
symbol ResidoNumVueltas = b2
symbol NumeroVueltas = b3

symbol MaxNumeroVueltas = 4
symbol MinNumeroVueltas = 1


'' pines
symbol PinElegidoRandom = b4
symbol DiferenciaNumPinRandom = b5
symbol ResiduioNumPinRandom = b6
symbol NumerPin = b7

symbol MaxNumeroPin = 4
symbol MinNumeroPin = 1


main:
	' Aleatoriad vueltas entre 1 y 4
	RANDOM NumeroVuletasRandom   							 
	DiferenciaNumVuelta = MaxNumeroVueltas - MinNumeroVueltas + 1  	  
	ResidoNumVueltas = NumeroVuletasRandom // DiferenciaNumVuelta     		 
	NumeroVueltas = ResidoNumVueltas + MinNumeroVueltas       		 
	
	
	' Pin elegido
 	RANDOM PinElegidoRandom
	DiferenciaNumPinRandom =MaxNumeroPin - MinNumeroPin + 1   'Pines a usar
	ResiduioNumPinRandom = PinElegidoRandom // DiferenciaNumPinRandom
	NumerPin = ResiduioNumPinRandom + MinNumeroPin
	
	sertxd("DEBUG,NumerPin,",#NumerPin, 13,10)
	sertxd("DEBUG,NumeroVueltas,",#NumeroVueltas, 13,10)
	
	for b8 = 1 to NumeroVueltas 
		for b9 = MinNumeroPin to MaxNumeroPin
			high b9
			sertxd("beep,1000", 13,10)
			pause INTERVALO_ESPERA
			low b9
			sertxd("", 13,10)
			pause INTERVALO_ESPERA
			
			if b8 = NumeroVueltas and NumerPin = b9 then 
				for b10 = 1 to 10  
					high b9
					sertxd("beep,200", 13,10)
					pause 200
					low b9
					sertxd("", 13,10)
					pause 200
				next  
				goto resetGame
			endif
		next
	next
 
 	resetGame:
	sertxd("beep,100", 13,10)
	pause 100
	sertxd("beep,100", 13,10)
	pause 2500
goto main

 