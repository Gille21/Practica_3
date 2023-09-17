import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import './Styles/formulario.css'; // Importa el archivo CSS de estilos del formulario

function Formulario() {
  const navigate = useNavigate();

  // Estado para almacenar las respuestas del usuario
  const [usoComputadora, setUsoComputadora] = useState('');
  const [preferenciaMarca, setPreferenciaMarca] = useState('');
  const [tipoComputadora, setTipoComputadora] = useState('');
  const [tareasGustariaRealizar, setTareasGustariaRealizar] = useState('');
  const [enfoqueDisenoFuncionalidad, setEnfoqueDisenoFuncionalidad] = useState('');
  const [sistemaOperativo, setSistemaOperativo] = useState('');
  const [necesitaAlmacenamiento, setNecesitaAlmacenamiento] = useState(false);
  const [almacenamientoCantidad, setAlmacenamientoCantidad] = useState('');
  const [presupuesto, setPresupuesto] = useState('');

  // Función para manejar el envío del formulario
  const handleSubmit = (e) => {
    e.preventDefault();
    // Aquí puedes realizar acciones basadas en las respuestas del usuario, como enviar los datos a un servidor o mostrar un resumen de las respuestas.

    // Redirige a la página de resultados
    navigate('/resultados'); // Utiliza navigate para redirigir a '/resultados'
  };

  // Renderiza el formulario con los campos y opciones
  return (
    <div className="form-container">
      <h1>Formulario de Selección de Computadora</h1>
      <form onSubmit={handleSubmit}>
        <div className="form-group">
          <label htmlFor="usoComputadora">¿Para qué vas a usar la computadora?</label>
          <select
            id="usoComputadora"
            className="custom-select"
            value={usoComputadora}
            onChange={(e) => setUsoComputadora(e.target.value)}
          >
            <option value="">Selecciona una opción</option>
            <option value="trabajo">Trabajo</option>
            <option value="escuela">Escuela</option>
            <option value="entretenimiento">Entretenimiento</option>
          </select>
        </div>
        <div className="form-group">
          <label htmlFor="preferenciaMarca">¿Tienes alguna preferencia por la marca de la computadora?</label>
          <select
            id="preferenciaMarca"
            className="custom-select"
            value={preferenciaMarca}
            onChange={(e) => setPreferenciaMarca(e.target.value)}
          >
            <option value="">Selecciona una opción</option>
            <option value="Asus">Asus</option>
            <option value="Razor">Razor</option>
            <option value="Mcintosh">Mcintosh</option>
            <option value="Lenovo">Lenovo</option>
            <option value="Samsung">Samsung</option>
            {/* Agrega más opciones según sea necesario */}
          </select>
        </div>
        <div className="form-group">
          <label htmlFor="tipoComputadora">¿Prefieres una laptop o una computadora de escritorio?</label>
          <select
            id="tipoComputadora"
            className="custom-select"
            value={tipoComputadora}
            onChange={(e) => setTipoComputadora(e.target.value)}
          >
            <option value="">Selecciona una opción</option>
            <option value="Portatil">Portátil</option>
            <option value="Escritorio">Escritorio</option>
          </select>
        </div>
        <div className="form-group">
          <label htmlFor="tareasGustariaRealizar">¿Qué tipo de tareas te gustaría realizar en la computadora?</label>
          <select
            id="tareasGustariaRealizar"
            className="custom-select"
            value={tareasGustariaRealizar}
            onChange={(e) => setTareasGustariaRealizar(e.target.value)}
          >
            <option value="">Selecciona una opción</option>
            <option value="navegar">Navegar por Internet</option>
            <option value="verPeliculas">Ver películas</option>
            <option value="escribirDocumentos">Escribir documentos</option>
            <option value="jugar">Jugar</option>
            {/* Agrega más opciones según sea necesario */}
          </select>
        </div>
        <div className="form-group">
          <label htmlFor="enfoqueDisenoFuncionalidad">¿Te importa el aspecto y el diseño de la computadora, o te enfocas más en su funcionalidad?</label>
          <select
            id="enfoqueDisenoFuncionalidad"
            className="custom-select"
            value={enfoqueDisenoFuncionalidad}
            onChange={(e) => setEnfoqueDisenoFuncionalidad(e.target.value)}
          >
            <option value="">Selecciona una opción</option>
            <option value="Diseno">Diseño</option>
            <option value="Funcionalidad">Funcionalidad</option>
          </select>
        </div>
        <div className="form-group">
          <label htmlFor="sistemaOperativo">¿Tienes algún sistema operativo en mente que prefieras?</label>
          <select
            id="sistemaOperativo"
            className="custom-select"
            value={sistemaOperativo}
            onChange={(e) => setSistemaOperativo(e.target.value)}
          >
            <option value="">Selecciona una opción</option>
            <option value="Windows">Windows</option>
            <option value="Mac">Mac</option>
            {/* Agrega más opciones según sea necesario */}
          </select>
        </div>
        <div>
  <label>
    ¿Necesitas que la computadora tenga mucho espacio de almacenamiento para fotos, videos u otros archivos?
  </label>
  <label className="checkbox-label">
    <input
      type="checkbox"
      checked={necesitaAlmacenamiento}
      onChange={() => setNecesitaAlmacenamiento(!necesitaAlmacenamiento)}
    />
    
  </label>
  {necesitaAlmacenamiento && (
    <div>
      <label>Selecciona la cantidad de almacenamiento:</label>
      <select
        value={almacenamientoCantidad}
        onChange={(e) => setAlmacenamientoCantidad(e.target.value)}
        className="custom-select" 
      >
        <option value="250GB">250GB</option>
        <option value="500GB">500GB</option>
        <option value="1TB">1TB</option>
      </select>
    </div>
  )}
</div>

        <div className="form-group">
          <label htmlFor="presupuesto">¿Cuál es tu presupuesto aproximado?</label>
          <input
            type="number"
            id="presupuesto"
            className="custom-input"
            value={presupuesto}
            onChange={(e) => setPresupuesto(e.target.value)}
          />
        </div>
        <button type="submit" className="submit-button">Enviar</button>
      </form>
    </div>
  );
}

export default Formulario;
