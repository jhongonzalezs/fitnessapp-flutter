# 🏋️‍♂️ FitnessApp Flutter

Una app de ejemplo en Flutter con componentes reutilizables y diseño moderno para mostrar rutinas de entrenamiento, métricas y accesos rápidos.

## 🚀 Instalación rápida

```bash
git clone https://github.com/jhongonzalezs/fitnessapp-flutter.git
cd fitnessapp-flutter
flutter pub get
flutter run
```

> Asegúrate de tener Flutter correctamente instalado. Puedes verificarlo con `flutter doctor`.

---

## 📱 Componentes personalizados incluidos

Este proyecto incluye los siguientes widgets personalizados para tu interfaz:

### 1. 🏋️ WorkoutCard

Widget para mostrar tarjetas de rutina con título, subtítulo, duración e imagen.

#### 🔧 Propiedades

| Propiedad    | Tipo     | Descripción |
|--------------|----------|-------------|
| `title`      | String   | Título de la rutina |
| `subtitle`   | String   | Subtítulo descriptivo |
| `duration`   | String   | Duración estimada |
| `imageAsset` | String   | Ruta de la imagen (`.png`, `.jpg`) |
| `color`      | Color    | Color principal |

#### 🖼️ Ejemplo

```dart
WorkoutCard(
  title: 'Cardio Express',
  subtitle: 'Intensidad media',
  duration: '30 min',
  imageAsset: 'assets/images/cardio.png',
  color: Colors.blue,
),
```

---

### 2. ℹ️ InfoBox

Muestra información breve como métricas o resultados.

#### 🔧 Propiedades

| Propiedad      | Tipo     | Descripción |
|----------------|----------|-------------|
| `title`        | String   | Etiqueta (e.g. "Peso") |
| `value`        | String   | Valor (e.g. "75 kg") |
| `borderColor`  | Color    | Color del borde y fondo |
| `height`       | double   | Altura de la caja (por defecto: 80) |

#### 🖼️ Ejemplo

```dart
InfoBox(
  title: 'Frecuencia',
  value: '120 bpm',
  borderColor: Colors.red,
),
```

---

### 3. 🧩 CustomCard

Tarjeta clickeable para accesos rápidos o acciones.

#### 🔧 Propiedades

| Propiedad  | Tipo         | Descripción |
|------------|--------------|-------------|
| `title`    | String       | Texto principal |
| `icon`     | IconData     | Ícono |
| `color`    | Color        | Color del ícono y texto |
| `onTap`    | VoidCallback | Función al tocar la tarjeta |

#### 🖼️ Ejemplo

```dart
CustomCard(
  title: 'Iniciar Rutina',
  icon: Icons.fitness_center,
  color: Colors.green,
  onTap: () {
    Navigator.pushNamed(context, '/rutina');
  },
),
```

---

- Integra estos componentes dentro de `ListView`, `GridView` o `Column` para layouts personalizados.

---

## 📃 Licencia

Este proyecto es de código abierto y puede ser utilizado con fines educativos o comerciales con atribución.
