import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["firstInput", "secondInput", "priceInput", "pricePrinted", "priceOfPokemon"];

  setPriceOfRent() {
    if (this.firstInputTarget.value && this.secondInputTarget.value) {
      const stringDate1 = this.firstInputTarget.value.split('/')
      const stringDate2 = this.secondInputTarget.value.split('/')
      const startDate = new Date(`${stringDate1[2]}-${stringDate1[1]}-${stringDate1[0]}`)
      const endDate = new Date(`${stringDate2[2]}-${stringDate2[1]}-${stringDate2[0]}`)
      console.log(Math.ceil((endDate - startDate)/(1000 * 60 * 60 * 24 *7)))
      const timeRent = Math.ceil((endDate - startDate)/(1000 * 60 * 60 * 24 *7))
      const totalPrice = this.priceOfPokemonTarget.value * timeRent
      this.pricePrintedTarget.innerHTML = `${totalPrice}€`
      this.priceInputTarget.value = totalPrice
    } else {
      console.log("empty")
    }
  }
}