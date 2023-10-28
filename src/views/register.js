import { useEffect, useState } from 'react';
import { register } from '../utils/auth';
import { useNavigate } from 'react-router-dom';
import { useAuthStore } from '../store/auth';
import { Link } from 'react-router-dom';

function Register() {
    const [username, setUsername] = useState('');
    const [password, setPassword] = useState('');
    const [password2, setPassword2] = useState('');
    const isLoggedIn = useAuthStore((state) => state.isLoggedIn);
    const navigate = useNavigate();

    useEffect(() => {
        if (isLoggedIn()) {
            navigate('/');
        }
    }, []);

    const resetForm = () => {
        setUsername('');
        setPassword('');
        setPassword2('');
    };

    const handleSubmit = async (e) => {
        e.preventDefault();
        const { error } = await register(username, password, password2);
        if (error) {
            alert(JSON.stringify(error));
        } else {
            navigate('/');
            resetForm();
        }
    };

    return (
        <div class="center">
            <div className="body">
                <div className="card shadow">
                    <div className="card-body">
                        <form onSubmit={handleSubmit}>
                            <h1>Register</h1>
                            <div className="mb-3">
                                <label htmlFor="username" className='form-label'>Username</label>
                                <input type="text" id="username" className='form-control' onChange={(e) => setUsername(e.target.value)} placeholder="Username" required />
                            </div>
                            <div className="mb-3">
                                <label htmlFor="password" className='form-label'>Password</label>
                                <input type="password" id="password" className='form-control' onChange={(e) => setPassword(e.target.value)} placeholder="Password" required />
                            </div>
                            <div className="mb-3">
                                <label htmlFor="confirm-password" className='form-label'>Confirm Password</label>
                                <input type="password" id="confirm-password" className='form-control' onChange={(e) => setPassword2(e.target.value)} placeholder="Confirm Password" required />
                                <p> {password2 !== password ? 'Passwords do not match' : ''} </p>
                            </div>
                            <div className="mb-3">
                                            <label htmlFor="" className="form-label">you already have account? <Link to="../views/login">sing up</Link></label>
                                        </div>
                            <button type="submit">Register</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    );
}

export default Register;
