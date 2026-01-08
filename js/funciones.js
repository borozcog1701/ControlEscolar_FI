function consultarInscripcion() {

    const cuenta = document.getElementById("cuenta").value;

    document.getElementById("plan").innerHTML = "";
    document.getElementById("nombre").innerHTML = "";
    document.getElementById("fecha").innerHTML = "";
    //document.getElementById("situacion").innerHTML = "";
    document.getElementById("hora").innerHTML = "";

    // Cargar datos del archivo JSON
    //const response = await fetch("php/consulta.php?cuenta=" + cuenta);
    //const datos = await response.json();
    console.log(datos)

    // Buscar el alumno por número de cuenta
    const alumno = datos.find((alumno) => alumno.cuenta === cuenta);


    if (datos !== undefined) {
        console.log(datos)
        // Obtener el nombre completo del plan de estudios
        const nombrePlan = obtenerNombrePlan(datos[0].plan);
        // Agregar un h1 al elemento con id "plan"
        const planElement = document.getElementById("plan");
        const h1 = document.createElement("h3");
        h1.classList.add("nombre-alumno");
        h1.innerText = `${datos[0].plan} - ${nombrePlan.toUpperCase()}`;
        planElement.appendChild(h1);

        const nombreElement = document.getElementById("nombre");
        const h2 = document.createElement("h3");
        h2.classList.add("nombre-alumno");
        h2.innerText = datos[0].cuenta;
        nombreElement.appendChild(h2);

        const fechaElement = document.getElementById("fecha");
        const h3 = document.createElement("h3");
        h3.classList.add("nombre-alumno");
        h3.innerText = datos[0].fecha;
        fechaElement.appendChild(h3);
        /*
                const situacionElement = document.getElementById("situacion");
                const h4 = document.createElement("h3");
                h4.classList.add("nombre-alumno");
                h4.innerText = alumno.situacion;
                situacionElement.appendChild(h4);
                */

        const horaElement = document.getElementById("hora");
        const h5 = document.createElement("h3");
        h5.classList.add("nombre-alumno");
        h5.innerText = datos[0].hora;
        horaElement.appendChild(h5);

    } else {
        //mandr modal
        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: 'Verifica el número de cuenta.',
        });
    }
}

async function consultarInscripcionJson() {
    const cuenta = document.getElementById("cuenta").value;
    console.log(cuenta)

    document.getElementById("plan").innerHTML = "";
    document.getElementById("nombre").innerHTML = "";
    document.getElementById("fecha").innerHTML = "";
    document.getElementById("hora").innerHTML = "";

    try {
        // Cargar datos del archivo JSON local
        const response = await fetch("js/datosF.json");
        const datos = await response.json();

        //console.log(datos)
        // Buscar el alumno por número de cuenta
        const alumno = datos.find((alumno) => alumno.cuenta === cuenta);
        console.log(alumno)

        if (alumno) {
            // Obtener el nombre completo del plan de estudios
            const nombrePlan = obtenerNombrePlan(alumno.plan);
            //console.log(nombrePlan)
            // Mostrar información del alumno
            const planElement = document.getElementById("plan");
            const h1 = document.createElement("h3");
            h1.classList.add("nombre-alumno");
            h1.innerText = `${alumno.plan} - ${nombrePlan.toUpperCase()}`;
            planElement.appendChild(h1);

            const nombreElement = document.getElementById("nombre");
            const h2 = document.createElement("h3");
            h2.classList.add("nombre-alumno");
            h2.innerText = alumno.nombre;
            nombreElement.appendChild(h2);

            const fechaElement = document.getElementById("fecha");
            const h3 = document.createElement("h3");
            h3.classList.add("nombre-alumno");
            h3.innerText = alumno.fecha;
            fechaElement.appendChild(h3);

            const horaElement = document.getElementById("hora");
            const h5 = document.createElement("h3");
            h5.classList.add("nombre-alumno");
            h5.innerText = alumno.hora;
            horaElement.appendChild(h5);
        } else {
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: 'No se encontró el número de cuenta en el archivo.',
            });
        }
    } catch (error) {
        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: 'Error al cargar el archivo de datos.',
        });
    }
}

// Función para obtener el nombre completo del plan de estudios
function obtenerNombrePlan(cadena) {
    if (cadena.includes("ISES")) {
        return "Ingeniería en Sistemas Energeticos Sustentables";
    } else if (cadena.includes("ICO")) {
        return "Ingeniería en Computación";
    } else if (cadena.includes("IME")) {
        return "Ingeniería Mecánica";
    } else if (cadena.includes("IEL")) {
        return "Ingeniería Electrónica";
    } else {
        if (cadena.includes("ICI")) {
            return "Ingeniería Civil";
        }else{
            if (cadena.includes("IIA")) {
                return "Ingeniería en Inteligencia Artificial";
            }
        }
    }
}
