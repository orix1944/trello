class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def levelUp
    self.level += 1
  end

  def degree
    if self.level <= 10
      self.title = "Knight"
    elsif 10 < self.level <= 20
      self.title = "Baron"
    elsif 20 < self.level <= 30
      self.title = "Earl"
    elsif 30 < self.level <= 40
      self.title = "Duke"
    else
      self.title = "Archduke"
    end
    self.save
  end


end
