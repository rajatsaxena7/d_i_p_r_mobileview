const admin = require("firebase-admin/app");
admin.initializeApp();

const checkalgorithmdipr = require("./checkalgorithmdipr.js");
exports.checkalgorithmdipr = checkalgorithmdipr.checkalgorithmdipr;
const checktime = require("./checktime.js");
exports.checktime = checktime.checktime;
