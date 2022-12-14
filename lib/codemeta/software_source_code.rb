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
                  :accessibility_hazard, :accessibility_summary

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

    # rubocop:disable Metrics/MethodLength
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
        'accessibility_summary' => accessibility_summary
      }
    end
    # rubocop:enable Metrics/MethodLength
  end
end
