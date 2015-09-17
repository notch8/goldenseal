require 'rails_helper'

describe WorkShowPresenter do
  let(:presenter) { described_class.new(solr_doc, ability) }
  let(:ability) { nil }
  let(:solr_doc) { SolrDocument.new(attributes) }

  describe "tei_id" do
    let(:attributes) { { 'hasEncodedText_ssim' => ['1234'] } }
    subject { presenter.tei_id }
    it { is_expected.to eq '1234' }
  end

  describe "height" do
    let(:attributes) { { 'height_is' => 7777 } }
    subject { presenter.height }
    it { is_expected.to eq 7777 }
  end

  describe "width" do
    let(:attributes) { { 'width_is' => 888 } }
    subject { presenter.width }
    it { is_expected.to eq 888 }
  end

  describe "mime_type" do
    let(:attributes) { { 'mime_type_tesim' => ['image/jp2'] } }
    subject { presenter.mime_type }
    it { is_expected.to eq 'image/jp2' }
  end

  describe "filename" do
    let(:attributes) { { 'label_ssi' => 'frog.png' } }
    subject { presenter.filename }
    it { is_expected.to eq 'frog.png' }
  end
end
