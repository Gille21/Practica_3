import React from 'react';
import './Styles/Footer.css';
import { Link } from 'react-router-dom'; // Importa Link de react-router-dom
// Importa el archivo CSS para los estilos del footer

function Footer() {
  return (
    <footer className="bg-dark text-light py-4">
      <div className="container">
        <div className="row">
          <div className="col-md-4">
            <h3 className="text-success">PCEXPRESS</h3>
            <p>Encuentra el computador de tus sueños a la medida de tus necesidades.</p>
          </div>
          <div className="col-md-4">
            <h3>Quick Links</h3>
            <ul className="list-unstyled">
              <Link to="/"><li>Home</li></Link>
              <Link to="/about"><li>About</li></Link>
              <Link to="/shop"><li>Shop</li></Link>
              <Link to="/contact"><li>Contact</li></Link>
            </ul>
          </div>
          <div className="col-md-4">
            <h3>Contact Us</h3>
            <address>
              <p>Adress: Cra. 5 # 21-38</p>
              <p>Email: pcExpress@pcexpress.co</p>
              <p>Phone: +57 304 386 37 39 </p>
            </address>
          </div>
        </div>
        </div>
    </footer>
  );
}

export default Footer;
