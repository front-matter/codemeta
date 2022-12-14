# frozen_string_literal: true
# typed: ignore

require 'spec_helper'
require 'codemeta/software_source_code'

SoftwareSourceCode = Codemeta::SoftwareSourceCode

RSpec.describe SoftwareSourceCode do
  describe '#new' do
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
  end
end
