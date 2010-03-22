require 'mongo_mapper'
class Tag 
  include MongoMapper::Document
  belongs_to :taggable, :polymorphic => true
  key :taggable_type, String
  key :taggable_id, ObjectId 
  key :name, String, :required => true 
end