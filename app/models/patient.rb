class Patient < ActiveRecord::Base

has_and_belongs_to_many :addresses

has_many :intakes

has_one :patients_medical_equipment, :dependent=>:destroy
accepts_nested_attributes_for :patients_medical_equipment, :allow_destroy=>true

has_one :patient_history, :dependent=>:destroy
accepts_nested_attributes_for :patient_history, :allow_destroy => true

has_one :disease, :dependent=> :destroy
accepts_nested_attributes_for :disease, :allow_destroy => true
belongs_to :status


validates :last_name, :presence=> true, :length=> { :minimum => 1, :maximum => 50 }
validates :first_name, :presence=> true, :length=> { :minimum => 1, :maximum => 50 }
validates :email, :presence=> true, :uniqueness=> { :case_sensitive => false }, :format => { :with => /[a-zA-Z1-9]+@{1}[a-zA-Z1-9]+.{1}(com|org|biz|net|edu|gov)/ } 
validates :gender, :presence=> true
validates_length_of :gender, :is =>1
validates :height, :presence=> true
validates :weight, :presence=> true
validates :ssn, :presence=> true
validates_length_of :ssn, :is => 9
validates :marital_status, presence: true


  def self.search(ssn, last_name)
    patients = []
    patients += where(:ssn=>ssn)
    patients += where(:last_name=>last_name)
    patients.uniq
    #binding.pry
  end

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.patient_status(patient)
    patient.status_id != 4 ? patient.status_id += 1 : nil
  end

  def status_message
    if status_id.nil? || status_id == 1
      "Patient is Waiting"
    else
      "Patient is with the Dr."
    end
  end


end
