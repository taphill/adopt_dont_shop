import React from 'react'
import './PetsContainer.scss'
import Pet from '../../components/Pet/Pet'
import petData from '../../petData'

function PetsContainer () {
  const pets = petData.data.map((pet) => {
    return (
      <Pet
        key={pet.id}
        id={pet.id}
        name={pet.attributes.name}
        age={pet.attributes.age}
        breed={pet.attributes.breed}
        adoptable={pet.attributes.adoptable}
      />
    )
  })

  return (
    <section className="pets-container">
      {pets}
    </section>
  )
}

export default PetsContainer
