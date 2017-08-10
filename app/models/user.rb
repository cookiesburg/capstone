class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable 
  
  def cooker
    Cooker.find_by_user_id(self.id)
  end

  def eater
    Eater.find_by_user_id(self.id)
  end

end
