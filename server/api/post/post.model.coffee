'use strict'

mongoose = require 'mongoose'
Schema = mongoose.Schema

PostSchema = new Schema
  pid: Number
  title: String
  imglist: [{no: Number, link: String, desc: String, size: String}]
  newslist: [{company: String, title: String, desc: String}]

module.exports = mongoose.model 'Post', PostSchema, 'postinfo'
