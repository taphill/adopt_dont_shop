export default function fetchPets () {
  return fetch('api/v1/pets').then(response => response.json())
}
