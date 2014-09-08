class Gardener < ActiveRecord::Base
  belongs_to :group
  has_many :attendance_registers_training_sessions
  has_many :attendance_registers, through: :attendance_registers_training_sessions
  has_many :support_visits
  has_one :garden
  has_one :living_arrangement
  has_one :sfl
  has_one :education
  has_one :employment
  has_one :grant
  has_one :ability
  has_one :expense
  has_one :experience
  has_one :health
  has_one :general_statement
  has_one :previous_experience
  has_one :expenditure
  has_one :follow_up_vist
  #has_many :documents
 # has_attached_file :avatar, :styles => {:thumb => "100x100>"}
 # validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  has_attached_file :avatar,
	:storage => :dropbox,
	:dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
	:styles => { :medium => "300x300>", :thumb => "100x100>" },
	 :default_url => "/images/missing_pic.jpeg",
  	:dropbox_options => {       
	:path => proc { |style| "#{style}/#{id}_#{avatar.original_filename}"},       
	:unique_filename => true   
}
validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
 
  #mount_uploader :image, ImageUploader

  def active?
    status == 'active'
  end

