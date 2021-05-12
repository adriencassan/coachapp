import "bootstrap";
import "flatpickr";
import "chartkick";
import "chartkick/chart.js";
import "chartkick/highcharts";

flatpickr(".datepicker", {});


import { jsFormEditBtn, jsFormInputBtnPlus,jsFormInputBtnMinus, jsFormShowBtn } from "../jsFormEdit";
import { initUpdateNavbarOnScroll} from "../navbar.js";

jsFormEditBtn();
jsFormInputBtnPlus();
jsFormInputBtnMinus();
jsFormShowBtn ();
initUpdateNavbarOnScroll();
