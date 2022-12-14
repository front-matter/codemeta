# typed: ignore
# frozen_string_literal: true

module Codemeta
  # Model Schema.org `Thing > CreativeWork > SoftwareSourceCode`.
  # @See https://schema.org/SoftwareSourceCode
  class SoftwareSourceCode < SchemaDotOrg::SchemaType
    attr_accessor :code_repository, :code_sample_type, :programming_language,
                  :runtime_platform, :target_product, :about, :abstract,
                  :access_mode, :access_mode_sufficient, :accessibility_api,
                  :accessibility_control, :accessibility_feature,
                  :accessibility_hazard, :accessibility_summary,
                  :additional_type, :alternate_name, :description,
                  :disambiguating_description, :identifier, :image,
                  :main_entity_of_page, :name, :potentialAction, :same_as,
                  :subject_of, :url

    # Properties from SoftwareSourceCode

    # Link to the repository where the un-compiled, human readable code
    # and related code is located (SVN, GitHub, CodePlex).
    validates :code_repository, type: String, presence: true

    # What type of code sample: full (compile ready) solution, code snippet,
    # inline code, scripts, template. Supersedes sampleType.
    validates :code_sample_type, type: String, allow_nil: true

    # The computer programming language.
    validates :programming_language, type: String, allow_nil: true

    # Runtime platform or script interpreter dependencies (example: Java v1,
    # Python 2.3, .NET Framework 3.0). Supersedes runtime.
    validates :runtime_platform, type: String, allow_nil: true

    # Target Operating System / Product to which the code applies. If applies
    # to several versions, just the product name can be used.
    validates :target_product, type: String, allow_nil: true

    # Properties from CreativeWork

    # The subject matter of the content. Inverse property: subjectOf.
    validates :about, type: Codemeta::Thing, allow_nil: true

    # An abstract is a short description that summarizes a CreativeWork.
    validates :abstract, type: String, allow_nil: true

    # The human sensory perceptual system or cognitive faculty through which
    # a person may process or perceive information. Values should be drawn
    # from the approved vocabulary.
    validates :access_mode, type: String, allow_nil: true

    # A list of single or combined accessModes that are sufficient to
    # understand all the intellectual content of a resource. Values should
    # be drawn from the approved vocabulary.
    validates :access_mode_sufficient, type: Array, allow_nil: true

    # Indicates that the resource is compatible with the referenced
    # accessibility API. Values should be drawn from the approved vocabulary.
    validates :accessibility_api, type: String, allow_nil: true

    # Identifies input methods that are sufficient to fully control the
    # described resource. Values should be drawn from the approved vocabulary.
    validates :accessibility_control, type: String, allow_nil: true

    # Content features of the resource, such as accessible media, alternatives
    # and supported enhancements for accessibility. Values should be drawn from
    # the approved vocabulary.
    validates :accessibility_feature, type: String, allow_nil: true

    # A characteristic of the described resource that is physiologically
    # dangerous to some users. Related to WCAG 2.0 guideline 2.3. Values should
    # be drawn from the approved vocabulary.
    validates :accessibility_hazard, type: String, allow_nil: true

    # A human-readable summary of specific accessibility features or
    # deficiencies, consistent with the other accessibility metadata but
    # expressing subtleties such as "short descriptions are present but long
    # descriptions will be needed for non-visual users" or "short descriptions
    # are present and no long descriptions are needed."
    validates :accessibility_summary, type: String, allow_nil: true

    # Properties from Thing

    # An additional type for the item, typically used for adding more specific
    # types from external vocabularies in microdata syntax. This is a
    # relationship between something and a class that the thing is in. In RDFa
    # syntax, it is better to use the native RDFa syntax - the 'typeof'
    # attribute - for multiple types. Schema.org tools may have only weaker
    # understanding of extra types, in particular those defined externally.
    validates :additional_type, type: Codemeta::URL, allow_nil: true

    # An alias for the item.
    validates :alternate_name, type: String, allow_nil: true

    # A description of the item.
    validates :description, type: String, allow_nil: true

    # A sub property of description. A short description of the item used
    # to disambiguate from other, similar items. Information from other
    # properties (in particular, name) may be necessary for the description
    # to be useful for disambiguation.
    validates :disambiguating_description, type: String, allow_nil: true

    # The identifier property represents any kind of identifier for any kind
    #  of Thing, such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides
    # dedicated properties for representing many of these, either as textual
    # strings or as URL (URI) links. See background notes for more details.
    validates :identifier, type: Codemeta::URL, allow_nil: true

    # An image of the item. This can be a URL or a fully described ImageObject.
    validates :image, type: Codemeta::URL, allow_nil: true

    # Indicates a page (or other CreativeWork) for which this thing is the main
    # entity being described. See background notes for details.
    # Inverse property: mainEntity
    validates :main_entity_of_page, type: Codemeta::URL, allow_nil: true

    # The name of the item.
    validates :name, type: String, allow_nil: true

    # Indicates a potential Action, which describes an idealized action in
    #  which this thing would play an 'object' role.
    validates :potentialAction, type: Codemeta::Action, allow_nil: true

    # URL of a reference Web page that unambiguously indicates the item's
    # identity. E.g. the URL of the item's Wikipedia page, Wikidata entry,
    # or official website.
    validates :same_as, type: Codemeta::URL, allow_nil: true

    # A CreativeWork or Event about this Thing. Inverse property: about
    validates :subject_of, type: SchemaDotOrg::CreativeWork, allow_nil: true

    # URL of the item.
    validates :url, type: Codemeta::URL, allow_nil: true

    # rubocop:disable Metrics/MethodLength, Metrics/AbcSize
    def _to_json_struct
      {
        'code_repository' => code_repository,
        'code_sample_type' => code_sample_type,
        'programming_language' => programming_language,
        'runtime_platform' => runtime_platform,
        'target_product' => target_product,
        'about' => about,
        'abstract' => abstract,
        'access_mode' => access_mode,
        'access_mode_sufficient' => access_mode_sufficient,
        'accessibility_api' => accessibility_api,
        'accessibility_control' => accessibility_control,
        'accessibility_feature' => accessibility_feature,
        'accessibility_hazard' => accessibility_hazard,
        'accessibility_summary' => accessibility_summary,
        'additional_type' => additional_type.to_json_struct,
        'alternate_name' => alternate_name,
        'description' => description,
        'disambiguating_description' => disambiguating_description,
        'identifier' => identifier.to_json_struct,
        'image' => image.to_json_struct,
        'main_entity_of_page' => main_entity_of_page.to_json_struct,
        'name' => name,
        'potentialAction' => potentialAction.to_json_struct,
        'same_as' => same_as.to_json_struct,
        'subject_of' => subject_of.to_json_struct,
        'url' => url.to_json_struct
      }
    end
    # rubocop:enable Metrics/MethodLength, Metrics/AbcSize
  end
end
