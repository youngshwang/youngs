'use strict'

mongoose = require 'mongoose'
Schema = mongoose.Schema

PostSchema = new Schema {
  pid: Number
  title: String
  imglist: [{no: Number, link: String, desc: String, size: String}]
  newslist: [{company: String, title: String, desc: String}]
},
  toObject:
    virtuals: true
  toJSON:
    virtuals: true


PostSchema.virtual('postlist').get ->
  pid: @pid
  title: @title

PostSchema.path('pid').validate ((value, resp) ->
  self = this
  @constructor.findOne
    pid: value
  , (err, post) ->
    throw err if err
    if post
      return resp(true) if self.id is post.id
      return respond(false)
    resp true
), 'pid is already in use'

module.exports = mongoose.model 'Post', PostSchema, 'postinfo'
