import axios from 'axios';

const registerApi = axios.create({
    baseURL: 'http://127.0.0.1:8000/auth_api/registro/'
})

const consultSession = axios.create({
    baseURL: 'http://127.0.0.1:8000/auth_api/usuario/'
});

const initSession = axios.create({
    baseURL: 'http://127.0.0.1:8000/auth_api/login/'
});
const finishSession = axios.create({
    baseURL: 'http://127.0.0.1:8000/auth_api/logout/'
});

axios.defaults.xsrfCookieName = 'csrftoken';
axios.defaults.xsrfHeaderName = 'X-CSRFToken';
axios.defaults.withCredentials = true;

export const getSession = () => consultSession.get("/", )
export const createUser = (user) => registerApi.post('/', user);
export const login = (user) => initSession.post('/',user)
export const logout = (user) => finishSession.post('/',user)