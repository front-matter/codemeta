# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Codemeta::Thing do
  describe '#new' do
    it 'creates correct json without optional attributes' do
      thing = described_class.new(name: 'Schema.org Ontology')

      expect(thing.to_json_struct).to eq('@type' => 'Thing', 'name' => 'Schema.org Ontology')
    end
  end
end
