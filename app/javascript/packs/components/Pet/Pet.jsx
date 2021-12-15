import React from 'react'
import './Pet.scss'

function Pet (props) {
  return (
    <div className="pet">
      <h1>{props.name}</h1>
      <h2>{props.breed} age {props.age}</h2>
      <p>{props.adoptable ? 'yes' : 'no'}</p>
    </div>
  )
}

export default Pet
