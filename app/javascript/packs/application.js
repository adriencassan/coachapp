import "bootstrap";
import "flatpickr";
import "chartkick/chart.js";



flatpickr(".datepicker", {});


import { jsFormEditBtn, jsFormInputBtnPlus,jsFormInputBtnMinus, jsFormShowBtn } from "../jsFormEdit";
import { initUpdateNavbarOnScroll} from "../navbar.js";

jsFormEditBtn();
jsFormInputBtnPlus();
jsFormInputBtnMinus();
jsFormShowBtn ();
initUpdateNavbarOnScroll();
