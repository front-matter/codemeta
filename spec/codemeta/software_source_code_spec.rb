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
    # rubocop:enable RSpec/ExampleLength
  end
end
