# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Codemeta::SoftwareSourceCode do
  describe '#new' do
    # rubocop:disable RSpec/ExampleLength
    it 'creates correct json without optional attributes' do
      software_source_code = described_class.new(
        type: 'SoftwareSourceCode',
        code_repository: 'https://github.com/front-matter/codemeta',
        code_sample_type: 'full solution'
      )

      expect(software_source_code.to_json_struct).to eq(
        '@type' => 'SoftwareSourceCode',
        '@context' => 'http://schema.org',
        'codeRepository' => 'https://github.com/front-matter/codemeta',
        'codeSampleType' => 'full solution'
      )
    end

    it 'creates correct json with string keys' do
      software_source_code = described_class.new(
        '@type' => 'SoftwareSourceCode',
        '@context' => 'http://schema.org',
        'code_repository' => 'https://github.com/front-matter/codemeta',
        'code_sample_type' => 'full solution'
      )

      expect(software_source_code.to_json_struct).to eq(
        '@type' => 'SoftwareSourceCode',
        '@context' => 'http://schema.org',
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
      expect(subject.author.first).to eq('@id' => 'https://orcid.org/0000-0002-7710-2182',
                                         '@type' => 'Person',
                                         'affiliation' => { '@type' => 'Organization',
                                                            'name' => 'Instituto de Instrumentación para Imagen Molecular (I3M), Centro Mixto CSIC — Universitat Politècnica de València, Camino de Vera s/n, 46022 Valencia, España' },
                                         'email' => 'serisgal@i3m.upv.es',
                                         'familyName' => 'Risco',
                                         'givenName' => 'Sebastián')
      expect(subject.date_created).to eq('2018-06-15')
      expect(subject.date_modified).to eq('2022-11-07')
      expect(subject.date_published).to eq('2018-10-01')
      expect(subject.description).to start_with('OSCAR is an open-source platform')
      expect(subject.programming_language).to eq(%w[Go Shell Dockerfile])
      expect(subject.version).to eq('2.5.2')
      expect(subject.license).to eq('https://spdx.org/licenses/Apache-2.0')
    end

    it 'correctly loads ms3 codemeta' do
      input = "#{fixture_path}/codemeta/ms3_codemeta.json"
      subject = described_class.new(input: input)

      expect(subject.type).to eq('SoftwareSourceCode')
      # expect(subject.id).to eq(2)
      expect(subject.name).to eq('ms3')
      expect(subject.code_repository).to eq('git+https://github.com/johentsch/ms3.git')
      expect(subject.author.length).to eq(1)
      expect(subject.author.first).to eq('@id' => 'https://orcid.org/0000-0002-1986-9545',
                                         '@type' => 'Person',
                                         'affiliation' => { '@type' => 'Organization',
                                                            'name' => 'Digital and Cognitive Musicology Lab, École Polytechnique Fédérale de Lausanne' },
                                         'email' => 'johannes.hentschel@epfl.ch',
                                         'familyName' => 'Hentschel',
                                         'givenName' => 'Johannes')
      expect(subject.date_created).to eq('2020-05-03')
      expect(subject.date_modified).to be_nil
      expect(subject.date_published).to eq('2020-07-06')
      expect(subject.description).to start_with('A parser for MuseScore 3 files')
      expect(subject.programming_language).to eq(['Python 3'])
      expect(subject.version).to be_nil
      expect(subject.license).to eq('https://spdx.org/licenses/AGPL-3.0')
    end

    it 'correctly loads uta_engine codemeta' do
      input = "#{fixture_path}/codemeta/uta_engine_codemeta.json"
      subject = described_class.new(input: input)

      expect(subject.type).to eq('SoftwareSourceCode')
      # expect(subject.id).to eq(2)
      expect(subject.name).to eq("utaengine: Routing and aggregation engine for 'Urban Transport Analyst'")
      expect(subject.code_repository).to eq('https://github.com/UrbanAnalyst/uta-engine')
      expect(subject.author.length).to eq(1)
      expect(subject.author.first).to eq('@type' => 'Person',
                                         'email' => 'mark.padgham@email.com',
                                         'familyName' => 'Padgham',
                                         'givenName' => 'Mark')
      expect(subject.date_created).to be_nil
      expect(subject.date_modified).to be_nil
      expect(subject.date_published).to be_nil
      expect(subject.description).to start_with("Routing and aggregation engine for 'Urban Transport Analyst'")
      expect(subject.programming_language).to eq('@type' => 'ComputerLanguage', 'name' => 'R',
                                                 'url' => 'https://r-project.org')
      expect(subject.version).to eq('0.0.1.013')
      expect(subject.license).to eq('https://spdx.org/licenses/GPL-3.0')
    end
    # rubocop:enable RSpec/ExampleLength
  end
end
