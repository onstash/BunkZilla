class Bunk < ActiveRecord::Base
	validates_presence_of :subjectname, :bunk, :total
	validates_uniqueness_of :subjectname

	belongs_to :user
	validates_presence_of :user
end
