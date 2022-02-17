import React,{useState, useEffect} from 'react'
import axios from 'axios';
import jwt_decode from "jwt-decode";
import { useHistory } from 'react-router-dom';

const Dashboard = () => {
    const [name, setName] = useState('');
    const [token, setToken] = useState('');
    const [expire, setExpire] = useState('');
    const [users, setUsers] = useState([]);
    const history = useHistory();

    useEffect(() => {
        refreshToken();
        getUsers();
    },[]);

    const refreshToken = async() => {
        try {
            const response = await axios.get('http://localhost:5000/token');
            setToken(response.data.accessToken);
            const decoded = jwt_decode(response.data.accessToken);
            console.log(decoded);
            setName(decoded.name);
            setExpire(decoded.exp);

        } catch (error) {
            if(error.response){
                history.push("/");
            }
            
        }
    }

    const axiosJWT = axios.create();

    axiosJWT.interceptors.request.use(async(config) => {
        const currentDate = new Date();
        if(expire * 1000 < currentDate.getTime()){
            const response = await axios.get('http://localhost:5000/token');
            config.headers.Authorization = `Bearer ${response.data.accessToken}`;
            setToken(response.data.accessToken);
            const decoded = jwt_decode(response.data.accessToken);
            console.log(decoded);
            setName(decoded.name);
            setExpire(decoded.exp);
        }
        return config;
    }, (error)=>{
        return Promise.reject(error);
    });

    const getUsers = async() =>{
        const response = await axiosJWT.get('http://localhost:5000/users',{
            headers:{
                Authorization: `Bearer ${token}`
            }
        });
        setUsers(response.data);
    }

  return (
    <div className="container mt-5">
      <h1 className="has-text-link has-text-weight-bold has-text-centered">Welcome Back {name} to SURGE</h1>
      <button onClick={getUsers} className="button is-info">Get Users</button>
      <table className="table is-striped is-fullwidth">
          <thead>
              <tr>
                  <th>No</th>
                  <th>Full Name</th>
                  <th>Email</th>
                  <th>Modify</th>
            </tr>
          </thead>
          <tbody>
              {users.map((user, index) => (
              <tr key={users.id}>
                  <td>{index + 1}</td>
                  <td>{user.name}</td>
                  <td>{user.email}</td>
                  <td><><button className="button is-info">Update</button></></td>
              </tr>
              ))}
          </tbody>
        </table>
    </div>
  )
}

export default Dashboard
