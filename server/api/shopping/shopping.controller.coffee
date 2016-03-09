'use strict'

_ = require 'lodash'
Shopping = require './shopping.model'

# Get list of shoppings
exports.index = (req, res) ->
  Shopping.find (err, shoppings) ->
    return handleError res, err  if err
    res.status(200).json shoppings

# Get a single shopping
exports.show = (req, res) ->
  Shopping.findById req.params.id, (err, shopping) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not shopping
    res.json shopping

# Creates a new shopping in the DB.
exports.create = (req, res) ->
  Shopping.create req.body, (err, shopping) ->
    return handleError res, err  if err
    res.status(201).json shopping

# Updates an existing shopping in the DB.
exports.update = (req, res) ->
  delete req.body._id  if req.body._id
  Shopping.findById req.params.id, (err, shopping) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not shopping
    updated = _.merge shopping, req.body
    updated.save (err) ->
      return handleError res, err  if err
      res.status(200).json shopping

# Deletes a shopping from the DB.
exports.destroy = (req, res) ->
  Shopping.findById req.params.id, (err, shopping) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not shopping
    shopping.remove (err) ->
      return handleError res, err  if err
      res.status(204).send 'No Content'

handleError = (res, err) ->
  res.status(500).send err
