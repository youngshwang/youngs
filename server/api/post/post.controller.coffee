'use strict'

_ = require 'lodash'
Post = require './post.model'

# Get list of posts
exports.index = (req, res) ->
  Post.find (err, posts) ->
    return handleError res, err  if err
    res.status(200).json posts

# Get a single post
exports.show = (req, res) ->
#  Post.findById req.params.id, (err, post) ->
  Post.findOne {pid: req.params.id}, (err, doc) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not doc
    Post.find {pid: {$lte: req.params.id + 5}}, {pid: 1, title: 1}
    .limit 10
    .exec (err, list) ->
      return handleError res, err  if err
      res.json {data: doc, list: list}

# Creates a new post in the DB.
exports.create = (req, res) ->
  Post.create req.body, (err, post) ->
    return handleError res, err  if err
    res.status(201).json post

# Updates an existing post in the DB.
exports.update = (req, res) ->
  delete req.body._id  if req.body._id
  Post.findById req.params.id, (err, post) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not post
    updated = _.merge post, req.body
    updated.save (err) ->
      return handleError res, err  if err
      res.status(200).json post

# Deletes a post from the DB.
exports.destroy = (req, res) ->
  Post.findById req.params.id, (err, post) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not post
    post.remove (err) ->
      return handleError res, err  if err
      res.status(204).send 'No Content'

handleError = (res, err) ->
  res.status(500).send err
