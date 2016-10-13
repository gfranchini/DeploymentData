class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :forms
  has_many :servers,  through: :forms
  has_many :architectures, through: :forms
  has_many :firewalls, through: :forms
  has_many :deployments, through: :forms
  has_many :certificates, through: :forms
  has_many :accesses, through: :forms

end
