(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["about-about-module"],{

/***/ "./src/app/about/about.module.ts":
/*!***************************************!*\
  !*** ./src/app/about/about.module.ts ***!
  \***************************************/
/*! exports provided: AboutPageModule */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AboutPageModule", function() { return AboutPageModule; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_common__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/common */ "./node_modules/@angular/common/fesm5/common.js");
/* harmony import */ var _angular_forms__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/forms */ "./node_modules/@angular/forms/fesm5/forms.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");
/* harmony import */ var _ionic_angular__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @ionic/angular */ "./node_modules/@ionic/angular/dist/fesm5.js");
/* harmony import */ var _about_page__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ./about.page */ "./src/app/about/about.page.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};






var routes = [
    {
        path: '',
        component: _about_page__WEBPACK_IMPORTED_MODULE_5__["AboutPage"]
    }
];
var AboutPageModule = /** @class */ (function () {
    function AboutPageModule() {
    }
    AboutPageModule = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["NgModule"])({
            imports: [
                _angular_common__WEBPACK_IMPORTED_MODULE_1__["CommonModule"],
                _angular_forms__WEBPACK_IMPORTED_MODULE_2__["FormsModule"],
                _ionic_angular__WEBPACK_IMPORTED_MODULE_4__["IonicModule"],
                _angular_router__WEBPACK_IMPORTED_MODULE_3__["RouterModule"].forChild(routes)
            ],
            declarations: [_about_page__WEBPACK_IMPORTED_MODULE_5__["AboutPage"]]
        })
    ], AboutPageModule);
    return AboutPageModule;
}());



/***/ }),

/***/ "./src/app/about/about.page.html":
/*!***************************************!*\
  !*** ./src/app/about/about.page.html ***!
  \***************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<ion-header>\n  <ion-toolbar color=\"primary\">\n    <ion-buttons slot=\"start\">\n      <ion-back-button></ion-back-button>\n    </ion-buttons>\n    <ion-title>About</ion-title>\n  </ion-toolbar>\n</ion-header>\n<ion-content padding>\n  <ion-grid>\n    <ion-row justify-content-center margin-top>\n      <img src=\"assets/images/logo_large.png\" alt=\"\" class=\"logo-image\">\n    </ion-row>\n    <ion-row justify-content-center margin-top>\n      <p>Version: {{ version }}&nbsp;&nbsp;</p>\n      <p>&copy; 2019 Streamsave Ltd</p>\n      <p></p>\n      <p></p>\n    </ion-row>\n    <ion-row margin-top>\n      <div style=\"font-size:0.8em\">\n      <h4>Privacy policy</h4>\n      <p>Last updated: 24.4.2019</p>\n      <h4>1. Controller of the register</h4>\n      <p>Streamsave Ltd. (Business ID: 2768248-6)</p>\n      <p>Lehmuskuja 4, 90460 Oulunsalo</p>\n      <p>Finland</p>\n      <p>Questions regarding the privacy policy and how we handle your personal data can be sent to info@streamsave.fi.</p>\n      <h4>2. Name of register</h4>\n      <p>Streamsave Ltd’s customer and marketing register</p>\n      <h4>3. Who is the controller of your personal data?</h4>\n      <p>Teppo Syrjälä, teppo.syrjala@streamsave.fi</p>\n      <h4>4. Who can access your data?</h4>\n      <p>Customer information can only be accessed by Streamsave’s own employees or by entities expressly authorised by the company in connection with Streamsave’s business operations. Our staff is trained to use the information safely and ethically.</p>\n      <h4>5. Purposes of processing personal data</h4>\n      <p>The purposes of processing personal data are:</p>\n      <p>- customer service as well as managing and developing customer relationships</p>\n      <p>- handling orders, delivering products and ensuring product safety and quality</p>\n      <p>- customer communications, including but not limited to newsletters and marketing communications</p>\n      <p>- tracking and analysing product purchasing behaviour as well as segmenting customers</p>\n      <h4>6. Data content of the register</h4>\n      <p>Depending on the product acquired by the customer, some or all of the following personal data, given by the customer, are stored in the register:</p>\n      <p>- first and last name (regarding corporate customers: the contact person of the company)</p>\n      <p>- contact information, such as postal address, email address and phone number</p>\n      <p>- payment details and other billing information</p>\n      <h4>7. What data we collect and how we protect your data?</h4>\n      <p>All personal information is protected from unauthorized access, accidental or unlawful destruction, alteration, disclosure, transfer or other unlawful processing.</p>\n      <p>Streamsave stores customer information in Finland. The data center and technical security of the trading systems, as well as the security of the processes are at a very high level. Servers are protected against intrusions and denial of service attacks.</p>\n      <h4>8. Where do we store your data?</h4>\n      <p>Data on web pages is collected in databases that are protected by firewalls, passwords and other technical means. We keep the data for the time being. Mobile app data is saved only locally to your phone.</p>\n      <p>Data can be removed from the register during registry cleanings which are done at intervals in accordance with the current practice.</p>\n      <p>Streamsave Ltd. complies with the EU-U.S. Privacy Shield Framework and Swiss-U.S. Privacy Shield Framework as set forth by the U.S. Department of Commerce regarding the collection, use, and retention of personal information transferred from the European Union and Switzerland to the United States.</p>\n      <p>To learn more about the Privacy Shield program, and to view our certification, please visit: https://www.privacyshield.gov/</p>\n      <h4>9. What is the legal ground for processing?</h4>\n      <p>For every specific processing of personal data we collect from you we will inform you whether the provision of personal data is statutory or required to enter a contract and whether it is an obligation to provide the personal data and possible consequences if you choose not to.</p>\n      <h4>10. What are your rights?</h4>\n      <p>Right to access:</p>\n      <p>You have the right to request information about the personal data we hold on you at any time and receive a copy of that data.</p>\n      <p>You can contact Streamsave that will provide you with your personal data via e-mail.</p>\n      <p>You have the right to request to correct or delete your personal data.</p>\n      <p>You have the right to require, under certain conditions, restriction of processing or decline to agree to the processing of personal data.</p>\n      <p>The data subject has the right to prohibit the controller from processing data concerning him / her for direct marketing, distance selling and other direct marketing and market and opinion surveys. The request is made via the contact form on Streamsave website. The request is handled by the entity mentioned in section 3.</p>\n      <h4>11. Who should I contact?</h4>\n      <p>All enquiries and requests regarding this privacy policy should be made by writing an email to the contact person specified in section three (3).</p>\n      <h4>12. Cookies</h4>\n      <p>Streamsave uses cookies. The website sends to the browser cookies – small text files that are stored on your computer’s hard drive. Cookies allow us to recognise your browser and to use this information to, for example, count the browsers used to visit our website and to analyse and statistically monitor the use of our site. They also allow us to track and monitor the interests of our visitors, and to use this information to improve the site. All information collected is anonymous, and none of the online activities can be linked to a specific individual.</p>\n      <p>Most Internet browsers automatically accept cookies but, if you want to, you can modify the settings of your browser and at any time disable the cookies. You can avoid cookies by modifying the settings in your web browser and banning their use. Advertising cookies help us to ensure that our ads are as relevant and interesting to you as possible.</p>\n      <h4>Google Analytics</h4>\n      <p>The site and mobile app uses Google Analytics user reporting. Anonymous visitor statistics are based on purely technical information provided by your browser and your Internet connection, and this statistic does not provide information about the visitor as a person. In addition to technical statistics, demographic and thematic reporting collects personal target audience information such as age and gender, as well as thematic information about interests.</p>\n      <p>Reports let us see how many of your site users visit the site during a given period and how their behavior varies by gender, for example.</p>\n      <p>Report information can be obtained from DoubleClick’s third party cookie. If a cookie is not associated with a user the target group information and topics cannot be deduced from the statistics. The site uses collected target group and topic reporting information to design topics to provide readers with interesting articles. Google Analytics can be disabled by using the browser extension.</p>\n      </div>\n    </ion-row>\n  </ion-grid>\n</ion-content>"

/***/ }),

/***/ "./src/app/about/about.page.scss":
/*!***************************************!*\
  !*** ./src/app/about/about.page.scss ***!
  \***************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IiIsImZpbGUiOiJzcmMvYXBwL2Fib3V0L2Fib3V0LnBhZ2Uuc2NzcyJ9 */"

/***/ }),

/***/ "./src/app/about/about.page.ts":
/*!*************************************!*\
  !*** ./src/app/about/about.page.ts ***!
  \*************************************/
/*! exports provided: AboutPage */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AboutPage", function() { return AboutPage; });
/* harmony import */ var _ionic_angular__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @ionic/angular */ "./node_modules/@ionic/angular/dist/fesm5.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _ionic_native_app_version_ngx__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @ionic-native/app-version/ngx */ "./node_modules/@ionic-native/app-version/ngx/index.js");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



var AboutPage = /** @class */ (function () {
    function AboutPage(platform, appVersion) {
        this.platform = platform;
        this.appVersion = appVersion;
    }
    AboutPage.prototype.ngOnInit = function () {
        var _this = this;
        this.platform.ready().then(function () {
            if (_this.platform.is('cordova')) {
                _this.appVersion.getVersionNumber().then(function (version) {
                    _this.version = version;
                });
            }
            else {
                _this.version = '1.0.0';
            }
        });
    };
    AboutPage = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["Component"])({
            selector: 'app-about',
            template: __webpack_require__(/*! ./about.page.html */ "./src/app/about/about.page.html"),
            styles: [__webpack_require__(/*! ./about.page.scss */ "./src/app/about/about.page.scss")]
        }),
        __metadata("design:paramtypes", [_ionic_angular__WEBPACK_IMPORTED_MODULE_0__["Platform"],
            _ionic_native_app_version_ngx__WEBPACK_IMPORTED_MODULE_2__["AppVersion"]])
    ], AboutPage);
    return AboutPage;
}());



/***/ })

}]);
//# sourceMappingURL=about-about-module.js.map