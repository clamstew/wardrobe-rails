require 'spec_helper'

describe WardrobeItemsController do
  describe "GET index" do
    it "assigns all wardrobe items as @wardrobe_items" do
      wardrobe_item = WardrobeItem.create
      get :index

      expect(assigns('wardrobe_items')).to eq([wardrobe_item])
    end

    # NB - this is a view test and should be elsewhere in rspec
    it "returns all wardrobe items as json" do
      wardrobe_item = WardrobeItem.create
      get :index, :format => :json

      response.body.should == [wardrobe_item].to_json
    end
  end

  describe "GET show" do
    it "assigns one wardrobe item as @wardrobe_item" do
      wardrobe_item = WardrobeItem.create
      get :show, { :id => wardrobe_item }

      expect(assigns('wardrobe_item')).to eq(wardrobe_item)
    end

    # NB - this is a view test and should be elsewhere in rspec
    it "returns one wardrobe items as json" do
      wardrobe_item = WardrobeItem.create
      get :show, { :id => wardrobe_item, :format => :json }

      response.body.should == wardrobe_item.to_json
    end
  end
end
