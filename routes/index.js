var express = require('express');
var router = express.Router();


config = require('../config');
configLocal = require('../config.local');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'IOOS OSMC', googleAnalyticsID: config.googleAnalyticsID });
});

module.exports = router;
