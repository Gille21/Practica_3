import React from 'react';
import './Styles/styles.css';
import { BrowserRouter as Router, Route, Routes, Link } from 'react-router-dom';

import Header from './Header';
import Footer from './Footer';
import Formulario from './Formulario';
import Resultados from './Resultados';

function App() {
  return (
    <Router>
      <div className="App">
        <Header />
        <Link to="/formulario">
          <button>Ir a Formulario</button>
        </Link>
        <Routes>
          <Route path="/formulario" element={<Formulario />} />
          <Route path="/resultados" element={<Resultados />} />
        </Routes>
        <Footer />
      </div>
    </Router>
  );
}

export default App;
