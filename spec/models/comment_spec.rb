require 'rails_helper'

RSpec.describe Comment, :type => :model do
  describe "Get /comments" do
  
    it "is valid with a content, post_id and user_id" do
      cmt = build(:comment)
      expect(cmt).to be_valid
    end

    it "is invalid without a content" do
      cmt = build(:comment,
        content: nil)
      expect(cmt).not_to be_valid
    end

    it "is invalid without a post_id" do
      cmt = build(:comment,
        post_id: nil)
      expect(cmt).not_to be_valid
    end

    it "is invalid without a user_id" do
      cmt = build(:comment,
        user_id: nil)
      expect(cmt).not_to be_valid
    end

    it "has a create user comment in DB" do
      cmt = build(:comment)
      expect{cmt.save}.to change{Comment.count}.by(1)
    end

    it "the comment have correct content" do
      cmt = create(:comment,
      content: "foobar")
      expect(cmt.content).to eq("foobar")
    end

  end

end
