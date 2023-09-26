import React from 'react';
import './Styles/Footer.css'; // Importa el archivo CSS para los estilos del footer

function Footer() {
  return (
    <footer className="bg-dark text-light py-4">
      <div className="container">
        <div className="row">
          <div className="col-md-4">
            <h3 className="text-success">PCEXPRESS</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
          <div className="col-md-4">
            <h3>Quick Links</h3>
            <ul className="list-unstyled">
              <li><a href="index.html">Home</a></li>
              <li><a href="about.html">About</a></li>
              <li><a href="shop.html">Shop</a></li>
              <li><a href="contact.html">Contact</a></li>
            </ul>
          </div>
          <div className="col-md-4">
            <h3>Contact Us</h3>
            <address>
              <p>Aqui va una Dirección</p>
              <p>Email: Aqui un Correo</p>
              <p>Phone: Aca un Número de Telefono</p>
            </address>
          </div>
        </div>

        </div>

    </footer>
  );
}

export default Footer;
