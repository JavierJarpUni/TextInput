### **Explicación del Código Flutter:**

- **`main()` function:** Este es el punto de entrada de tu aplicación Flutter. Ejecuta el _widget_ `MyApp`.
- **`MyApp` class:** Es un **`StatelessWidget`** que establece la estructura básica de diseño de materiales para la aplicación, incluyendo el título y el tema. Define `MyDataScreen` como la pantalla principal.
- **`MyDataScreen` class:** Es un **`StatefulWidget`** porque su contenido (el nombre mostrado) cambiará en función de la interacción del usuario.
  - **`_MyDataScreenState` class:** Esta es la clase de estado para `MyDataScreen`.
    - **`_nameController`:** Se usa un **`TextEditingController`** para obtener el texto introducido por el usuario en el `TextField`.
    - **`_displayedName`:** Una variable de tipo `String` que guarda el nombre a mostrar en la pantalla.
    - **`dispose()`:** Este método se sobrescribe para liberar correctamente el `_nameController` cuando el _widget_ se elimina del árbol de _widgets_, evitando fugas de memoria.
    - **`_showName()`:** Este método se llama cuando se presiona el botón "Mostrar Nombre". Actualiza `_displayedName` con el texto actual de `_nameController` y luego llama a `setState()`.
    - **`setState()`:** Este método crucial le indica a Flutter que reconstruya el árbol de _widgets_, reflejando los cambios en la variable `_displayedName`.
    - **`Scaffold`:** Proporciona la estructura visual básica para la pantalla, incluyendo un **`AppBar`** (la barra superior) y un **`body`**.
    - **`AppBar`:** Muestra el título de la pantalla.
    - **`Padding`:** Añade espacio alrededor del contenido en el cuerpo.
    - **`Column`:** Organiza sus hijos (`TextField`, `SizedBox`, `ElevatedButton` y `Text`) verticalmente.
    - **`TextField`:** Un campo de entrada donde el usuario puede escribir su nombre.
    - **`SizedBox`:** Se usa para crear espaciado entre _widgets_.
    - **`ElevatedButton`:** Un botón que, al presionarse, activa el método `_showName`.
    - **`Text`:** Muestra el mensaje de saludo con el nombre introducido. Utiliza una condición (`if (_displayedName.isNotEmpty)`) para mostrar un mensaje diferente si aún no se ha introducido ningún nombre.
