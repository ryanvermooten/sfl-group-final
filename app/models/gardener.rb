class Gardener < ActiveRecord::Base
  belongs_to :group
  has_many :attendance_registers_training_sessions
  has_many :attendance_registers, through: :attendance_registers_training_sessions
  has_many :support_visits
  has_one :follow_up_visit
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
  has_one :follow_up_visit_garden
  has_one :follow_up_visit_eating
  has_one :follow_up_visit_selling
  has_one :follow_up_visit_impression
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
validates :first_name, length: {minimum: 2, too_short: "First name needs at least 2 characters"}
validates :last_name , length: {minimum: 2, too_short: "Last name needs at least 2 characters"}
validates :contact_number, length: {minimum: 9, too_short: "Contact numbers need to have 10 characters", maximum: 11, too_long: "Contact numbers need to have 10 characters" }
validates :address , length: {minimum: 4, too_short: "Address needs at least 4 characters"}
validates :id_number, :length => { :is => 13, 
    :too_short => "must have at least %{count} words",
    :too_long  => "must have at most %{count} words"},
    :uniqueness => true
validates :race, :presence => true
end
 
  #mount_uploader :image, ImageUploader

  def active?
    status == 'active'
  end

