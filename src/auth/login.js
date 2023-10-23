import '../Styles/bootstrap.min.css';
import React, {useState, useEffect} from 'react';
import {useForm} from 'react-hook-form';
import {login,logout} from './auth.api';
import { Link } from 'react-router-dom';

function LoginUser(){

    const {register, handleSubmit,formState:{errors}} = useForm();
    const [currentUser, setCurrentUser] = useState();


    const onSubmit = handleSubmit(async data => {
        const res = await login(data);
        console.log(res);
        setCurrentUser(true);
    })

    const onSubmitLogout = handleSubmit(async data => {
        const res = await logout(data);
        console.log(res);
        setCurrentUser(false);
    })

    if(currentUser){
        return(
            <div className="center">
                <h2>You're logged in!</h2>
                <form onSubmit={onSubmitLogout}>
                    <div className="mb-3">
                        <button>Logout</button>
                    </div>
                </form>
            </div>
        );
    }

    return(
        <div class="center">
            <div className="body">
                <div className="card shadow">
                    <div className="card-body">
                        <form onSubmit={onSubmit}>                        
                        <div className="mb-3">
                                <label htmlFor="" className="form-label">Email</label>
                                <input type="email" className="form-control" placeholder="example@dom.com" {...register('email',{required: true})}/>
                            </div> 
                            <div className="mb-3">
                                <label htmlFor="" className="form-label">Password</label>
                                <input type="password" className="form-control" placeholder="password min 8 caracteres" {...register('password',{required: true})}/>
                            </div>
                            <div className="mb-3">
                                <label htmlFor="" className="form-label">you don't have account? <Link to="../auth/register">register</Link></label>
                            </div>                        
                            <div className="mb-3">
                                <button>Guardar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    );
}

export default LoginUser