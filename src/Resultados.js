import React from "react";
import { Link } from "react-router-dom"; // Importa Link desde react-router-dom
import "./Styles/resultados.css"; // Importa el archivo CSS
import productImage from "./img/LAPTOP.png"; // Importa la imagen desde la carpeta img

function Resultado() {
  // Datos del producto de ejemplo
  const productData = {
    nombre: "CYBORG 15 A12VF",
    tipo: "Portatil",
    proposito: "Gamer",
    costo: "COP 4,364,529.00",
  };

  return (
    <div>
      <body>
        {/* ... (código del encabezado) */}
        <section className="py-5">
          <div className="container px-4 px-lg-5 mt-5">
            <div className="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
              <div className="col mb-5">
                <div className="card h-100">
                  <div className="card-body p-4">
                    <img
                      className="product-image" // Aplica el estilo a la imagen
                      src={productImage} // Usa la variable importada para la ruta de la imagen
                      alt="Product"
                    />
                    <div className="text-center">
                      <h5 className="fw-bolder">{productData.nombre}</h5>
                      <div className="d-flex justify-content-between">
                        <span className="fw-bold">{productData.tipo}</span>
                        <span className="fw-bold">{productData.proposito}</span>
                      </div>
                      <p className="mt-3">{productData.costo}</p>
                    </div>
                  </div>

                  <div className="card-footer p-4 pt-0 border-top-0 bg-transparent">
                    <div className="text-center">
                      <Link to="/formulario" className="btn btn-outline-dark view-button back-button">
                        Volver a Formulario
                      </Link>
                      <button className="btn btn-outline-dark view-button">
                        View Options
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              {/* Puedes agregar más tarjetas de productos aquí con datos diferentes */}
            </div>
          </div>
        </section>
        {/* ... (código del pie de página) */}
      </body>
    </div>
  );
}

export default Resultado;
