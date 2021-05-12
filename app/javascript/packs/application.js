import "bootstrap";
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";
import "chartkick/chart.js";


flatpickr(".datepicker", {});


import { jsFormEditBtn, jsFormInputBtnPlus,jsFormInputBtnMinus, jsFormShowBtn } from "../jsFormEdit";
import { initUpdateNavbarOnScroll} from "../navbar.js";



jsFormEditBtn();
jsFormInputBtnPlus();
jsFormInputBtnMinus();
jsFormShowBtn ();
initUpdateNavbarOnScroll();
