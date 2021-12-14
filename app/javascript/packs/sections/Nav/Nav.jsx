import React from 'react'
import { NavLink } from 'react-router-dom'
import './Nav.scss'
import mainLogo from '../../assests/dog.png'
import userLogo from '../../assests/userColor.png'

function Nav () {
  return (
    <header className="navbar">
      <NavLink to="/">
        <div className="left">
          <img src={mainLogo} alt="Main logo" />
          <p>Adopt Don't Shop</p>
        </div>
      </NavLink>
      <div className="right">
        <ul>
          <li>
            <NavLink to="/shelters">
              Shelters
            </NavLink>
          </li>
          <li>Two</li>
          <li>Three</li>
          <li>Four</li>
        </ul>
        <img src={userLogo} alt="User logo" />
      </div>
    </header>
  )
}

export default Nav
