import React from 'react'
import ReactDOM from 'react-dom'
import { BrowserRouter, Routes, Route } from "react-router-dom"
import './normalize.css'
import App from './App'
import SheltersGrid from './sections/SheltersGrid/SheltersGrid'

const root = document.createElement('div')
root.id = 'root'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<App />}>
          <Route path="/shelters" element={<SheltersGrid />}/>
        </Route>
      </Routes>
    </BrowserRouter>,
    document.body.appendChild(root)
  )
})
