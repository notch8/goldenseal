# Import Text records using metadata from TEI files.
module Import
  class TextImporter < CommonImporter

    # The type of record(s) this importer will create
    def record_class
      Text
    end

    def parser
      TextTeiParser
    end

  end
end
