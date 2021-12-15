import React from 'react'
import './PetsContainer.scss'
import Pet from '../../components/Pet/Pet'
import fetchPets from '../../api/v1/pets'

function PetsContainer () {
  const [petData, setPetData] = React.useState({
    status: 'idle',
    data: [],
    error: null
  })

  React.useEffect(() => {
    fetchPets().then(
      pets => {
        setPetData({ status: 'resolved', data: pets.data })
      },
      error => {
        setPetData({ status: 'rejected', error })
      }
    )
  }, [])

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
