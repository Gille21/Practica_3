import '../Styles/bootstrap.min.css';
import React, {useState} from 'react';
import {useForm} from 'react-hook-form';
import {createUser} from './auth.api';

function RegisterUser(){

    const {register, handleSubmit,formState:{errors}} = useForm();

    const onSubmit = handleSubmit(async data => {

        const res = await createUser(data);
        console.log(res);

    })

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
                                <label htmlFor="" className="form-label">Username</label>
                                <input type="text" className="form-control" placeholder="username" {...register('username',{required: true})}/>
                            </div> 
                            <div className="mb-3">
                                <label htmlFor="" className="form-label">Password</label>
                                <input type="password" className="form-control" placeholder="password min 8 caracteres" {...register('password',{required: true})}/>
                            </div>                        
                            <div className="mb-3">
                                <button>Save</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    );
}

export default RegisterUser
