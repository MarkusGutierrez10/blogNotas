import 'package:flutter/material.dart';

class GuardarNotas extends StatefulWidget {
  const GuardarNotas({super.key});

  @override
  State<GuardarNotas> createState() => _GuardarNotasState();
}

class _GuardarNotasState extends State<GuardarNotas> {
  // Controlador para mostrar la fecha elegida en el input
  final TextEditingController _dateController = TextEditingController();

  // Función para abrir el calendario
  Future<void> _seleccionarFecha(BuildContext context) async {
    DateTime? fechaSeleccionada = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );

    if (fechaSeleccionada != null) {
      setState(() {
        _dateController.text = "${fechaSeleccionada.day}/${fechaSeleccionada.month}/${fechaSeleccionada.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 232, 206),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 228, 181, 41),
        title: const Text("Crear Nota"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Input Título
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Título",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            
            // Input Descripción
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                maxLines: 9,
                minLines: 5,
                decoration: InputDecoration(
                  hintText: "Descripción",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            
            // Input Fecha interactivo estilo web (type="date")
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _dateController,
                      readOnly: true, // Evita que se abra el teclado
                      onTap: () => _seleccionarFecha(context), // Abre el calendario
                      decoration: InputDecoration(
                        hintText: "Fecha",
                        prefixIcon: const Icon(Icons.calendar_today, color: Color.fromARGB(255, 228, 181, 41)),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}