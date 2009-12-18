require 'test_helper'

class TagCreationTest < Test::Unit::TestCase
  context 'A tag instance' do
    setup do
      @tag      = Tag.create(:name=>"Hoge")
      @bad_tag  = Tag.create()
    end
    
    should "be a tag" do
      assert @tag.is_a?(Tag)
    end
    
    should "be valid" do
      assert @tag.valid?
    end
    
    should "require name" do
      assert_not_nil @bad_tag.errors[:name]
    end
    
    should "belong to taggable" do
      assert_not_nil Tag.associations["taggable"]
      assert_equal :belongs_to, Tag.associations["taggable"].type
    end
    
    should "be polymorph" do
      assert Tag.associations["taggable"].options[:polymorphic]
    end
    
  end
end
