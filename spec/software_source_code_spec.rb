# frozen_string_literal: true
# typed: ignore

require 'spec_helper'

SoftwareSourceCode = ::Codemeta::SoftwareSourceCode

RSpec.describe SoftwareSourceCode do
  describe '#new' do
    # rubocop:disable RSpec/ExampleLength
    it 'creates correct json without optional attributes' do
      source_code = described_class.new(
        code_repository: 'https://github.com/front-matter/codemeta',
        code_sample_type: 'full solution'
      )

      expect(source_code.to_json_struct).to eq(
        '@type' => 'SoftwareSourceCode',
        'code_repository' => 'https://github.com/front-matter/codemeta',
        'code_sample_type' => 'full solution'
      )
    end
    # rubocop:enable RSpec/ExampleLength
  end
end
