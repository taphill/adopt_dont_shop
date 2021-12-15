import React from 'react'
import './SheltersGrid.scss'
import Shelter from '../../components/Shelter/Shelter'
import fetchShelters from '../../api/v1/shelter'

function SheltersGrid () {
  const [shelterData, setShelterData] = React.useState({
    status: 'idle',
    data: [],
    error: null
  })

  React.useEffect(() => {
    fetchShelters().then(
      shelters => {
        setShelterData({ status: 'resolved', data: shelters.data })
      },
      error => {
        setShelterData({ status: 'rejected', error })
      }
    )
  }, [])

  const shelters = shelterData.data.map((shelter) => {
    return (
      <Shelter
        key={shelter.id}
        id={shelter.id}
        name={shelter.attributes.name}
        city={shelter.attributes.city}
        rank={shelter.attributes.rank}
        foster_program={shelter.attributes.foster_program}
      />
    )
  })

  return (
    <section className="shelters-grid">
      {shelters}
    </section>
  )
}

export default SheltersGrid
