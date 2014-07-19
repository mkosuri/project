class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

   ROLES = ['Super Admin','Admin','NRC Reacher']
   
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
