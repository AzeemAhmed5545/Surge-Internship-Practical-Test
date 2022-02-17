import React from 'react';
import axios from 'axios';
import { useHistory } from 'react-router-dom';


const Navbar = () => {
    const history = useHistory();

    const Logout = async() =>{
        try {
            await axios.delete('http://localhost:5000/logout');
            history.push("/");
        } catch (error) {
            console.log(error);
        }

    }

  return (
        <nav className="navbar is-danger has-background-danger-dark" role="navigation" aria-label="main navigation">
          <div className="container">
          <div className="navbar-brand">
            
              <p class="title is-1 has-text-white has-text-weight-bold" >SURGE</p>
            
        
            <a href="/" role="button" className="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
              <span aria-hidden="true"></span>
              <span aria-hidden="true"></span>
              <span aria-hidden="true"></span>
            </a>
          </div>
        
          <div id="navbarBasicExample" className="navbar-menu">

        
            <div className="navbar-end">
              <div className="navbar-item">
                <div className="buttons">
                  <button onClick={Logout} className="button is-info">
                    Log Out
                  </button>
                </div>
              </div>
            </div>
          </div>
          </div>
        </nav>
  )
}

export default Navbar
