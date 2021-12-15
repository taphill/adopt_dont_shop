export default function fetchShelters () {
  return fetch('api/v1/shelters').then(response => response.json())
}
