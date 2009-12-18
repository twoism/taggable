require 'test_helper'

class TagAssignmentTest < Test::Unit::TestCase
  context 'A taggable document' do
    
    setup do
      @tag = Tag.create(:name=>"Hoge")
      @tag2 = Tag.create(:name=>"Fuga")
      
      @doc = Doc.create(:name=>"Piyo")
      @doc.tags << @tag
      @doc.tags << @tag2
    end
    
    should "contain the tag" do
      assert_contains @doc.tags, @tag
    end
    
    should "have the proper tag list" do
      assert_equal("Hoge,Fuga", @doc.tag_list)
    end
    
    should "find doc by tag" do
      #assert_contains @doc, Doc.find(:conditions=>{"tags.name"=>/hoge/i})
    end
    
  end
end
