import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"


const initFlatpickr = () => {
  console.log("bbbbbb")
  flatpickr(".datepicker", {
    minDate: "today",
    disable: functionDisable(),
    dateFormat: "d/m/Y",
    plugins: [new rangePlugin({ input: "#secondRangeInput"})],
  });
}

const functionDisable = () => {
  const dateOfRents = [];
  const allRents = document.querySelectorAll(".date-rent-pok");
  allRents.forEach((rent) => {
    dateOfRents.push({ from: rent.innerText.split(" ")[10], to: rent.innerText.split(" ")[11]})
  });
  return dateOfRents
};
export { initFlatpickr };