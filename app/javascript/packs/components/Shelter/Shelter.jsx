import React from 'react'
import './Shelter.scss'
import rankBadge from '../../assests/rankBadge'
import accept from '../../assests/accept'
import cancel from '../../assests/cancel'

function Shelter (props) {
  let fosterProgramImage = null

  if (props.foster_program) {
    fosterProgramImage = <img src={accept} alt="This shelter has a foster program" className="foster-image"/>
  } else {
    fosterProgramImage = <img src={cancel} alt="This shelter does not have a foster program" className="foster-image"/>
  }

  return (
    <div className="shelter">
      <div>
        <img src={rankBadge} alt="" className="rank-image" />
        <h1>#{props.rank}</h1>
      </div>
      <h1>{props.name}</h1>
      <h2>{props.city}</h2>
      <div>
        <h3>Foster program</h3>
        {fosterProgramImage}
      </div>
    </div>
  )
}

export default Shelter
