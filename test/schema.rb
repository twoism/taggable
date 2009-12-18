MongoMapper.connection = Mongo::Connection.new('127.0.0.1')
MongoMapper.database = "testing_versioned"

class Doc
  include MongoMapper::Document
  include Taggable
  key :name, String, :required => true
  timestamps!
end

Doc.destroy_all
Tag.destroy_all