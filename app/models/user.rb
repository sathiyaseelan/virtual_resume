class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :omniauthable
  attr_accessor :name , :brand_statement, :summary, :experiences,
                          :skills, :certificates, :recommendations
  mount_uploader :resume, ResumeUploader
end
