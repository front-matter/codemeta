# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Codemeta::SoftwareSourceCode do
  describe '#new' do
    # rubocop:disable RSpec/ExampleLength
    it 'creates correct json without optional attributes' do
      software_source_code = described_class.new(
        code_repository: 'https://github.com/front-matter/codemeta',
        code_sample_type: 'full solution'
      )

      expect(software_source_code.to_json_struct).to eq(
        '@type' => 'SoftwareSourceCode',
        'codeRepository' => 'https://github.com/front-matter/codemeta',
        'codeSampleType' => 'full solution'
      )
    end

    it 'creates correct json with string keys' do
      software_source_code = described_class.new(
        'code_repository' => 'https://github.com/front-matter/codemeta',
        'code_sample_type' => 'full solution'
      )

      expect(software_source_code.to_json_struct).to eq(
        '@type' => 'SoftwareSourceCode',
        'codeRepository' => 'https://github.com/front-matter/codemeta',
        'codeSampleType' => 'full solution'
      )
    end

    it 'correctly loads oscar codemeta' do
      input = "#{fixture_path}/codemeta/oscar_codemeta.json"
      subject = described_class.new(input: input)

      expect(subject.type).to eq('SoftwareSourceCode')
      # expect(subject.id).to eq(2)
      expect(subject.name).to eq('OSCAR')
      expect(subject.code_repository).to eq('https://github.com/grycap/oscar')
      expect(subject.author.length).to eq(7)
      expect(subject.author.first).to eq("@id" => "https://orcid.org/0000-0002-7710-2182",
        "@type" => "Person",
        "affiliation" => {"@type"=>"Organization", "name"=>"Instituto de Instrumentación para Imagen Molecular (I3M), Centro Mixto CSIC — Universitat Politècnica de València, Camino de Vera s/n, 46022 Valencia, España"},
        "email" => "serisgal@i3m.upv.es",
        "familyName" => "Risco",
        "givenName" => "Sebastián")
      expect(subject.programming_language).to eq(["Go", "Shell", "Dockerfile"])
      expect(subject.version).to eq('2.5.2')
    end

    it 'correctly loads ms3 codemeta' do
      input = "#{fixture_path}/codemeta/ms3_codemeta.json"
      subject = described_class.new(input: input)

      expect(subject.type).to eq('SoftwareSourceCode')
      # expect(subject.id).to eq(2)
      expect(subject.name).to eq('ms3')
      expect(subject.code_repository).to eq('git+https://github.com/johentsch/ms3.git')
      expect(subject.author.length).to eq(1)
      expect(subject.author.first).to eq("@id" => "https://orcid.org/0000-0002-1986-9545",
        "@type" => "Person",
        "affiliation" => {"@type"=>"Organization", "name"=>"Digital and Cognitive Musicology Lab, École Polytechnique Fédérale de Lausanne"},
        "email" => "johannes.hentschel@epfl.ch",
        "familyName" => "Hentschel",
        "givenName" => "Johannes")
      expect(subject.programming_language).to eq(["Python 3"])
      expect(subject.version).to be nil
    end
    # rubocop:enable RSpec/ExampleLength
  end
end
