class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role, :first, :last, :section_id
  # attr_accessible :title, :body

  def admin?
    if (self.role == "admin")
      return true
    else
      return false
    end
  end

  def get_section(s)
    if (s == "Tenor 1")
      return "T1"
    elsif (s == "Tenor 2")
      return "T2"
    elsif (s == "Baritone")
      return "B1"
    elsif (s == "Bass")
      return "B2"
    end
  end
end
