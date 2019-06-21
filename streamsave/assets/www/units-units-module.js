(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["units-units-module"],{

/***/ "./src/app/units/units.module.ts":
/*!***************************************!*\
  !*** ./src/app/units/units.module.ts ***!
  \***************************************/
/*! exports provided: UnitsPageModule */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "UnitsPageModule", function() { return UnitsPageModule; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_common__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/common */ "./node_modules/@angular/common/fesm5/common.js");
/* harmony import */ var _angular_forms__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/forms */ "./node_modules/@angular/forms/fesm5/forms.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");
/* harmony import */ var _ionic_angular__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @ionic/angular */ "./node_modules/@ionic/angular/dist/fesm5.js");
/* harmony import */ var _units_page__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ./units.page */ "./src/app/units/units.page.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};






var routes = [
    {
        path: '',
        component: _units_page__WEBPACK_IMPORTED_MODULE_5__["UnitsPage"]
    }
];
var UnitsPageModule = /** @class */ (function () {
    function UnitsPageModule() {
    }
    UnitsPageModule = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["NgModule"])({
            imports: [
                _angular_common__WEBPACK_IMPORTED_MODULE_1__["CommonModule"],
                _angular_forms__WEBPACK_IMPORTED_MODULE_2__["FormsModule"],
                _ionic_angular__WEBPACK_IMPORTED_MODULE_4__["IonicModule"],
                _angular_router__WEBPACK_IMPORTED_MODULE_3__["RouterModule"].forChild(routes)
            ],
            declarations: [_units_page__WEBPACK_IMPORTED_MODULE_5__["UnitsPage"]]
        })
    ], UnitsPageModule);
    return UnitsPageModule;
}());



/***/ }),

/***/ "./src/app/units/units.page.html":
/*!***************************************!*\
  !*** ./src/app/units/units.page.html ***!
  \***************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<ion-header>\n  <ion-toolbar color=\"primary\">\n    <ion-buttons slot=\"start\">\n      <!-- <ion-button (click)=\"back()\">\n        <ion-icon slot=\"icon-only\" name=\"arrow-back\"></ion-icon>\n      </ion-button> -->\n      <ion-back-button></ion-back-button>\n    </ion-buttons>\n    <ion-title>Units</ion-title>\n  </ion-toolbar>\n</ion-header>\n\n<ion-content padding>\n  <ion-list *ngIf=\"data && data.user\">\n\n    <ion-item button detail=\"false\" (click)=\"presentWaterUnitRadio()\">\n      <ion-icon name=\"water\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        Water\n      </ion-label>\n      <ion-note slot=\"end\">{{ data.user.units.water }}</ion-note>\n    </ion-item>\n\n    <ion-item button detail=\"false\" (click)=\"presentTemperatureRadio()\">\n      <ion-icon name=\"thermometer\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        Temperature\n      </ion-label>\n      <ion-note *ngIf=\"data.user.units.temperature === 'c'\" slot=\"end\">Celcius</ion-note>\n      <ion-note *ngIf=\"data.user.units.temperature === 'f'\" slot=\"end\">Fahrenheit</ion-note>\n    </ion-item>\n\n    <ion-item button detail=\"false\" (click)=\"presentCurrencyRadio()\">\n      <ion-icon name=\"cash\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        Currency\n      </ion-label>\n      <ion-note *ngIf=\"data.user.units.currency === 'eur'\" slot=\"end\">Euros</ion-note>\n      <ion-note *ngIf=\"data.user.units.currency === 'usd'\" slot=\"end\">Dollars</ion-note>\n    </ion-item>\n\n    <ion-item button detail=\"false\" (click)=\"presentWaterPricePrompt()\">\n      <ion-icon name=\"water\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        Water price\n      </ion-label>\n      <ion-note *ngIf=\"data.user.units.water === 'litres'\" slot=\"end\">{{ data.user.units.waterPrice.toFixed(2) }} € / m<sup>3</sup></ion-note>\n      <ion-note *ngIf=\"data.user.units.water === 'gallons'\" slot=\"end\">{{ (data.user.units.waterPrice * 100 / 264.172).toFixed(2) }} cents\n        / gallon</ion-note>\n    </ion-item>\n\n    <ion-item button detail=\"false\" (click)=\"presentWaterHeatingMethodRadio()\">\n      <ion-icon *ngIf=\"data.user.units.heatingMethod === 'electricity'\" name=\"flash\" slot=\"start\"></ion-icon>\n      <ion-icon *ngIf=\"data.user.units.heatingMethod === 'gas'\" name=\"flame\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        Water heating method\n      </ion-label>\n      <ion-note slot=\"end\" text-capitalize>{{ data.user.units.heatingMethod }}</ion-note>\n    </ion-item>\n\n    <ion-item *ngIf=\"data.user.units.heatingMethod === 'electricity'\" button detail=\"false\" (click)=\"presentkWhPricePrompt()\">\n      <ion-icon name=\"flash\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        kWh price\n      </ion-label>\n      <ion-note slot=\"end\">{{ data.user.units.electricity.kWhPrice }} Cents</ion-note>\n    </ion-item>\n\n    <ion-item *ngIf=\"data.user.units.heatingMethod === 'gas'\" button detail=\"false\" (click)=\"presentGasPricePrompt()\">\n      <ion-icon name=\"flame\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        Gas price\n      </ion-label>\n      <ion-note slot=\"end\">{{ data.user.units.gas.gasPrice }} cents / CCF</ion-note>\n    </ion-item>\n\n    <ion-item *ngIf=\"data.user.units.heatingMethod === 'gas'\" button detail=\"false\" (click)=\"presentGasHeatContentPrompt()\">\n      <ion-icon name=\"flame\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        <ion-text>\n          <h3>\n            Heat content of gas\n          </h3>\n        </ion-text>\n        <ion-text color=\"medium\">\n          <p>\n            {{ data.user.units.gas.heatContent }} Btu per cubic foot\n          </p>\n        </ion-text>\n      </ion-label>\n      <!-- <ion-note slot=\"end\">{{ data.user.units.gas.heatContent }} Cents</ion-note> -->\n    </ion-item>\n  </ion-list>\n\n</ion-content>"

/***/ }),

/***/ "./src/app/units/units.page.scss":
/*!***************************************!*\
  !*** ./src/app/units/units.page.scss ***!
  \***************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "ion-note:first-letter {\n  text-transform: capitalize; }\n\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbInNyYy9hcHAvdW5pdHMvQzpcXHdvcmtcXGRldlxcc3RyZWFtc2F2ZS9zcmNcXGFwcFxcdW5pdHNcXHVuaXRzLnBhZ2Uuc2NzcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTtFQUNJLDBCQUF5QixFQUFBIiwiZmlsZSI6InNyYy9hcHAvdW5pdHMvdW5pdHMucGFnZS5zY3NzIiwic291cmNlc0NvbnRlbnQiOlsiaW9uLW5vdGU6Zmlyc3QtbGV0dGVyIHtcclxuICAgIHRleHQtdHJhbnNmb3JtOmNhcGl0YWxpemU7XHJcbn0iXX0= */"

/***/ }),

/***/ "./src/app/units/units.page.ts":
/*!*************************************!*\
  !*** ./src/app/units/units.page.ts ***!
  \*************************************/
/*! exports provided: UnitsPage */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "UnitsPage", function() { return UnitsPage; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _ionic_angular__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @ionic/angular */ "./node_modules/@ionic/angular/dist/fesm5.js");
/* harmony import */ var _providers___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./../../providers/ */ "./src/providers/index.ts");
var __assign = (undefined && undefined.__assign) || function () {
    __assign = Object.assign || function(t) {
        for (var s, i = 1, n = arguments.length; i < n; i++) {
            s = arguments[i];
            for (var p in s) if (Object.prototype.hasOwnProperty.call(s, p))
                t[p] = s[p];
        }
        return t;
    };
    return __assign.apply(this, arguments);
};
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __awaiter = (undefined && undefined.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (undefined && undefined.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};



var UnitsPage = /** @class */ (function () {
    function UnitsPage(
    // public modalController: ModalController,
    alertController, localDb, data) {
        this.alertController = alertController;
        this.localDb = localDb;
        this.data = data;
        this.units = {
            water: 'litres',
            temperature: 'c',
            currency: 'eur',
            waterPrice: 5,
            heatingMethod: 'electricity',
            electricity: { kWhPrice: 5 },
            gas: { gasPrice: 96, heatContent: 1024 }
        };
    }
    UnitsPage.prototype.ngOnInit = function () {
    };
    // back() {
    //   this.modalController.dismiss();
    // }
    UnitsPage.prototype.presentWaterPricePrompt = function () {
        return __awaiter(this, void 0, void 0, function () {
            var header, value, alert;
            var _this = this;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        header = this.data.user.units.water === 'litres' ? 'Water price € / m³' : 'Water price cents / gallon';
                        value = this.data.user.units.water === 'litres' ? this.data.user.units.waterPrice : this.data.user.units.waterPrice * (100 / 264.172);
                        console.log('header', header, 'value', value);
                        return [4 /*yield*/, this.alertController.create({
                                header: header,
                                inputs: [
                                    {
                                        name: 'price',
                                        type: 'number',
                                        value: value
                                    }
                                ],
                                buttons: [
                                    {
                                        text: 'Cancel',
                                        role: 'cancel',
                                        cssClass: 'secondary',
                                        handler: function () {
                                            console.log('Confirm Cancel');
                                        }
                                    }, {
                                        text: 'Ok',
                                        handler: function (data) {
                                            console.log('Confirm Ok');
                                            console.log(data.price);
                                            _this.data.user.units.waterPrice = _this.data.user.units.water === 'litres' ? data.price : (data.price / 100) / 0.00378541;
                                            _this.localDb.updateUser(__assign({}, _this.data.user));
                                        }
                                    }
                                ]
                            })];
                    case 1:
                        alert = _a.sent();
                        return [4 /*yield*/, alert.present()];
                    case 2:
                        _a.sent();
                        return [2 /*return*/];
                }
            });
        });
    };
    UnitsPage.prototype.presentkWhPricePrompt = function () {
        return __awaiter(this, void 0, void 0, function () {
            var alert;
            var _this = this;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.alertController.create({
                            header: 'KWh price (cents)',
                            inputs: [
                                {
                                    name: 'price',
                                    type: 'number',
                                    value: this.data.user.units.electricity.kWhPrice ? this.data.user.units.electricity.kWhPrice : ''
                                }
                            ],
                            buttons: [
                                {
                                    text: 'Cancel',
                                    role: 'cancel',
                                    cssClass: 'secondary',
                                    handler: function () {
                                        console.log('Confirm Cancel');
                                    }
                                }, {
                                    text: 'Ok',
                                    handler: function (data) {
                                        console.log('Confirm Ok');
                                        // this.units.heatingMethod = new Electricity(parseFloat(data.price));
                                        // this.units.electricity.kWhPrice = parseFloat(data.price);
                                        _this.data.user.units.electricity.kWhPrice = data.price;
                                        _this.localDb.updateUser(__assign({}, _this.data.user));
                                    }
                                }
                            ]
                        })];
                    case 1:
                        alert = _a.sent();
                        return [4 /*yield*/, alert.present()];
                    case 2:
                        _a.sent();
                        return [2 /*return*/];
                }
            });
        });
    };
    UnitsPage.prototype.presentWaterUnitRadio = function () {
        return __awaiter(this, void 0, void 0, function () {
            var alert;
            var _this = this;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.alertController.create({
                            header: 'Water unit',
                            inputs: [
                                {
                                    name: 'litres',
                                    type: 'radio',
                                    label: 'Litres',
                                    value: 'litres',
                                    checked: this.data.user.units.water === 'litres' ? true : false
                                },
                                {
                                    name: 'gallons',
                                    type: 'radio',
                                    label: 'Gallons',
                                    value: 'gallons',
                                    checked: this.data.user.units.water === 'gallons' ? true : false
                                }
                            ],
                            buttons: [
                                {
                                    text: 'Cancel',
                                    role: 'cancel',
                                    cssClass: 'secondary',
                                    handler: function () {
                                        console.log('Confirm Cancel');
                                    }
                                }, {
                                    text: 'Ok',
                                    handler: function (data) {
                                        console.log('Confirm Ok');
                                        console.log('data', data);
                                        // this.units.water = data;
                                        _this.data.user.units.water = data;
                                        _this.localDb.updateUser(__assign({}, _this.data.user));
                                    }
                                }
                            ]
                        })];
                    case 1:
                        alert = _a.sent();
                        return [4 /*yield*/, alert.present()];
                    case 2:
                        _a.sent();
                        return [2 /*return*/];
                }
            });
        });
    };
    UnitsPage.prototype.presentTemperatureRadio = function () {
        return __awaiter(this, void 0, void 0, function () {
            var alert;
            var _this = this;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.alertController.create({
                            header: 'Currency',
                            inputs: [
                                {
                                    name: 'c',
                                    type: 'radio',
                                    label: 'Celsius',
                                    value: 'c',
                                    checked: this.data.user.units.temperature === 'c' ? true : false
                                },
                                {
                                    name: 'f',
                                    type: 'radio',
                                    label: 'Fahrenheit',
                                    value: 'f',
                                    checked: this.data.user.units.temperature === 'f' ? true : false
                                }
                            ],
                            buttons: [
                                {
                                    text: 'Cancel',
                                    role: 'cancel',
                                    cssClass: 'secondary',
                                    handler: function () {
                                        console.log('Confirm Cancel');
                                    }
                                }, {
                                    text: 'Ok',
                                    handler: function (data) {
                                        console.log('data', data);
                                        // if (data === 'c') {
                                        //   console.log(this.units.heatingMethod);
                                        //   this.units.temperature = 'c';
                                        // }
                                        // if (data === 'f') {
                                        //   console.log(this.units.heatingMethod);
                                        //   this.units.temperature = 'f';
                                        // }
                                        _this.data.user.units.temperature = data;
                                        _this.localDb.updateUser(__assign({}, _this.data.user));
                                    }
                                }
                            ]
                        })];
                    case 1:
                        alert = _a.sent();
                        return [4 /*yield*/, alert.present()];
                    case 2:
                        _a.sent();
                        return [2 /*return*/];
                }
            });
        });
    };
    UnitsPage.prototype.presentCurrencyRadio = function () {
        return __awaiter(this, void 0, void 0, function () {
            var alert;
            var _this = this;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.alertController.create({
                            header: 'Currency',
                            inputs: [
                                {
                                    name: 'eur',
                                    type: 'radio',
                                    label: 'Euros',
                                    value: 'eur',
                                    checked: this.data.user.units.currency === 'eur' ? true : false
                                },
                                {
                                    name: 'usd',
                                    type: 'radio',
                                    label: 'Us Dollars',
                                    value: 'usd',
                                    checked: this.data.user.units.currency === 'usd' ? true : false
                                }
                            ],
                            buttons: [
                                {
                                    text: 'Cancel',
                                    role: 'cancel',
                                    cssClass: 'secondary',
                                    handler: function () {
                                        console.log('Confirm Cancel');
                                    }
                                }, {
                                    text: 'Ok',
                                    handler: function (data) {
                                        console.log('data', data);
                                        // if (data === 'eur') {
                                        //   console.log(this.units.currency);
                                        //   this.units.currency = 'eur';
                                        // }
                                        // if (data === 'usd') {
                                        //   console.log(this.units.currency);
                                        //   this.units.currency = 'usd';
                                        // }
                                        _this.data.user.units.currency = data;
                                        _this.localDb.updateUser(__assign({}, _this.data.user));
                                    }
                                }
                            ]
                        })];
                    case 1:
                        alert = _a.sent();
                        return [4 /*yield*/, alert.present()];
                    case 2:
                        _a.sent();
                        return [2 /*return*/];
                }
            });
        });
    };
    UnitsPage.prototype.presentWaterHeatingMethodRadio = function () {
        return __awaiter(this, void 0, void 0, function () {
            var alert;
            var _this = this;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.alertController.create({
                            header: 'Water unit',
                            inputs: [
                                {
                                    name: 'electricity',
                                    type: 'radio',
                                    label: 'Electricity',
                                    value: 'electricity',
                                    checked: this.data.user.units.heatingMethod === 'electricity' ? true : false
                                },
                                {
                                    name: 'gas',
                                    type: 'radio',
                                    label: 'Gas',
                                    value: 'gas',
                                    checked: this.data.user.units.heatingMethod === 'gas' ? true : false
                                }
                            ],
                            buttons: [
                                {
                                    text: 'Cancel',
                                    role: 'cancel',
                                    cssClass: 'secondary',
                                    handler: function () {
                                        console.log('Confirm Cancel');
                                    }
                                }, {
                                    text: 'Ok',
                                    handler: function (data) {
                                        console.log('data', data);
                                        // if (data === 'gas') {
                                        //   console.log(this.units.heatingMethod);
                                        //   this.units.heatingMethod = 'gas';
                                        // }
                                        // if (data === 'electricity') {
                                        //   console.log(this.units.heatingMethod);
                                        //   this.units.heatingMethod = 'electricity';
                                        // }
                                        _this.data.user.units.heatingMethod = data;
                                        _this.localDb.updateUser(__assign({}, _this.data.user));
                                    }
                                }
                            ]
                        })];
                    case 1:
                        alert = _a.sent();
                        return [4 /*yield*/, alert.present()];
                    case 2:
                        _a.sent();
                        return [2 /*return*/];
                }
            });
        });
    };
    UnitsPage.prototype.presentGasPricePrompt = function () {
        return __awaiter(this, void 0, void 0, function () {
            var alert;
            var _this = this;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.alertController.create({
                            header: 'Gas price (cents / CCF)',
                            inputs: [
                                {
                                    name: 'price',
                                    type: 'number',
                                    value: this.data.user.units.gas.gasPrice ? this.data.user.units.gas.gasPrice : ''
                                }
                            ],
                            buttons: [
                                {
                                    text: 'Cancel',
                                    role: 'cancel',
                                    cssClass: 'secondary',
                                    handler: function () {
                                        console.log('Confirm Cancel');
                                    }
                                }, {
                                    text: 'Ok',
                                    handler: function (data) {
                                        console.log('Confirm Ok');
                                        // this.units.heatingMethod = new Electricity(parseFloat(data.price));
                                        // this.units.gas.gasPrice = parseFloat(data.price);
                                        _this.data.user.units.gas.gasPrice = data.price;
                                        _this.localDb.updateUser(__assign({}, _this.data.user));
                                    }
                                }
                            ]
                        })];
                    case 1:
                        alert = _a.sent();
                        return [4 /*yield*/, alert.present()];
                    case 2:
                        _a.sent();
                        return [2 /*return*/];
                }
            });
        });
    };
    UnitsPage.prototype.presentGasHeatContentPrompt = function () {
        return __awaiter(this, void 0, void 0, function () {
            var alert;
            var _this = this;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.alertController.create({
                            header: 'Heat content of gas',
                            message: 'Btu per cubic foot',
                            inputs: [
                                {
                                    name: 'heatcontent',
                                    type: 'number',
                                    value: this.data.user.units.gas.heatContent ? this.data.user.units.gas.heatContent : ''
                                }
                            ],
                            buttons: [
                                {
                                    text: 'Cancel',
                                    role: 'cancel',
                                    cssClass: 'secondary',
                                    handler: function () {
                                        console.log('Confirm Cancel');
                                    }
                                }, {
                                    text: 'Ok',
                                    handler: function (data) {
                                        console.log('Confirm Ok');
                                        // this.units.heatingMethod = new Electricity(parseFloat(data.price));
                                        // this.units.gas.heatContent = parseFloat(data.heatcontent);
                                        _this.data.user.units.gas.heatContent = data.heatcontent;
                                        _this.localDb.updateUser(__assign({}, _this.data.user));
                                    }
                                }
                            ]
                        })];
                    case 1:
                        alert = _a.sent();
                        return [4 /*yield*/, alert.present()];
                    case 2:
                        _a.sent();
                        return [2 /*return*/];
                }
            });
        });
    };
    UnitsPage = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"])({
            selector: 'app-units',
            template: __webpack_require__(/*! ./units.page.html */ "./src/app/units/units.page.html"),
            styles: [__webpack_require__(/*! ./units.page.scss */ "./src/app/units/units.page.scss")]
        }),
        __metadata("design:paramtypes", [_ionic_angular__WEBPACK_IMPORTED_MODULE_1__["AlertController"],
            _providers___WEBPACK_IMPORTED_MODULE_2__["LocalDatabaseProvider"],
            _providers___WEBPACK_IMPORTED_MODULE_2__["DataProvider"]])
    ], UnitsPage);
    return UnitsPage;
}());



/***/ })

}]);
//# sourceMappingURL=units-units-module.js.map