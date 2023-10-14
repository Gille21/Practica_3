import React from 'react';
import { useLocation } from 'react-router-dom';
import { Link } from 'react-router-dom';
import './Styles/resultados.css';

import LAPTOP from './img/LAPTOP.png';
import LAPTOP2 from './img/LAPTOP3.webp';
import LAPTOP3 from './img/LAPTOP2.png';

const productos = [
  {
    nombre: 'CYBORG 15 A12VF',
    tipo: 'Portatil-',
    proposito: 'Gamer',
    costo: 'COP 4,364,529.00',
    imagen: LAPTOP,
  },
  
  {
    nombre: 'Huawei Note 5',
    tipo: 'Portatil-',
    proposito: 'Entretenimiento',
    costo: 'COP 3,000,000.00',
    imagen: LAPTOP3,
  },
  // Agrega más productos según sea necesario
];

function Resultado() {
  const location = useLocation();
  const searchParams = new URLSearchParams(location.search);
  const usoComputadora = searchParams.get('usoComputadora');

  const filterProductos = (producto) => {
    if (!usoComputadora) {
      return true;
    }
    return producto.proposito === usoComputadora;
  };

  const productosFiltrados = productos.filter(filterProductos);

  return (
    <div>
      <Link to="/formulario" className="btn btn-outline-dark view-button back-button">
        Volver al Formulario
      </Link>

      <div className="card-container">
        <section className="py-5">
          <div className="container px-4 px-lg-5 mt-5">
            <div className="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
              {productosFiltrados.map((producto, index) => (
                <div className="col mb-5" key={index}>
                  <div className="card h-100">
                    <div className="card-body p-4">
                      <img
                        className="product-image"
                        src={producto.imagen}
                        alt="Product"
                      />
                      <div className="text-center">
                        <h5 className="fw-bolder">{producto.nombre}</h5>
                        <div className="d-flex justify-content-between">
                          <span className="fw-bold">{producto.tipo}</span>
                          <span className="fw-bold">{producto.proposito}</span>
                        </div>
                        <p className="mt-3">{producto.costo}</p>
                      </div>
                    </div>

                    <div className="card-footer p-4 pt-0 border-top-0 bg-transparent">
                      <div className="text-center">
                        <button className="btn btn-outline-dark view-button">
                          View Options
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              ))}
            </div>
          </div>
        </section>
      </div>
    </div>
  );
}

export default Resultado;
