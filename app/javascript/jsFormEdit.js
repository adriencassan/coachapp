const jsFormEditBtn = () => {
  const cardEditBtns = document.querySelectorAll(".jsFormEditBtn");
  cardEditBtns.forEach((cardEditBtn) => {
    cardEditBtn.addEventListener("click", openJsForm);
  });
}

const openJsForm = (e) => {
  const editForm = document.getElementById("repetition"+e.target.dataset.repetition+"-edit");
  editForm.classList.remove("hide")
  const showForm =document.getElementById("repetition"+e.target.dataset.repetition+"-show");
  showForm.classList.add("hide")
}


const jsFormInputBtnPlus = () => {
  const inputBtns = document.querySelectorAll(".jsFormInputBtnPlus");
  inputBtns.forEach((inputBtn) => {
    inputBtn.addEventListener("click", jsFormPlus);
  });
}


const jsFormPlus = (e) => {
  const inputForm = document.getElementById(e.target.dataset.input);
  inputForm.value = parseInt(inputForm.value) + 1;
}

const jsFormInputBtnMinus = () => {
  const inputBtns = document.querySelectorAll(".jsFormInputBtnMinus");
  inputBtns.forEach((inputBtn) => {
    inputBtn.addEventListener("click", jsFormMinus);
  });
}


const jsFormMinus = (e) => {
  const inputForm = document.getElementById(e.target.dataset.input);
  inputForm.value = parseInt(inputForm.value) - 1;
}



const jsFormCloseBtn= () => {
  const closeBtns = document.querySelectorAll(".jsFormCloseBtn");
  closeBtns.forEach((closeBtn) => {
    closeBtn.addEventListener("click", closeJsForm);
  });
}

const closeJsForm = (e) => {
 const editForm = document.getElementById("repetition"+e.target.dataset.repetition+"-edit");
  editForm.classList.add("hide")

  const showForm =document.getElementById("repetition"+e.target.dataset.repetition+"-show");
  showForm.classList.close("hide")
}


const jsFormShowBtn = () => {
  const formShowBtns = document.querySelectorAll(".jsformShowCTA");
  formShowBtns.forEach((formShowBtn) => {
    formShowBtn.addEventListener("click", showJsForm);
  });
}

const showJsForm = (e) => {
   console.log("je suis ici")
  const showForm = document.querySelector(".jsFormShow");
  showForm.classList.remove("hide")

  const showFormCTA = document.querySelector(".jsformShowCTA");
  showFormCTA.classList.add("hide")
}

//export { editCardCloseBtnLine }


export { jsFormEditBtn, jsFormInputBtnPlus, jsFormInputBtnMinus, jsFormShowBtn }





