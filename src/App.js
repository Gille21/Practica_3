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
import Producto from './Producto';
import Ccompu from './crud/ccompu';
import Consulta from './consulta';


function App() {
  return (
    <Router>
      <div className="App">
        <Header />
        <Routes>
          <Route path="/" element={<Body />} />
          <Route path="/about" element={<About />} />
          <Route path="/shop" element={<Shop />} />
          <Route path="/formulario" element={<Formulario />} />
          <Route path="/resultados" element={<Resultados />} />
          <Route path="/producto/:id" element={<Producto />} />
          <Route path="/crud/ccompu" element={<Ccompu />} />
          <Route path="/consulta" element={<Consulta />} />
        </Routes>
        <Footer />
      </div>
    </Router>
  );
}

export default App;
