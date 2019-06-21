(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["settings-settings-module"],{

/***/ "./src/app/settings/settings.module.ts":
/*!*********************************************!*\
  !*** ./src/app/settings/settings.module.ts ***!
  \*********************************************/
/*! exports provided: SettingsPageModule */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "SettingsPageModule", function() { return SettingsPageModule; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_common__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/common */ "./node_modules/@angular/common/fesm5/common.js");
/* harmony import */ var _angular_forms__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/forms */ "./node_modules/@angular/forms/fesm5/forms.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");
/* harmony import */ var _ionic_angular__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @ionic/angular */ "./node_modules/@ionic/angular/dist/fesm5.js");
/* harmony import */ var _settings_page__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ./settings.page */ "./src/app/settings/settings.page.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};






var routes = [
    {
        path: '',
        component: _settings_page__WEBPACK_IMPORTED_MODULE_5__["SettingsPage"]
    }
];
var SettingsPageModule = /** @class */ (function () {
    function SettingsPageModule() {
    }
    SettingsPageModule = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["NgModule"])({
            imports: [
                _angular_common__WEBPACK_IMPORTED_MODULE_1__["CommonModule"],
                _angular_forms__WEBPACK_IMPORTED_MODULE_2__["FormsModule"],
                _ionic_angular__WEBPACK_IMPORTED_MODULE_4__["IonicModule"],
                _angular_router__WEBPACK_IMPORTED_MODULE_3__["RouterModule"].forChild(routes)
            ],
            declarations: [_settings_page__WEBPACK_IMPORTED_MODULE_5__["SettingsPage"]]
        })
    ], SettingsPageModule);
    return SettingsPageModule;
}());



/***/ }),

/***/ "./src/app/settings/settings.page.html":
/*!*********************************************!*\
  !*** ./src/app/settings/settings.page.html ***!
  \*********************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<ion-header>\n  <ion-toolbar color=\"primary\">\n    <ion-buttons slot=\"start\">\n      <ion-back-button></ion-back-button>\n    </ion-buttons>\n    <ion-title>Settings</ion-title>\n  </ion-toolbar>\n</ion-header>\n\n<ion-content padding>\n  <ion-list>\n    <ion-item button detail=\"false\" (click)=\"navToDevices()\">\n      <ion-icon src=\"/assets/icon/shower-solid.svg\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        Devices\n      </ion-label>\n    </ion-item>\n    <ion-item button detail=\"false\" (click)=\"navToUnits()\">\n      <ion-icon name=\"thermometer\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        Units\n      </ion-label>\n    </ion-item>\n    <ion-item button detail=\"false\" (click)=\"navToConsumptionRanges()\">\n      <ion-icon src=\"/assets/icon/smile-regular.svg\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        Cost ranges\n      </ion-label>\n    </ion-item>\n    <ion-item>\n      <ion-icon name=\"notifications\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        Allow notifications\n      </ion-label>\n      <ion-toggle slot=\"end\" (ionChange)=\"notificationToggleChanged($event)\" [(ngModel)]=\"data.user.allowNotifications\"></ion-toggle>\n    </ion-item>\n    <ion-item button detail=\"false\" (click)=\"presentClearMesurementsConfirm()\">\n      <ion-icon name=\"trash\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        Clear measurement data\n      </ion-label>\n    </ion-item>\n    <ion-item button detail=\"false\" (click)=\"presentHelpModal()\">\n      <ion-icon name=\"help-circle-outline\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        Help\n      </ion-label>\n    </ion-item>\n    <ion-item button detail=\"false\" (click)=\"navToAbout()\">\n      <ion-icon name=\"information-circle-outline\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        About\n      </ion-label>\n    </ion-item>\n    <!-- <ion-item button detail=\"false\" (click)=\"logout()\">\n      <ion-icon name=\"log-out\" slot=\"start\"></ion-icon>\n      <ion-label text-wrap>\n        Logout\n      </ion-label>\n    </ion-item> -->\n  </ion-list>\n</ion-content>"

/***/ }),

/***/ "./src/app/settings/settings.page.scss":
/*!*********************************************!*\
  !*** ./src/app/settings/settings.page.scss ***!
  \*********************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IiIsImZpbGUiOiJzcmMvYXBwL3NldHRpbmdzL3NldHRpbmdzLnBhZ2Uuc2NzcyJ9 */"

/***/ }),

/***/ "./src/app/settings/settings.page.ts":
/*!*******************************************!*\
  !*** ./src/app/settings/settings.page.ts ***!
  \*******************************************/
/*! exports provided: SettingsPage */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "SettingsPage", function() { return SettingsPage; });
/* harmony import */ var _ionic_angular__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @ionic/angular */ "./node_modules/@ionic/angular/dist/fesm5.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _providers___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./../../providers/ */ "./src/providers/index.ts");
/* harmony import */ var _help_help_page__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./../help/help.page */ "./src/app/help/help.page.ts");
/* harmony import */ var _add_device_add_device_page__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ./../add-device/add-device.page */ "./src/app/add-device/add-device.page.ts");
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

// import { AuthProvider } from './../../providers/';





var SettingsPage = /** @class */ (function () {
    function SettingsPage(navCtrl, alertController, localDb, data, modalCtrl
    // public auth: AuthProvider
    ) {
        this.navCtrl = navCtrl;
        this.alertController = alertController;
        this.localDb = localDb;
        this.data = data;
        this.modalCtrl = modalCtrl;
    }
    SettingsPage.prototype.ngOnInit = function () {
    };
    SettingsPage.prototype.navToDevices = function () {
        this.navCtrl.navigateForward('/settings/devices');
    };
    SettingsPage.prototype.navToUnits = function () {
        this.navCtrl.navigateForward('/settings/units');
    };
    SettingsPage.prototype.navToConsumptionRanges = function () {
        this.navCtrl.navigateForward('/settings/consumption-ranges');
    };
    SettingsPage.prototype.navToAbout = function () {
        this.navCtrl.navigateForward('/settings/about');
    };
    SettingsPage.prototype.presentClearMesurementsConfirm = function () {
        return __awaiter(this, void 0, void 0, function () {
            var alert;
            var _this = this;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.alertController.create({
                            header: 'Clear measurement data',
                            message: 'Do you want to clear all measurement data?',
                            buttons: [
                                {
                                    text: 'Cancel',
                                    role: 'cancel',
                                    handler: function () {
                                        console.log('cancel clicked');
                                    }
                                }, {
                                    text: 'Clear',
                                    handler: function () { return __awaiter(_this, void 0, void 0, function () {
                                        var devs, i, dev;
                                        return __generator(this, function (_a) {
                                            switch (_a.label) {
                                                case 0:
                                                    devs = this.data.user.devices;
                                                    i = 0;
                                                    _a.label = 1;
                                                case 1:
                                                    if (!(devs && i < devs.length)) return [3 /*break*/, 6];
                                                    dev = devs[i];
                                                    return [4 /*yield*/, this.localDb.clearMeasurementsByDeviceId(dev.id)];
                                                case 2:
                                                    _a.sent();
                                                    return [4 /*yield*/, this.localDb.deleteDeviceClosedMeasurement(dev.id)];
                                                case 3:
                                                    _a.sent();
                                                    return [4 /*yield*/, this.localDb.addDeviceClosedMeasurement(dev.id)];
                                                case 4:
                                                    _a.sent();
                                                    _a.label = 5;
                                                case 5:
                                                    i++;
                                                    return [3 /*break*/, 1];
                                                case 6: return [2 /*return*/];
                                            }
                                        });
                                    }); }
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
    // logout() {
    //   this.auth.logout().then(()=> {
    //     console.log('logged out');
    //   })
    // }
    SettingsPage.prototype.notificationToggleChanged = function (ev) {
        console.log(ev.detail.checked);
        this.data.user.allowNotifications = ev.detail.checked;
        this.localDb.updateUser(__assign({}, this.data.user));
    };
    SettingsPage.prototype.presentHelpModal = function () {
        return __awaiter(this, void 0, void 0, function () {
            var isDeviceListEmpty, modal;
            var _this = this;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        isDeviceListEmpty = this.data.user.devices && this.data.user.devices.length > 0 ? false : true;
                        return [4 /*yield*/, this.modalCtrl.create({
                                component: _help_help_page__WEBPACK_IMPORTED_MODULE_3__["HelpPage"],
                                componentProps: {
                                    onboarding: true,
                                    isDeviceListEmpty: isDeviceListEmpty
                                },
                                cssClass: 'transparent-modal',
                                showBackdrop: false
                            })];
                    case 1:
                        modal = _a.sent();
                        modal.onDidDismiss().then(function (data) {
                            //this.setBackButtonSub();
                            console.log('data', data);
                            if (data && data.data && data.data.isDeviceListEmpty) {
                                _this.presentAddDeviceModal();
                            }
                        });
                        return [4 /*yield*/, modal.present()];
                    case 2: return [2 /*return*/, _a.sent()];
                }
            });
        });
    };
    SettingsPage.prototype.presentAddDeviceModal = function (device) {
        return __awaiter(this, void 0, void 0, function () {
            var modal;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.modalCtrl.create({
                            component: _add_device_add_device_page__WEBPACK_IMPORTED_MODULE_4__["AddDevicePage"],
                            componentProps: {
                                device: device ? __assign({}, device) : null
                            }
                        })];
                    case 1:
                        modal = _a.sent();
                        return [4 /*yield*/, modal.present()];
                    case 2: 
                    /*  modal.onDidDismiss().then(() => {
                       this.ionViewWillEnter();
                     }); */
                    return [2 /*return*/, _a.sent()];
                }
            });
        });
    };
    SettingsPage = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["Component"])({
            selector: 'app-settings',
            template: __webpack_require__(/*! ./settings.page.html */ "./src/app/settings/settings.page.html"),
            styles: [__webpack_require__(/*! ./settings.page.scss */ "./src/app/settings/settings.page.scss")]
        }),
        __metadata("design:paramtypes", [_ionic_angular__WEBPACK_IMPORTED_MODULE_0__["NavController"],
            _ionic_angular__WEBPACK_IMPORTED_MODULE_0__["AlertController"],
            _providers___WEBPACK_IMPORTED_MODULE_2__["LocalDatabaseProvider"],
            _providers___WEBPACK_IMPORTED_MODULE_2__["DataProvider"],
            _ionic_angular__WEBPACK_IMPORTED_MODULE_0__["ModalController"]
            // public auth: AuthProvider
        ])
    ], SettingsPage);
    return SettingsPage;
}());



/***/ })

}]);
//# sourceMappingURL=settings-settings-module.js.map