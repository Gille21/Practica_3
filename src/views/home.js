import { Link } from 'react-router-dom';
import { useAuthStore } from '../store/auth';

const Home = () => {
    const [isLoggedIn, user] = useAuthStore((state) => [
        state.isLoggedIn,
        state.user,
    ]);
    return (
        <div>
            {isLoggedIn() ? <LoggedInView user={user()} /> : <LoggedOutView />}
        </div>
    );
};

const LoggedInView = ({ user }) => {
    return (
        <div>
            <h1>Welcome {user.username}</h1>
            <div className='container'>
                    <div className='row'>
                    <li className="pb-3">
                        <Link to="/private">
                            <button>Private</button>
                        </Link>
                    </li>
                    <li className="pb-3">
                        <Link to="/crud/ccompu">
                        <button>Agregar Producto</button>
                        </Link>
                    </li>
                    <li className="pb-3">
                        <Link to="/consulta">
                        <button>Consultar Producto</button>
                        </Link>
                    </li>
                    <li className="pb-3">
                        <Link to="/logout">
                        <button>Logout</button>
                        </Link>
                    </li>
                </div>
            </div>
        </div>
    );
};

export const LoggedOutView = ({ title = 'Home' }) => {
    return (
        <div>
            <h1>{title}</h1>
            <div className="container">
                <div className="row">
                    <div className="col-md-3">
                        <Link to="/views/login">
                            <button>Login</button>
                        </Link>
                    </div>
                    <div className="col-md-3">
                        <Link to="/views/register">
                            <button>Register</button>
                        </Link>
                    </div>
                </div>
                </div>
        </div>
    );
};

export default Home;