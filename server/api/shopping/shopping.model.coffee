'use strict'

mongoose = require 'mongoose'
Schema = mongoose.Schema

ShoppingSchema = new Schema
  name: String
  info: String
  active: Boolean

module.exports = mongoose.model 'Shopping', ShoppingSchema,  'shopping'
