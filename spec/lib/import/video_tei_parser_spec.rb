require 'rails_helper'
require 'import'

describe Import::VideoTeiParser do
  let(:add_tei) { File.join(fixture_path, 'tei', 'add14885.01250.032.xml') }

  describe 'initialize' do
    subject { described_class.new(add_tei) }

    it 'sets the file' do
      expect(subject.file).to eq add_tei
    end
  end

  describe '#attributes' do
    subject { parser.attributes }

    context 'when it successfully parses the file' do
      let(:parser) { described_class.new(add_tei) }

      it 'gets the attributes for the record from the TEI file' do
        expect(subject[:title]).to eq ['Interview with Frank Addonizio', '[electronic resource]']
      end
    end
  end
end