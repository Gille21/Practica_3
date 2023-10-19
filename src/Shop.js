import React, { useState, useEffect } from 'react';
import axios from 'axios';
import './Styles/bootstrap.min.css';

function Shop() {
  const [products, setProducts] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [filters, setFilters] = useState({
    type: 'all', // Opciones: 'all', 'portatil', 'escritorio'
    purpose: 'all', // Opciones: 'all', 'gamer', 'trabajo', 'entretenimiento'
  });

  useEffect(() => {
    // Configura tu URL de la API y las credenciales de autenticación (usuario y contraseña)
    const apiUrl = 'http://127.0.0.1:8000/api/computers/';
    const auth = {
      username: 'guille',
      password: '210601Ghln.',
    };

    // Realiza una solicitud GET con Axios
    axios
      .get(apiUrl, { auth })
      .then((response) => {
        setProducts(response.data); // Almacena los productos en el estado
        setLoading(false); // Cambia el estado de carga a falso
      })
      .catch((err) => {
        setError(err); // Maneja errores si ocurren
        setLoading(false); // Cambia el estado de carga a falso
      });
  }, []);

  // Filtra los productos en función de los filtros seleccionados
  const filteredProducts = products.filter((product) => {
    if (
      (filters.type === 'all' || product.tip_computador === filters.type) &&
      (filters.purpose === 'all' || product.proposito === filters.purpose)
    ) {
      return true;
    }
    return false;
  });

  if (loading) {
    return <div>Cargando...</div>;
  }

  if (error) {
    return <div>Error: {error.message}</div>;
  }

  return (
    <div className="shop">
      <div className="container">
        <div className="row">
          <div className="col-lg-3">
            <h1 className="h2 pb-4">Categorías</h1>
            <ul className="list-unstyled templatemo-accordion">
              {/* Agregar filtros de tipo y propósito */}
              <li className="pb-3">
                <h3>Filtrar por Tipo</h3>
                <ul className="list-unstyled pl-3">
                  <li>
                    <label>
                      <input
                        type="radio"
                        name="type"
                        value="all"
                        checked={filters.type === 'all'}
                        onChange={() => setFilters({ ...filters, type: 'all' })}
                      />
                      Todos
                    </label>
                  </li>
                  <li>
                    <label>
                      <input
                        type="radio"
                        name="type"
                        value="Portatil"
                        checked={filters.type === 'Portatil'}
                        onChange={() => setFilters({ ...filters, type: 'Portatil' })}
                      />
                      Portátil
                    </label>
                  </li>
                  <li>
                    <label>
                      <input
                        type="radio"
                        name="type"
                        value="Escritorio"
                        checked={filters.type === 'Escritorio'}
                        onChange={() => setFilters({ ...filters, type: 'Escritorio' })}
                      />
                      Escritorio
                    </label>
                  </li>
                </ul>
              </li>
              <li className="pb-3">
                <h3>Filtrar por Propósito</h3>
                <ul className="list-unstyled pl-3">
                  <li>
                    <label>
                      <input
                        type="radio"
                        name="purpose"
                        value="all"
                        checked={filters.purpose === 'all'}
                        onChange={() => setFilters({ ...filters, purpose: 'all' })}
                      />
                      Todos
                    </label>
                  </li>
                  <li>
                    <label>
                      <input
                        type="radio"
                        name="purpose"
                        value="Gamer"
                        checked={filters.purpose === 'Gamer'}
                        onChange={() => setFilters({ ...filters, purpose: 'Gamer' })}
                      />
                      Gamer
                    </label>
                  </li>
                  <li>
                    <label>
                      <input
                        type="radio"
                        name="purpose"
                        value="Trabajo"
                        checked={filters.purpose === 'Trabajo'}
                        onChange={() => setFilters({ ...filters, purpose: 'Trabajo' })}
                      />
                      Trabajo
                    </label>
                  </li>
                  <li>
                    <label>
                      <input
                        type="radio"
                        name="purpose"
                        value="Entretenimiento"
                        checked={filters.purpose === 'Entretenimiento'}
                        onChange={() => setFilters({ ...filters, purpose: 'Entretenimiento' })}
                      />
                      Entretenimiento
                    </label>
                  </li>
                </ul>
              </li>
            </ul>
          </div>

          <div className="col-lg-9">
            <div className="row">
              {filteredProducts.map((product) => (
                <div key={product.id_computer} className="col-md-4">
                  <div className="card mb-4 product-wap rounded-0">
                    <div className="card rounded-0">
                      <img className="card-img rounded-0 img-fluid" src={product.img} alt={product.modelo} />
                    </div>
                    <div className="card-body">
                      <h2 className="card-title">{product.modelo}</h2>
                      <p className="card-text">Tipo: {product.tip_computador}</p>
                      <p className="card-text">Propósito: {product.proposito}</p>
                      <p className="card-text">{`COP ${product.costo}`}</p>
                      {/* Agrega botones u otras interacciones según tus necesidades */}
                    </div>
                  </div>
                </div>
              ))}
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Shop;