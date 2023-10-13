import React, { useState, useEffect } from 'react';
import axios from 'axios';

function Shop() {
  const [products, setProducts] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    // Configura tu URL de la API y las credenciales de autenticación (usuario y contraseña)
    const apiUrl = 'http://127.0.0.1:8000/api/computers/';
    const auth = {
      username: 'guille',
      password: 'Ghln210601',
    };

    // Realiza una solicitud GET con Axios
    axios.get(apiUrl, { auth })
      .then((response) => {
        setProducts(response.data); // Almacena los productos en el estado
        setLoading(false); // Cambia el estado de carga a falso
      })
      .catch((err) => {
        setError(err); // Maneja errores si ocurren
        setLoading(false); // Cambia el estado de carga a falso
      });
  }, []);

  if (loading) {
    return <div>Cargando...</div>;
  }

  if (error) {
    return <div>Error: {error.message}</div>;
  }

  return (
    <div className="shop">
      {products.map((product) => (
        <div key={product.id} className="product-card">
          <img src={product.image} alt={product.name} />
          <h3>{product.name}</h3>
          <p>{product.description}</p>
          <p>${product.price}</p>
          {/* Agrega botones u otras interacciones según tus necesidades */}
        </div>
      ))}
    </div>
  );
}

export default Shop;
