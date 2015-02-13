class User < ActiveRecord::Base
  has_many :posts,    dependent: :destroy
  has_many :comments, dependent: :destroy
  #has_many :comments
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessor :name
end
