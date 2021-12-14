import React from 'react'
import { Outlet } from 'react-router-dom'

function App() {
  return (
    <div className="App">
      <h1>Adopt Don't Shop</h1>
      <Outlet />
    </div>
  )
}

export default App

