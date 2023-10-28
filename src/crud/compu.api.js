import axios from 'axios';

const auth = {
    username: 'samuel',
    password: 'samuel159',
    };

const compuApi = axios.create({
    baseURL: 'http://127.0.0.1:8000/api/computers/'
})

const consApi = axios.create({
    baseURL: 'http://127.0.0.1:8000/api/consulta/'
});

export const getAllComp = () => compuApi.get("/", { auth })
export const createCompu = (compu) => compuApi.post('/', compu, { auth });
export const consulta = (cons) => consApi.post('/',cons,{ auth })