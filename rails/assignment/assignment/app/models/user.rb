class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def self.search(search)
    if search
      user_type = User.find_by(first_name: search)
      if user_type
        self.where(user_id: user_type)
      else 
        @users = User.all  
      end 
    else  
      @users = User.all  
    end 
  end
  FAVOURITE_MUSIC = %i[hip-hop jazz pop]
end
