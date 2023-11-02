import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import './Styles/formulario.css';

function Formulario() {
  const navigate = useNavigate();

  const [proposito, setProposito] = useState('');
  const [marca, setMarca] = useState('');
  const [sistemaOperativo, setSistemaOperativo] = useState(''); // Inicializado como una cadena vacía
  const [capDisco, setCapDisco] = useState(''); // Inicializado como una cadena vacía
  const [tipComputador, setTipComputador] = useState('');
  const [presupuesto, setPresupuesto] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();
  
    // Crear un objeto con los datos del formulario
    const formData = {
      proposito,
      marca,
      sistemaOperativo, // Enviado como cadena de texto
      capDisco, // Enviado como cadena de texto
      tipComputador,
    };
  
    // Mostrar los datos que se enviarán al servidor
    console.log('Datos a enviar:', formData);
  
    // Realizar una solicitud POST para enviar los datos al servidor
    fetch('http://127.0.0.1:8000/api/consulta/', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(formData),
    })
      .then((response) => response.json())
      .then((data) => {
        // Redirigir a la página de resultados con los datos devueltos por el servidor
        console.log('Datos devueltos por el servidor:', data);
        navigate('/resultados', { state: { productosFiltrados: data } });
      })
      .catch((error) => {
        console.error('Error al enviar los datos al servidor:', error);
      });
  };

  return (
    <div className="form-container">
      <h1>Formulario de Selección de Computadora</h1>
      <form onSubmit={handleSubmit}>
        <div className="form-group">
          <label htmlFor="proposito">¿Para qué vas a usar la computadora?</label>
          <select
            id="proposito"
            className="custom-select"
            value={proposito}
            onChange={(e) => setProposito(e.target.value)}
          >
            <option value="">Selecciona una opción</option>
            <option value="Trabajo">Trabajo</option>
            <option value="Gamer">Gamer</option>
            <option value="Entretenimiento">Entretenimiento</option>
            {/* Agrega más opciones según sea necesario */}
          </select>
        </div>
        <div className="form-group">
          <label htmlFor="marca">¿Tienes alguna preferencia por la marca de la computadora?</label>
          <select
            id="marca"
            className="custom-select"
            value={marca}
            onChange={(e) => setMarca(e.target.value)}
          >
            <option value="">Selecciona una opción</option>
            <option value="Apple">Apple</option>
            <option value="Razer">Razer</option>
            <option value="HP">HP</option>
            {/* Agrega más opciones según sea necesario */}
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
            <option value="Windows 11 Home">Windows 11 Home</option> {/* Modifica el valor aquí */}
            <option value="Mac">Mac</option>
            {/* Agrega más opciones según sea necesario */}
          </select>
        </div>
        <div className= "form-group">
          <label htmlFor="capDisco">¿Qué capacidad de disco necesitas?</label>
          <select
            id="capDisco"
            className="custom-select"
            value={capDisco}
            onChange={(e) => setCapDisco(e.target.value)}
          >
            <option value="">Selecciona una opción</option>
            <option value="512 GB">512 GB</option> {/* Modifica el valor aquí */}
            <option value="1.5 TB">1.5 TB</option>
            {/* Agrega más opciones según sea necesario */}
          </select>
        </div>
        <div className="form-group">
          <label htmlFor="tipComputador">¿Prefieres una laptop o una computadora de escritorio?</label>
          <select
            id="tipComputador"
            className="custom-select"
            value={tipComputador}
            onChange={(e) => setTipComputador(e.target.value)}
          >
            <option value="">Selecciona una opción</option>
            <option value="Portatil">Portatil</option>
            <option value="Escritorio">Escritorio</option>
          </select>
        </div>
        <div className="form-group">
          <label htmlFor="presupuesto">¿Cuál es tu presupuesto aproximado?</label>
          <input
            type="text" // Cambiar el tipo a texto
            id="presupuesto"
            className="custom-input"
            value={presupuesto}
            onChange={(e) => setPresupuesto(e.target.value)}
          />
        </div>
        <button type="submit" className="submit-button">
          Enviar
        </button>
      </form>
    </div>
  );
}

export default Formulario;
