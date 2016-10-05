class Form < ApplicationRecord
   validates :server_environment, presence: true
  # validates :server_purpose, presence: true
  # validates :server_accessibility, presence: true
   validates :application_description, presence: true
   validates :application_name, presence: true

  belongs_to :user, required: false
  has_many :servers
  has_many :architectures
  has_many :load_balancers
  has_many :firewalls
  has_many :deployments


  def self.form_counter
    @form_id = Form.last.id
  end

end
