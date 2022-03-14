import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["pokemonskanto", "pokemonsjohto", "pokemonshoenne", "pokemonssinnoh", "titlekanto", "titlejohto", "titlehoenne", "titlesinnoh"];

  pokKanto(event) {
    this.titlekantoTarget.classList.remove("d-none");
    this.titlejohtoTarget.classList.add("d-none");
    this.titlehoenneTarget.classList.add("d-none");
    this.titlesinnohTarget.classList.add("d-none");
    this.pokemonskantoTargets.forEach((pokemon) => {
      pokemon.classList.remove("d-none");
    });
    this.pokemonsjohtoTargets.forEach((pokemon) => {
      pokemon.classList.add("d-none");
    });
    this.pokemonshoenneTargets.forEach((pokemon) => {
      pokemon.classList.add("d-none");
    });
    this.pokemonssinnohTargets.forEach((pokemon) => {
      pokemon.classList.add("d-none");
    });
  }

  pokJohto(event) {
    this.titlekantoTarget.classList.add("d-none");
    this.titlejohtoTarget.classList.remove("d-none");
    this.titlehoenneTarget.classList.add("d-none");
    this.titlesinnohTarget.classList.add("d-none");
    this.pokemonskantoTargets.forEach((pokemon) => {
      pokemon.classList.add("d-none");
    });
    this.pokemonsjohtoTargets.forEach((pokemon) => {
      pokemon.classList.remove("d-none");
    });
    this.pokemonshoenneTargets.forEach((pokemon) => {
      pokemon.classList.add("d-none");
    });
    this.pokemonssinnohTargets.forEach((pokemon) => {
      pokemon.classList.add("d-none");
    });
  }

  pokHoenne(event) {
    this.titlekantoTarget.classList.add("d-none");
    this.titlejohtoTarget.classList.add("d-none");
    this.titlehoenneTarget.classList.remove("d-none");
    this.titlesinnohTarget.classList.add("d-none");
    this.pokemonskantoTargets.forEach((pokemon) => {
      pokemon.classList.add("d-none");
    });
    this.pokemonsjohtoTargets.forEach((pokemon) => {
      pokemon.classList.add("d-none");
    });
    this.pokemonshoenneTargets.forEach((pokemon) => {
      pokemon.classList.remove("d-none");
    });
    this.pokemonssinnohTargets.forEach((pokemon) => {
      pokemon.classList.add("d-none");
    });
  }

  pokSinnoh(event) {
    this.titlekantoTarget.classList.add("d-none");
    this.titlejohtoTarget.classList.add("d-none");
    this.titlehoenneTarget.classList.add("d-none");
    this.titlesinnohTarget.classList.remove("d-none");
    this.pokemonskantoTargets.forEach((pokemon) => {
      pokemon.classList.add("d-none");
    });
    this.pokemonsjohtoTargets.forEach((pokemon) => {
      pokemon.classList.add("d-none");
    });
    this.pokemonshoenneTargets.forEach((pokemon) => {
      pokemon.classList.add("d-none");
    });
    this.pokemonssinnohTargets.forEach((pokemon) => {
      pokemon.classList.remove("d-none");
    });
  }
}