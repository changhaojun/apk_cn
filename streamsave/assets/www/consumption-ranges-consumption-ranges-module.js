(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["consumption-ranges-consumption-ranges-module"],{

/***/ "./src/app/consumption-ranges/consumption-ranges.module.ts":
/*!*****************************************************************!*\
  !*** ./src/app/consumption-ranges/consumption-ranges.module.ts ***!
  \*****************************************************************/
/*! exports provided: ConsumptionRangesPageModule */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ConsumptionRangesPageModule", function() { return ConsumptionRangesPageModule; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_common__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/common */ "./node_modules/@angular/common/fesm5/common.js");
/* harmony import */ var _angular_forms__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/forms */ "./node_modules/@angular/forms/fesm5/forms.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");
/* harmony import */ var _ionic_angular__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @ionic/angular */ "./node_modules/@ionic/angular/dist/fesm5.js");
/* harmony import */ var _consumption_ranges_page__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ./consumption-ranges.page */ "./src/app/consumption-ranges/consumption-ranges.page.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};






var routes = [
    {
        path: '',
        component: _consumption_ranges_page__WEBPACK_IMPORTED_MODULE_5__["ConsumptionRangesPage"]
    }
];
var ConsumptionRangesPageModule = /** @class */ (function () {
    function ConsumptionRangesPageModule() {
    }
    ConsumptionRangesPageModule = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["NgModule"])({
            imports: [
                _angular_common__WEBPACK_IMPORTED_MODULE_1__["CommonModule"],
                _angular_forms__WEBPACK_IMPORTED_MODULE_2__["FormsModule"],
                _ionic_angular__WEBPACK_IMPORTED_MODULE_4__["IonicModule"],
                _angular_router__WEBPACK_IMPORTED_MODULE_3__["RouterModule"].forChild(routes)
            ],
            declarations: [_consumption_ranges_page__WEBPACK_IMPORTED_MODULE_5__["ConsumptionRangesPage"]]
        })
    ], ConsumptionRangesPageModule);
    return ConsumptionRangesPageModule;
}());



/***/ }),

/***/ "./src/app/consumption-ranges/consumption-ranges.page.html":
/*!*****************************************************************!*\
  !*** ./src/app/consumption-ranges/consumption-ranges.page.html ***!
  \*****************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<ion-header>\n  <ion-toolbar color=\"primary\">\n    <ion-buttons slot=\"start\">\n      <!-- <ion-button (click)=\"back()\">\n            <ion-icon slot=\"icon-only\" name=\"arrow-back\"></ion-icon>\n          </ion-button> -->\n      <ion-back-button></ion-back-button>\n    </ion-buttons>\n    <ion-title>Cost ranges</ion-title>\n  </ion-toolbar>\n</ion-header>\n\n<ion-content padding>\n  <ion-list *ngIf=\"data && data.user && data.user.ranges\">\n    <ion-item button detail=\"false\" (click)=\"presentRangePricePrompt('good')\">\n      <ion-icon color=\"good\" src=\"assets/icon/grin-regular.svg\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        Good\n      </ion-label>\n      <ion-note slot=\"end\">Less than {{ getCurrencySymbol() }}{{ data.user.ranges.good }}</ion-note>\n    </ion-item>\n    <ion-item button detail=\"false\" (click)=\"presentRangePricePrompt('mediocre')\">\n      <ion-icon color=\"mediocre\" src=\"assets/icon/meh-regular.svg\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        Mediocre\n      </ion-label>\n      <ion-note text-nowrap slot=\"end\">Less than {{ getCurrencySymbol() }}{{ data.user.ranges.mediocre }}</ion-note>\n    </ion-item>\n    <ion-item button detail=\"false\" (click)=\"presentRangePricePrompt('needsImprovement')\">\n      <ion-icon color=\"bad\" src=\"assets/icon/meh-regular.svg\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        Needs improvement\n      </ion-label>\n      <ion-note slot=\"end\" >More than {{ getCurrencySymbol() }}{{ data.user.ranges.needsImprovement }}</ion-note>\n    </ion-item>\n    <ion-item button detail=\"false\" (click)=\"presentNotificationEventLimitRadio()\">\n      <ion-icon name=\"notifications\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        <ion-text>\n          <h3>Show notification when event exceeds</h3>\n        </ion-text>\n        <ion-text color=\"medium\" text-capitalize>\n          <p>{{ data.user.ranges.eventNotificationLimit }}</p>\n        </ion-text>\n      </ion-label>\n    </ion-item>\n    <ion-item button detail=\"false\" (click)=\"presentWeeklyPricePrompt()\">\n      <ion-icon name=\"notifications\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        <ion-text>\n          <h3>Notification weekly limit</h3>\n        </ion-text>\n        <ion-text color=\"medium\">\n          <p>{{ getCurrencySymbol() }}{{ data.user.ranges.weeklyLimit }}</p>\n        </ion-text>\n      </ion-label>\n    </ion-item>\n    <ion-item button detail=\"false\" (click)=\"presentMonthlyPricePrompt()\">\n      <ion-icon name=\"notifications\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        <ion-text>\n          <h3>Notification monthly limit</h3>\n        </ion-text>\n        <ion-text color=\"medium\">\n          <p>{{ getCurrencySymbol() }}{{ data.user.ranges.monthlyLimit }}</p>\n        </ion-text>\n      </ion-label>\n    </ion-item>\n  </ion-list>\n</ion-content>"

/***/ }),

/***/ "./src/app/consumption-ranges/consumption-ranges.page.scss":
/*!*****************************************************************!*\
  !*** ./src/app/consumption-ranges/consumption-ranges.page.scss ***!
  \*****************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IiIsImZpbGUiOiJzcmMvYXBwL2NvbnN1bXB0aW9uLXJhbmdlcy9jb25zdW1wdGlvbi1yYW5nZXMucGFnZS5zY3NzIn0= */"

/***/ }),

/***/ "./src/app/consumption-ranges/consumption-ranges.page.ts":
/*!***************************************************************!*\
  !*** ./src/app/consumption-ranges/consumption-ranges.page.ts ***!
  \***************************************************************/
/*! exports provided: ConsumptionRangesPage */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ConsumptionRangesPage", function() { return ConsumptionRangesPage; });
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



var ConsumptionRangesPage = /** @class */ (function () {
    function ConsumptionRangesPage(alertController, data, localDb) {
        this.alertController = alertController;
        this.data = data;
        this.localDb = localDb;
        this.ranges = {
            good: 0.50,
            mediocre: 2.00,
            needsImprovement: 2.00,
            eventNotificationLimit: 'needs improvement',
            weeklyLimit: 15,
            monthlyLimit: 15,
        };
    }
    ConsumptionRangesPage.prototype.ngOnInit = function () {
    };
    ConsumptionRangesPage.prototype.getCurrencySymbol = function () {
        return this.data.user.units.currency === 'eur' ? '€' : '$';
    };
    ConsumptionRangesPage.prototype.presentRangePricePrompt = function (rangePriceType) {
        return __awaiter(this, void 0, void 0, function () {
            var message, value, min, max, alert;
            var _this = this;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        if (rangePriceType === 'good') {
                            message = "Show <b>Good</b> notification when total cost is less than " + this.getCurrencySymbol() + this.data.user.ranges.good;
                            value = this.data.user.ranges.good;
                            min = 0;
                            max = this.data.user.ranges.mediocre;
                        }
                        if (rangePriceType === 'mediocre') {
                            message = "Show <b>Mediocre</b> notification when total cost is less than " + this.getCurrencySymbol() + this.data.user.ranges.mediocre;
                            value = this.data.user.ranges.mediocre;
                            min = this.data.user.ranges.good;
                            // max = this.data.user.ranges.needsImprovement;
                            max = 1000000;
                        }
                        if (rangePriceType === 'needsImprovement') {
                            message = "Show <b>Needs improvement</b> notification when total cost is more than " + this.getCurrencySymbol() + this.data.user.ranges.needsImprovement;
                            value = this.data.user.ranges.needsImprovement;
                            min = this.data.user.ranges.good;
                            // min = this.data.user.ranges.mediocre;
                            max = 1000000;
                        }
                        return [4 /*yield*/, this.alertController.create({
                                header: 'Cost range',
                                message: message,
                                inputs: [{
                                        name: 'price',
                                        type: 'number',
                                        value: value ? value : '',
                                    }],
                                buttons: [{
                                        text: 'Cancel',
                                        role: 'cancel',
                                        cssClass: 'secondary',
                                        handler: function () {
                                        }
                                    }, {
                                        text: 'Ok',
                                        handler: function (data) {
                                            if (max >= data.price && data.price <= min) {
                                                _this.presentInvalidRangesAlert(rangePriceType);
                                            }
                                            else {
                                                if (rangePriceType === 'good') {
                                                    _this.data.user.ranges.good = data.price;
                                                    _this.localDb.updateUser(__assign({}, _this.data.user));
                                                }
                                                if (rangePriceType === 'mediocre') {
                                                    _this.data.user.ranges.mediocre = data.price;
                                                    _this.data.user.ranges.needsImprovement = data.price;
                                                    _this.localDb.updateUser(__assign({}, _this.data.user));
                                                }
                                                if (rangePriceType === 'needsImprovement') {
                                                    _this.data.user.ranges.mediocre = data.price;
                                                    _this.data.user.ranges.needsImprovement = data.price;
                                                    _this.localDb.updateUser(__assign({}, _this.data.user));
                                                }
                                            }
                                        }
                                    }]
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
    ConsumptionRangesPage.prototype.presentInvalidRangesAlert = function (invalidValue) {
        return __awaiter(this, void 0, void 0, function () {
            var message, alert;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        if (invalidValue === 'good') {
                            message = 'Good must be smaller than Mediocre and Needs Improvement';
                        }
                        if (invalidValue === 'mediocre') {
                            message = 'Mediocre and Needs Improvement must be larger than Good';
                        }
                        if (invalidValue === 'needsImprovement') {
                            message = 'Needs Improvement and Mediocre must be larger than Good';
                        }
                        return [4 /*yield*/, this.alertController.create({
                                header: 'Cost ranges',
                                message: message,
                                buttons: [{
                                        text: 'Ok',
                                        handler: function (data) {
                                        }
                                    }]
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
    ConsumptionRangesPage.prototype.presentNotificationEventLimitRadio = function () {
        return __awaiter(this, void 0, void 0, function () {
            var alert;
            var _this = this;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.alertController.create({
                            header: 'Show notification when event exceeds',
                            inputs: [{
                                    name: 'no',
                                    type: 'radio',
                                    label: 'No notification',
                                    value: 'no',
                                    checked: this.data.user.ranges.eventNotificationLimit === 'no notification' ? true : false
                                },
                                {
                                    name: 'mediocre',
                                    type: 'radio',
                                    label: 'Mediocre',
                                    value: 'mediocre',
                                    checked: this.data.user.ranges.eventNotificationLimit === 'mediocre' ? true : false
                                },
                                {
                                    name: 'needs',
                                    type: 'radio',
                                    label: 'Needs improvement',
                                    value: 'needs',
                                    checked: this.data.user.ranges.eventNotificationLimit === 'needs improvement' ? true : false
                                }
                            ],
                            buttons: [{
                                    text: 'Cancel',
                                    role: 'cancel',
                                    cssClass: 'secondary',
                                    handler: function () {
                                    }
                                }, {
                                    text: 'Ok',
                                    handler: function (data) {
                                        if (data === 'no') {
                                            _this.data.user.ranges.eventNotificationLimit = 'no notification';
                                            _this.localDb.updateUser(__assign({}, _this.data.user));
                                        }
                                        if (data === 'mediocre') {
                                            _this.data.user.ranges.eventNotificationLimit = 'mediocre';
                                            _this.localDb.updateUser(__assign({}, _this.data.user));
                                        }
                                        if (data === 'needs') {
                                            _this.data.user.ranges.eventNotificationLimit = 'needs improvement';
                                            _this.localDb.updateUser(__assign({}, _this.data.user));
                                        }
                                    }
                                }]
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
    ConsumptionRangesPage.prototype.presentWeeklyPricePrompt = function () {
        return __awaiter(this, void 0, void 0, function () {
            var alert;
            var _this = this;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.alertController.create({
                            header: "Notification weekly limit",
                            message: "Show  notification when total cost for week exceeds " + this.getCurrencySymbol() + this.data.user.ranges.weeklyLimit,
                            inputs: [{
                                    name: 'limit',
                                    type: 'number',
                                    value: this.data.user.ranges.weeklyLimit ? this.data.user.ranges.weeklyLimit : ''
                                }],
                            buttons: [{
                                    text: 'Cancel',
                                    role: 'cancel',
                                    cssClass: 'secondary',
                                    handler: function () {
                                    }
                                }, {
                                    text: 'Ok',
                                    handler: function (data) {
                                        _this.data.user.ranges.weeklyLimit = data.limit;
                                        _this.localDb.updateUser(__assign({}, _this.data.user));
                                    }
                                }]
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
    ConsumptionRangesPage.prototype.presentMonthlyPricePrompt = function () {
        return __awaiter(this, void 0, void 0, function () {
            var alert;
            var _this = this;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.alertController.create({
                            header: "Notification monthly limit",
                            message: "Show  notification when total cost for week exceeds " + this.getCurrencySymbol() + this.data.user.ranges.monthlyLimit,
                            inputs: [{
                                    name: 'limit',
                                    type: 'number',
                                    value: this.data.user.ranges.monthlyLimit ? this.data.user.ranges.monthlyLimit : ''
                                }],
                            buttons: [{
                                    text: 'Cancel',
                                    role: 'cancel',
                                    cssClass: 'secondary',
                                    handler: function () {
                                    }
                                }, {
                                    text: 'Ok',
                                    handler: function (data) {
                                        _this.data.user.ranges.monthlyLimit = data.limit;
                                        _this.localDb.updateUser(__assign({}, _this.data.user));
                                    }
                                }]
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
    ConsumptionRangesPage = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"])({
            selector: 'app-consumption-ranges',
            template: __webpack_require__(/*! ./consumption-ranges.page.html */ "./src/app/consumption-ranges/consumption-ranges.page.html"),
            styles: [__webpack_require__(/*! ./consumption-ranges.page.scss */ "./src/app/consumption-ranges/consumption-ranges.page.scss")]
        }),
        __metadata("design:paramtypes", [_ionic_angular__WEBPACK_IMPORTED_MODULE_1__["AlertController"],
            _providers___WEBPACK_IMPORTED_MODULE_2__["DataProvider"],
            _providers___WEBPACK_IMPORTED_MODULE_2__["LocalDatabaseProvider"]])
    ], ConsumptionRangesPage);
    return ConsumptionRangesPage;
}());



/***/ })

}]);
//# sourceMappingURL=consumption-ranges-consumption-ranges-module.js.map