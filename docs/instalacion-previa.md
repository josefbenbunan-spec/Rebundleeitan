# Preparar tu Ordenador para la Clase

## Tiempo estimado: 15-20 minutos

Estas instrucciones te guian paso a paso para dejar tu ordenador listo antes de la clase. No necesitas saber nada tecnico -- solo seguir las instrucciones.

> **Tranquilo:** No vas a romper nada. Todo lo que hacemos aqui es instalar un programa, como cuando instalas cualquier app en el movil. Si algo sale mal, lo solucionamos juntos el dia de la clase.

---

## Antes de empezar: ¿Que es cada cosa?

Vamos a usar tres cosas. Aqui te explico que es cada una con ejemplos simples:

| Concepto | ¿Que es? | Analogia |
|----------|----------|----------|
| **Terminal** | Una ventana donde escribes instrucciones a tu ordenador | Es como el buscador de Google, pero para tu ordenador. En vez de buscar en internet, le dices a tu ordenador que haga cosas |
| **Node.js** | Un motor que hace funcionar programas | Como el motor de un coche: tu no lo ves, pero sin el nada se mueve. Claude Code necesita Node.js para funcionar |
| **npm** | Un instalador de programas | Como la App Store pero para programas de Terminal. Se instala automaticamente con Node.js |

No necesitas entender estos conceptos a fondo. Solo necesitas instalarlos una vez y olvidarte.

---

## Paso 1: Abrir la Terminal

La Terminal es una aplicacion que ya esta en tu ordenador. Solo necesitas encontrarla.

### En Mac:

1. Pulsa **Cmd + Espacio** (las dos teclas a la vez)
   - Esto abre Spotlight, el buscador de tu Mac
2. Escribe **Terminal**
3. Pulsa **Enter**

### En Windows:

1. Pulsa la tecla **Windows** en tu teclado
2. Escribe **PowerShell**
3. Haz clic en **Windows PowerShell**

Veras una ventana con fondo claro u oscuro y texto. Eso es la Terminal. No te asustes: solo es una pantalla donde escribir.

> **Consejo:** Deja la Terminal abierta durante todos los pasos siguientes.

---

## Paso 2: Instalar Node.js (el motor)

Primero vamos a comprobar si ya lo tienes instalado. Muchos ordenadores ya lo traen.

### Comprueba si ya lo tienes:

Escribe esto en la Terminal y pulsa **Enter**:

```
node --version
```

**¿Que hace este comando?** Le pregunta a tu ordenador: "¿Tienes Node.js instalado? ¿Que version es?"

### Si ves un numero (por ejemplo `v18.17.0` o `v20.10.0`):

Ya lo tienes. Pasa al **Paso 3**.

### Si ves "command not found" o un error:

No lo tienes. Instalalo asi:

1. Abre tu navegador y ve a **https://nodejs.org**
2. Veras dos botones grandes. Pulsa el que dice **LTS** (es la version estable, la recomendada)
3. Se descargara un archivo. Abrelo
4. Sigue el instalador: simplemente pulsa **Continuar** en cada pantalla y **Instalar** al final
5. Te pedira tu contrasena del ordenador (la que usas para desbloquearlo). Es normal, escribe tu contrasena y pulsa Enter
6. Cuando termine, **cierra la Terminal y vuelve a abrirla** (Paso 1)
7. Escribe otra vez `node --version` y ahora deberia mostrar un numero

---

## Paso 3: Instalar Claude Code

Ahora que tienes Node.js, vamos a instalar Claude Code. Es un solo comando.

Escribe esto en la Terminal y pulsa **Enter**:

```
npm install -g @anthropic-ai/claude-code
```

**¿Que hace este comando?** Le dice al instalador (npm): "Descarga e instala Claude Code en mi ordenador para que lo pueda usar desde cualquier sitio (-g significa 'global')."

Espera 1-2 minutos. Veras texto apareciendo en la pantalla -- es normal, es el progreso de la instalacion.

### Verifica que funciono:

Cuando termine, escribe:

```
claude --version
```

**¿Que hace este comando?** Le pregunta a tu ordenador: "¿Se instalo Claude Code correctamente?"

Si ves un numero de version, todo ha ido bien.

### Si ves "claude: command not found":

**En Windows:** Cierra PowerShell y vuelve a abrirlo. Windows necesita reiniciar la Terminal para detectar programas nuevos.

**En Mac o Windows:** Si sigue sin funcionar despues de reabrir, escribe esto para verificar que npm lo instalo:
```
npx @anthropic-ai/claude-code --version
```
Si esto si funciona, el problema es el PATH. Escribe esto para solucionarlo:

**En Mac:**
```
export PATH="$(npm prefix -g)/bin:$PATH"
```

**En Windows (PowerShell):**
```
$env:Path += ";$(npm prefix -g)"
```

Luego vuelve a probar `claude --version`.

### Si ves "Permission denied" (permiso denegado):

Tu ordenador necesita permisos extra.

**En Mac:**
```
sudo npm install -g @anthropic-ai/claude-code
```
Te pedira tu contrasena del ordenador. Escribela (no veras las letras al escribir, es normal) y pulsa Enter.

**En Windows:**
Cierra PowerShell y vuelve a abrirlo como administrador: clic derecho en PowerShell > **Ejecutar como administrador**. Luego repite el comando de instalacion.

---

## Paso 4: Descargar los materiales del curso

Necesitas descargar la carpeta del curso a tu ordenador.

Primero, ve a tu carpeta personal:

```
cd ~
```

Luego descarga los materiales:

```
git clone https://github.com/betobetico/rebundle.git
```

**¿Que hace este comando?** Descarga todos los materiales del curso a una carpeta llamada `rebundle` en tu ordenador.

### Si ves "command not found" para git:

**En Mac:** Tu Mac normalmente incluye git, pero si no lo tiene, te pedira instalarlo automaticamente. Acepta la instalacion y vuelve a ejecutar el comando.

**En Windows:** Descarga git desde **https://git-scm.com** e instalalo con las opciones por defecto. Luego cierra y reabre PowerShell.

### Verifica que funciono:

```
ls ~/rebundle
```

Si ves una lista de carpetas y archivos (modulos, assets, docs...), todo ha ido bien.

---

## Paso 5: Configurar tu cuenta

Claude Code necesita una cuenta para funcionar. El curso incluye **3 meses de suscripcion a Claude Pro**, asi que no necesitas pagar nada.

1. Escribe en la Terminal:

```
claude
```

2. La primera vez te pedira iniciar sesion. Sigue las instrucciones en pantalla
   - Se abrira tu navegador para que inicies sesion o crees una cuenta en Anthropic
   - Si ya tienes cuenta de Claude, usa esa misma

3. Cuando termine la configuracion, prueba que todo funciona escribiendo:

```
Hola, ¿estas listo?
```

4. Si Claude te responde... **ya esta todo listo**

5. Para salir, escribe `/exit` o pulsa **Ctrl + C**

---

## Si no lo consigues

No te preocupes. Esto es lo mas importante:

> **El dia de la clase dedicaremos tiempo al principio para resolver cualquier problema de instalacion.** No dejes de venir porque algo no funciono.

Si quieres, envia un email al profesor contandole que paso y te ayudara el dia de la clase. Lo unico que necesitas traer es tu portatil con bateria.

---

## El Dia de la Clase

### Que traer

- Tu portatil **cargado al 100%**
- El **cargador** (la clase dura 8 horas)
- Opcional: 20-30 documentos propios para practicar (correos, notas, facturas...)
  - Pueden ser .txt, .md, .pdf, .docx
  - Mejor si no contienen informacion muy personal o sensible
  - Si no traes documentos, no pasa nada: tenemos materiales de practica preparados

### Como arrancar Claude Code al llegar

Cuando llegues a clase y te sientes, haz esto:

1. **Abre la Terminal**
   - **Mac:** Cmd + Espacio, escribe "Terminal", Enter
   - **Windows:** Tecla Windows, escribe "PowerShell", Enter

2. **Navega a la carpeta del curso:**
   ```
   cd ~/rebundle
   ```

3. **Arranca Claude Code:**
   ```
   claude
   ```

4. **Escribe:** `empezar`

Y Claude te guiara desde ahi.

---

## Resumen rapido

| Paso | ¿Que hago? | ¿Como se que funciono? |
|------|-----------|----------------------|
| 1 | Abrir Terminal (Mac) o PowerShell (Windows) | Ves una ventana con texto |
| 2 | Instalar Node.js | `node --version` muestra un numero |
| 3 | Instalar Claude Code | `claude --version` muestra un numero |
| 4 | Descargar materiales del curso | La carpeta `rebundle` existe |
| 5 | Configurar cuenta | Claude responde a "Hola" |

Si completaste los 5 pasos, estas listo. ¡Nos vemos en clase!
