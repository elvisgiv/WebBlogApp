require 'rails_helper'

RSpec.describe Post, :type => :model do
  describe "Get /posts" do
  
    it "is valid with a description and user_id" do
      post = build(:post)
      expect(post).to be_valid
    end

    it "is invalid without a description" do
  	  post = build(:post,
  	    description: nil)
  	  expect(post).not_to be_valid
    end

    it "is invalid without a user_id" do
  	  post = build(:post,
	 	user_id: nil)
  	  expect(post).to_not be_valid
    end

    it "has a valid factory" do
  	  user = build(:user)
      expect(user).to be_valid
    end

    it "has a create user post in DB" do
      post = build(:post)
  	  expect{post.save}.to change{Post.count}.by(1)
    end

    it "the post have correct description" do
  	  post = create(:post,
  		description: "foobar")
  	  expect(post.description).to eq("foobar")
    end

    it "has a create user in DB" do
  	  user = build(:user)
      expect{user.save}.to change{User.count}.by(1)
    end
  end

end
