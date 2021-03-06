'use strict'

express = require 'express'
controller = require './post.controller'
auth = require '../../auth/auth.service'

router = express.Router()

router.get '/', controller.index
router.get '/:id', controller.show
router.post '/', auth.hasRole('admin'), controller.create
router.put '/:id', auth.hasRole('admin'), controller.update
router.patch '/:id', auth.hasRole('admin'), controller.update
router.delete '/:id', auth.hasRole('admin'), controller.destroy

module.exports = router
