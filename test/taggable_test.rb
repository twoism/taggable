require 'test_helper'

class TaggableTest < Test::Unit::TestCase
  context 'A taggable instance' do
    setup do
      @doc      = Doc.create(:name=>"Hoge")
      @tag_str  = "hoge, fuga, piyo"
    end
    
    should "have the correct assoc" do
      assert_not_nil Doc.associations["tags"]
    end
    
    should "have many tags" do
      assert_equal :many, Doc.associations["tags"].type
    end
    
    should "respond to" do
      [:tag_list,:tag_list=].each {|m| assert @doc.respond_to?(m) }
    end
    
    should "return []" do
      assert_equal [], @doc.split_tags("")
    end
    
    should "return proper array" do
      assert_equal ["hoge","fuga","piyo"], @doc.split_tags(@tag_str)
    end
  end
end
