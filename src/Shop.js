import React, { useState, useEffect } from 'react';

function Shop() {
  const [products, setProducts] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    // Realiza una solicitud GET a tu API
    fetch('http://127.0.0.1:8000/api/computers/')
      .then((response) => response.json())
      .then((data) => {
        setProducts(data); // Almacena los productos en el estado
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
