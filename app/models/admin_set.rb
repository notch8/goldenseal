class AdminSet < ActiveFedora::Base
  include Hydra::AccessControls::Permissions
  include CurationConcerns::HumanReadableType
  include CurationConcerns::HasRepresentative
  include SpotlightExhibitable

  self.human_readable_type = 'Administrative Collection'

  has_many :members,
    predicate: ::RDF::Vocab::DC.isPartOf,
    class_name: "ActiveFedora::Base"

  validates :title, presence: { message: 'Your collection must have a title.' }
  validates :identifier, presence: { message: 'Your collection must have an identifier.' }
  validates_format_of :identifier, with: /\A(\w|-|.)+\z/

  property :title, predicate: ::RDF::DC.title, multiple: false do |index|
    index.as :stored_searchable
  end

  property :identifier, predicate: ::RDF::DC.identifier, multiple: false do |index|
    index.as :stored_sortable
  end

  property :description, predicate: ::RDF::DC.description, multiple: false do |index|
    index.as :stored_searchable
  end

  property :contributor, predicate: ::RDF::DC.contributor do |index|
    index.as :stored_searchable
  end

  property :creator, predicate: ::RDF::DC.creator do |index|
    index.as :stored_searchable
  end

  property :subject, predicate: ::RDF::DC.subject do |index|
    index.as :stored_searchable
  end

  property :publisher, predicate: ::RDF::DC.publisher do |index|
    index.as :stored_searchable
  end

  property :language, predicate: ::RDF::DC.language do |index|
    index.as :stored_searchable
  end

  before_create :assign_access
  before_destroy :destroy_spotlight_exhibit

  def assign_access
    self.read_groups += ['public']
  end

  def destroy_spotlight_exhibit 
    spotlight_exhibit_query.destroy_all
  end

  def self.indexer
    AdminSetIndexer
  end

  def default_filter_field
    "admin_set_ssi"
  end

  private
  def spotlight_exhibit_query
    Spotlight::Exhibit
      .where(exhibitable_id: self.id)
      .where(exhibitable_type: 'AdminSet')
  end
end
