module Taggable
  module InstanceMethods
    def tag_list
      tags.collect(&:name).join(",")
    end
 
    def tag_list=(tag_str)
      self.tags = []
      split_tags.collect {|n| self.tags << Tag.find_or_create_by_name(n)}
    end
  end
  
  protected
    def split_tags tag_str
      return [] if tag_str.empty?
      tag_str.split(",")
    end
  
  def self.included klass
    klass.class_eval do
      many :tags, :as => :taggable
      include InstanceMethods
    end
  end
end