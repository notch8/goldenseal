class TextIndexer < ActiveFedora::IndexingService
  TEI_JSON = 'tei_json_ss'

  def generate_solr_document
    super do |solr_doc|
      solr_doc[TEI_JSON] = JSON.generate(tei_as_json) if object.tei
    end
  end

  def tei_as_json
    # OPTIMIZE: this could be indexed on the GenericFile which
    # so that every index call wouldn't have to load the tei file.
    TEIConverter.new(object.tei.original_file.content, object).to_json
  end
end
