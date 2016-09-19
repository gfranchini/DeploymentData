class Form < ApplicationRecord
  validates :server_environment, presence: true
  validates :server_purpose, presence: true
  validates :server_accessibility, presence: true
  validates :project_description, presence: true
  validates :project_name, presence: true

  has_many :servers
  has_many :architectures


  def self.form_counter
    @form_id = Form.last.id
  end


end
