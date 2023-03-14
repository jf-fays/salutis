// search select2
export const select2 = () => {
  const input = document.querySelector("#prescription_medicine_medicine_id")
  if (input) {
    $("#prescription_medicine_medicine_id").select2({
      theme: "bootstrap-5",
      containerCssClass: "select2--large", // For Select2 v4.0
      selectionCssClass: "select2--large", // For Select2 v4.1
      dropdownCssClass: "select2--large",
    });
  }
}
