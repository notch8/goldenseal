# Generated via
#  `rails generate curation_concerns:work Document`

class CurationConcerns::DocumentsController < ApplicationController
  include CurationConcerns::CurationConcernController
  set_curation_concern_type Document
end
