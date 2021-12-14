import React from 'react'
import { Outlet } from 'react-router-dom'
import './App.scss'
import Nav from './sections/Nav/Nav'
import Footer from './sections/Footer/Footer'

function App() {
  return (
    <div className="App">
      <Nav />
      <Outlet />
      <Footer />
    </div>
  )
}

export default App

