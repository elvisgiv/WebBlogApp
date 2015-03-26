class User < ActiveRecord::Base
  has_many :posts,    dependent: :destroy
  has_many :comments, dependent: :destroy
  #has_many :comments
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#", :small => "50x50#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #attr_accessor :name
end
