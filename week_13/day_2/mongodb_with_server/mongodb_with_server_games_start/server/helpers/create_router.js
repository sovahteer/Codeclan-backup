const express = require('express');
const ObjectID = require('mongodb').ObjectID;


const createRouter = function (collection) {

  const router = express.Router();

  //INDEX
  router.get('/', (req, res) => {
    collection
    .find()
    .toArray()
    .then((docs)=>{
      res.json(docs);
    })
  });

  //SHOW
  router.get('/:id', (req, res) => { 
    const id = req.params.id;
    collection
    .findOne( { _id: ObjectID(id) })
    .then((docs)=>{
      res.json(docs);
    })
  });

  //CREATE
  router.post('/', (req, res) => {
    const newData = req.body;
    collection
    .insertOne(newData)
    .then(() => collection.find().toArray())
    .then((docs)=> res.json(docs))
    });


  //DESTROY
  router.delete('/:id', (req, res) => {
    const id = req.params.id;
    collection
    .deleteOne({ _id: ObjectID(id) })
    .then(() => collection.find().toArray())
    .then((docs)=> res.json(docs))
  });

  //UPDATE
  router.put('/:id', (req, res) => {
    const id = req.params.id;
    const updatedBody = req.body;
    collection
    .updateOne(
      { _id: ObjectID(id) }, 
      { $set: updatedBody })
    .then(() => collection.find().toArray())
    .then((docs)=> res.json(docs))
  });
  
  return router;

};

module.exports = createRouter;
