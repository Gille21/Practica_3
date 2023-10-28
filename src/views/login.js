import { useEffect, useState } from 'react';
import { login } from '../utils/auth';
import { useNavigate } from 'react-router-dom';
import { useAuthStore } from '../store/auth';
import { Link } from 'react-router-dom';
import {useForm} from 'react-hook-form';

const Login = () => {
    const navigate = useNavigate();
    const [username, setUsername] = useState('');
    const [password, setPassword] = useState('');
    const isLoggedIn = useAuthStore((state) => state.isLoggedIn);
    const {register, handleSubmit,formState:{errors}} = useForm();

    useEffect(() => {
        if (isLoggedIn()) {
            navigate('/portalHome');
        }
    }, []);

    const resetForm = () => {
        setUsername('');
        setPassword('');
    };

    const handleLogin = async (e) => {
        e.preventDefault();
        const { error } = await login(username, password);
        console.log(e);
        if (error) {
            alert(error);
        } else {
            navigate('/portalHome');
            resetForm();
        }
    };
    return (
        <div class="center">
            <div className="body">
                <div className="card shadow">
                    <div className="card-body">
                    <h1>Login</h1>
                        <form onSubmit={handleLogin}>
                            <div className='mb-3'>
                                <label htmlFor="username" className='form-label'>Username</label>
                            </div>
                            <div className='mb-3'>
                                <input type="text" id="username" className='form-control' name="username" value={username} onChange={(e) => setUsername(e.target.value)}
                                />
                            </div>
                            <div className='mb-3'>
                                <label htmlFor="password" className='form-label'>Password</label>
                                <input type="password" id="password" className='form-control' name="password" value={password} onChange={(e) => setPassword(e.target.value)}/>
                            </div>
                            <div className="mb-3">
                                            <label htmlFor="" className="form-label">you don't have account? <Link to="../views/register">register</Link></label>
                                        </div> 
                            <button type="submit">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
    );
};

export default Login;
