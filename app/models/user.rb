class User < ApplicationRecord
  ratyrate_rater
  after_initialize :set_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         has_many :jobs, :foreign_key => 'company_id' 
  enum role: [:user, :company, :admin]
  def set_default_role
    self.role ||= :user
end
end
