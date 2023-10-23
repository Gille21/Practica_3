import React from 'react';
import './Styles/styles.css';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';

import Header from './Header';
import Footer from './Footer';
import Formulario from './Formulario';
import Resultados from './Resultados';
import Body from './Body';
import About from './About'; 
import Shop from './Shop';
import Login from './auth/login';
import Register from './auth/register';

function App() {
  return (
    <Router>
      <div className="App">
        <Header />
        <Routes>
        <Route path="/" element={<Body />} />
          <Route path="/about" element={<About />} /> {/* Ruta para la página About */}
          <Route path="/shop" element={<Shop />} /> {/* Ruta para la página About */}
          <Route path="/formulario" element={<Formulario />} />
          <Route path="/resultados" element={<Resultados />} />
          <Route path="/auth/login" element={< Login/>} />
          <Route path="/auth/register" element={< Register/>} />
        </Routes>
        <Footer />
      </div>
    </Router>
  );
}

export default App;
