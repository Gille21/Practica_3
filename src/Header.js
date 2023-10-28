import React, { useEffect} from 'react';
import { Link } from 'react-router-dom'; // Importa Link de react-router-dom
import './Styles/Header.css';
import './Styles/bootstrap.min.css';
import { useLocation } from 'react-router-dom';
import About from './About';
// import Resultados from './Resultados';

function Header() {

  const rutaRegex = /^\/crud\//;

  const location = useLocation();

  // Aquí puedes realizar cualquier lógica específica del encabezado

  // Utiliza useEffect para realizar acciones cuando cambia la ubicación
  useEffect(() => {
    // Coloca aquí cualquier lógica que deseas ejecutar cuando la ubicación cambia
    // Esto se ejecutará cada vez que cambie la ruta
  }, [location]);


  if(rutaRegex.test(location.pathname)){
    return (

        <header className="bg-blue-gray">
        <nav className="navbar navbar-expand-lg navbar-light shadow">
          <div className="container d-flex justify-content-between align-items-center">
            {/* Enlace al inicio */}
            <Link to="/" className="navbar-brand text-success logo h1 align-self-center">PCEXPRESS</Link>

            <button className="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="templatemo_main_nav" aria-expanded="false" aria-label="Toggle navigation">
              <span className="navbar-toggler-icon"></span>
            </button>

            <div className="align-self-center collapse navbar-collapse flex-fill d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
              <div className="flex-fill">
                <ul className="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                  {/* Actualiza los enlaces */}
                  <li className="nav-item">
                    <Link to="/" className="nav-link">Inicio</Link>
                  </li>
                  <li className="nav-item">
                    <Link to="/crud/ccompu" className="nav-link">Crear Producto</Link>
                  </li>
                  <li className="nav-item">
                    <Link to="/shop" className="nav-link">Actualizar Producto</Link>
                  </li>
                  <li className="nav-item">
                    <Link to="/contact" className="nav-link">Borrar Producto</Link>
                  </li>
                </ul>
              </div>
              <div className="navbar align-self-center d-flex">
                <div className="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                  <div className="input-group">
                    <input type="text" className="form-control" id="inputMobileSearch" placeholder="Search ..." />
                    <div className="input-group-text">
                      <i className="fa fa-fw fa-search"></i>
                    </div>
                  </div>
                </div>
                <a className="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                  <i className="fa fa-fw fa-search text-dark mr-2"></i>
                </a>
              </div>
            </div>
          </div>
        </nav>

        {/* Modal */}
        <div className="modal fade bg-white" id="templatemo_search" tabIndex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div className="modal-dialog modal-lg" role="document">
            <div className="w-100 pt-1 mb-5 text-right">
              <button type="button" className="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" className="modal-content modal-body border-0 p-0">
              <div className="input-group mb-2">
                <input type="text" className="form-control" id="inputModalSearch" name="q" placeholder="Search ..." />
                <button type="submit" className="input-group-text bg-success text-light">
                  <i className="fa fa-fw fa-search text-white"></i>
                </button>
              </div>
            </form>
          </div>
        </div>
      </header>

    )

  }else{
  return (
    <header className="bg-blue-gray">
      <div className="container text-center">
        <div className="row align-items-start">
          {/* Sección 1 */}
          <div className="col-md">
            <div className="d-flex align-items-center">
              <div className="me-2">logo</div>
              <div>correo</div>
            </div>
          </div>

          {/* Sección 2 */}
          <div className="col-md">
            <div className="d-flex align-items-center">
              <div className="me-2">logo</div>
              <div>número</div>
            </div>
          </div>

          {/* Sección 3 */}
          <div className="col-md">
            <div className="d-flex justify-content-end">
              <div className="me-2">logo</div>
              <div className="me-2">logo</div>
              <div className="me-2">logo</div>
            </div>
          </div>
        </div>
      </div>

      <nav className="navbar navbar-expand-lg navbar-light shadow">
        <div className="container d-flex justify-content-between align-items-center">{/* Enlace al inicio */}
          <Link to="/" className="navbar-brand text-success logo h1 align-self-center">PCEXPRESS</Link>

          <button className="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="templatemo_main_nav" aria-expanded="false" aria-label="Toggle navigation">
            <span className="navbar-toggler-icon"></span>
          </button>

          <div className="align-self-center collapse navbar-collapse flex-fill d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
            <div className="flex-fill">
              <ul className="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                {/* Actualiza los enlaces */}
                <li className="nav-item">
                  <Link to="/" className="nav-link">Home</Link>
                </li>
                <li className="nav-item">
                  <Link to="/about" className="nav-link">About</Link>
                </li>
                <li className="nav-item">
                  <Link to="/shop" className="nav-link">Shop</Link>
                </li>
                <li className="nav-item">
                  <Link to="/contact" className="nav-link">Contact</Link>
                </li>
                <li className="nav-item">
                  <Link to="/views/login" className="nav-link">Login</Link>
                </li>
              </ul>
            </div>
            <div className="navbar align-self-center d-flex">
              <div className="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                <div className="input-group">
                  <input type="text" className="form-control" id="inputMobileSearch" placeholder="Search ..." />
                  <div className="input-group-text">
                    <i className="fa fa-fw fa-search"></i>
                  </div>
                </div>
              </div>
              <a className="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                <i className="fa fa-fw fa-search text-dark mr-2"></i>
              </a>
            </div>
          </div>
        </div>
      </nav>

      {/* Modal */}
      <div className="modal fade bg-white" id="templatemo_search" tabIndex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div className="modal-dialog modal-lg" role="document">
          <div className="w-100 pt-1 mb-5 text-right">
            <button type="button" className="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <form action="" method="get" className="modal-content modal-body border-0 p-0">
            <div className="input-group mb-2">
              <input type="text" className="form-control" id="inputModalSearch" name="q" placeholder="Search ..." />
              <button type="submit" className="input-group-text bg-success text-light">
                <i className="fa fa-fw fa-search text-white"></i>
              </button>
            </div>
          </form>
        </div>
      </div>
    </header>
  );
  }
}

export default Header;
