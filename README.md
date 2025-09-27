# 🎯 Ruleta Rusa Electrónica — Proyecto con PICAXE

Este proyecto fue desarrollado como una simulación lúdica de una **ruleta rusa electrónica** utilizando microcontroladores **PICAXE**. Combina azar, interacción física y lógica digital para crear una experiencia divertida y segura, ideal para demostraciones, ferias tecnológicas o prácticas de electrónica.

## 🔧 Descripción del proyecto

La ruleta rusa electrónica consiste en un sistema que, al presionar un botón, activa un ciclo de espera aleatoria. Al finalizar, uno de los LEDs se enciende simulando el “disparo”. El sistema incluye:

- 🎲 **Generación de azar controlado**
- 💡 **Indicadores visuales con LEDs**
- 🔘 **Botón de activación**
- 🔊 *(Opcional)* **Buzzer para efectos sonoros**

## 🛠️ Tecnologías utilizadas

- **PICAXE 08M2 / 18M2 / 20X2** — Microcontrolador principal
- **Lenguaje BASIC** — Programación directa en el entorno PICAXE Editor
- **Componentes electrónicos** — LEDs, resistencias, pulsador, buzzer

## 📜 Lógica del sistema

- Se inicia el sistema y se espera la activación por botón.
- Se genera un número aleatorio con `random` y se compara con una condición.
- Se enciende un LED específico según el resultado.
- El sistema se reinicia para una nueva ronda.

## 📷 Imágenes del montaje

*(Agrega aquí fotos del circuito, protoboard, y funcionamiento)*

## 📦 Cómo usarlo

1. Programa el PICAXE con el código incluido en este repositorio.
2. Ensambla el circuito según el diagrama.
3. Alimenta el sistema (3V–5V).
4. ¡Presiona el botón y juega!

## 🧠 Motivación

Este proyecto nació como una forma divertida de aplicar lógica digital y programación en microcontroladores PICAXE. Fue útil para practicar el uso de `random`, temporizadores, y salidas digitales en un contexto creativo.

## 📌 Posibles mejoras

- Pantalla LCD para mostrar resultados
- Modo multijugador con conteo de rondas
- Integración con Bluetooth para control remoto
 
