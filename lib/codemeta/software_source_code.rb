# frozen_string_literal: true

require_relative 'utils'

module Codemeta
  # Model Schema.org `Thing > CreativeWork > SoftwareSourceCode`.
  # @See https://schema.org/SoftwareSourceCode

  # rubocop:disable Metrics/ClassLength
  class SoftwareSourceCode
    include Codemeta::Utils

    # @dynamic code_repository, code_sample_type, programming_language,

    # Properties from SoftwareSourceCode

    # Computer programming source code. Example: Full (compile ready)
    # solutions, code snippet samples, scripts, templates.
    attr_reader :type

    # Link to the repository where the un-compiled, human readable code
    # and related code is located (SVN, GitHub, CodePlex).
    attr_accessor :code_repository

    # What type of code sample: full (compile ready) solution, code snippet,
    # inline code, scripts, template. Supersedes sampleType.
    attr_accessor :code_sample_type

    # The computer programming language.
    attr_accessor :programming_language

    # Runtime platform or script interpreter dependencies (example: Java v1,
    # Python 2.3, .NET Framework 3.0). Supersedes runtime.
    attr_accessor :runtime_platform

    # Target Operating System / Product to which the code applies. If applies
    # to several versions, just the product name can be used.
    attr_accessor :target_product

    # Properties from CreativeWork

    # The subject matter of the content. Inverse property: subjectOf.
    attr_accessor :about

    # An abstract is a short description that summarizes a CreativeWork.
    attr_accessor :abstract

    # The human sensory perceptual system or cognitive faculty through which
    # a person may process or perceive information. Values should be drawn
    # from the approved vocabulary.
    attr_accessor :access_mode

    # A list of single or combined accessModes that are sufficient to
    # understand all the intellectual content of a resource. Values should
    # be drawn from the approved vocabulary.
    attr_accessor :access_mode_sufficient

    # Indicates that the resource is compatible with the referenced
    # accessibility API. Values should be drawn from the approved vocabulary.
    attr_accessor :accessibility_api

    # Identifies input methods that are sufficient to fully control the
    # described resource. Values should be drawn from the approved vocabulary.
    attr_accessor :accessibility_control

    # Content features of the resource, such as accessible media, alternatives
    # and supported enhancements for accessibility. Values should be drawn from
    # the approved vocabulary.
    attr_accessor :accessibility_feature

    # A characteristic of the described resource that is physiologically
    # dangerous to some users. Related to WCAG 2.0 guideline 2.3. Values should
    # be drawn from the approved vocabulary.
    attr_accessor :accessibility_hazard

    # A human-readable summary of specific accessibility features or
    # deficiencies, consistent with the other accessibility metadata but
    # expressing subtleties such as "short descriptions are present but long
    # descriptions will be needed for non-visual users" or "short descriptions
    # are present and no long descriptions are needed."
    attr_accessor :accessibility_summary

    # Specifies the Person that is legally accountable for the CreativeWork.
    attr_accessor :accountable_person

    # The overall rating, based on a collection of reviews or ratings, of the item.
    attr_accessor :aggregate_rating

    # A secondary title of the CreativeWork.
    attr_accessor :alternative_headline

    # Indicates a page or other link involved in archival of a CreativeWork.
    # In the case of MediaReview, the items in a MediaReviewItem may often
    # become inaccessible, but be archived by archival, journalistic, activist,
    # or law enforcement organizations. In such cases, the referenced page may
    # not directly publish the content.
    attr_accessor :archived_at

    # The item being described is intended to assess the competency or learning
    # outcome defined by the referenced term.
    attr_accessor :assesses

    # A media object that encodes this CreativeWork. This property is a synonym
    # for encoding.
    attr_accessor :associated_media

    # An intended audience, i.e. a group for whom something was created.
    # Supersedes serviceAudience.
    attr_accessor :audience

    # An embedded audio object.
    attr_accessor :audio

    # The author of this content or rating. Please note that author is special
    # in that HTML 5 provides a special mechanism for indicating authorship via
    # the rel tag. That is equivalent to this and may be used interchangeably.
    attr_accessor :author

    # An award won by or for this item. Supersedes awards.
    attr_accessor :award

    # Fictional person connected with a creative work.
    attr_accessor :character

    # A citation or reference to another creative work, such as another
    # publication, web page, scholarly article, etc.
    attr_accessor :citation

    # Comments, typically from users.
    attr_accessor :comment

    # The number of comments this CreativeWork (e.g. Article, Question or
    # Answer) has received. This is most applicable to works published in
    # Web sites with commenting system; additional comments may exist
    # elsewhere.
    attr_accessor :comment_count

    # Conditions that affect the availability of, or method(s) of access to,
    # an item. Typically used for real world items such as an ArchiveComponent
    # held by an ArchiveOrganization. This property is not suitable for use as
    # a general Web access control mechanism. It is expressed only in natural
    # language.
    attr_accessor :conditions_of_access

    # The location depicted or described in the content. For example, the
    # location in a photograph or painting.
    attr_accessor :content_location

    # Official rating of a piece of content—for example, 'MPAA PG-13'.
    attr_accessor :content_rating

    # The specific time described by a creative work, for works (e.g. articles,
    # video objects etc.) that emphasise a particular moment within an Event.
    attr_accessor :content_reference_time

    # A secondary contributor to the CreativeWork or Event.
    attr_accessor :contributor

    # The party holding the legal copyright to the CreativeWork.
    attr_accessor :copyright_holder

    # Text of a notice appropriate for describing the copyright aspects of this
    # Creative Work, ideally indicating the owner of the copyright for the Work.
    attr_accessor :copyright_notice

    # The year during which the claimed copyright for the CreativeWork was first
    # asserted.
    attr_accessor :copyright_year

    # Indicates a correction to a CreativeWork, either via a CorrectionComment,
    # textually or in another document.
    attr_accessor :correction

    # The country of origin of something, including products as well as creative
    # works such as movie and TV content.
    attr_accessor :country_of_origin

    # The status of a creative work in terms of its stage in a lifecycle. Example
    # terms include Incomplete, Draft, Published, Obsolete. Some organizations
    # define a set of terms for the stages of their publication lifecycle.
    attr_accessor :creative_work_status

    # The creator/author of this CreativeWork. This is the same as the Author
    # property for CreativeWork.
    attr_accessor :creator

    # Text that can be used to credit person(s) and/or organization(s)
    # associated with a published Creative Work.
    attr_accessor :credit_text

    # The date on which the CreativeWork was created or the item was added
    # to a DataFeed.
    attr_accessor :date_created

    # The date on which the CreativeWork was most recently modified or when the
    # item's entry was modified within a DataFeed.
    attr_accessor :date_modified

    # Date of first broadcast/publication.
    attr_accessor :date_published

    # A link to the page containing the comments of the CreativeWork.
    attr_accessor :discussion_url

    # An EIDR (Entertainment Identifier Registry) identifier representing a
    # specific edit / edition for a work of film or television.
    attr_accessor :edit_eidr

    # Specifies the Person who edited the CreativeWork.
    attr_accessor :editor

    # An alignment to an established educational framework.
    attr_accessor :educational_alignment

    # The level in terms of progression through an educational or training context.
    # Examples of educational levels include 'beginner', 'intermediate' or
    # 'advanced', and formal sets of level indicators.
    attr_accessor :educational_level

    # The purpose of a work in the context of education; for example, 'assignment',
    # 'group work'.
    attr_accessor :educational_use

    # A media object that encodes this CreativeWork. This property is a synonym
    # for associatedMedia. Supersedes encodings. Inverse property: encodesCreativeWork
    attr_accessor :encoding

    # Media type typically expressed using a MIME format (see IANA site and MDN
    # reference), e.g. application/zip for a SoftwareApplication binary, audio/mpeg
    # for .mp3 etc.
    attr_accessor :encoding_format

    # A creative work that this work is an example/instance/realization/derivation of.
    # Inverse property: workExample
    attr_accessor :example_of_work

    # Date the content expires and is no longer useful or available. For example a
    # VideoObject or NewsArticle whose availability or relevance is time-limited,
    # or a ClaimReview fact check whose publisher wants to indicate that it may no
    # longer be relevant (or helpful to highlight) after some date.
    attr_accessor :expires

    # A person or organization that supports (sponsors) something through some
    # kind of financial contribution.
    attr_accessor :funder

    # A Grant that directly or indirectly provide funding or sponsorship for
    # this item. See also ownershipFundingInfo. Inverse property: fundedItem
    attr_accessor :funding

    # Genre of the creative work, broadcast channel or group.
    attr_accessor :genre

    # Indicates an item or CreativeWork that is part of this item, or
    # CreativeWork (in some sense). Inverse property: isPartOf
    attr_accessor :has_part

    # Headline of the article.
    attr_accessor :headline

    # The language of the content or performance or used in an action. Please
    # use one of the language codes from the IETF BCP 47 standard. See also
    # availableLanguage. Supersedes language.
    attr_accessor :in_language

    # The number of interactions for the CreativeWork using the WebSite or
    # SoftwareApplication. The most specific child type of InteractionCounter
    # should be used. Supersedes interactionCount.
    attr_accessor :interaction_statistic

    # The predominant mode of learning supported by the learning resource.
    # Acceptable values are 'active', 'expositive', or 'mixed'.
    attr_accessor :interactivity_type

    # Used to indicate a specific claim contained, implied, translated or
    # refined from the content of a MediaObject or other CreativeWork. The
    # interpreting party can be indicated using claimInterpreter.
    attr_accessor :interpreted_as_claim

    # A flag to signal that the item, event, or place is accessible for free.
    # Supersedes free.
    attr_accessor :is_accessible_for_free

    # A resource from which this work is derived or from which it is a
    # modification or adaption. Supersedes isBasedOnUrl.
    attr_accessor :is_based_on

    # Indicates whether this content is family friendly.
    attr_accessor :is_family_friendly

    # Indicates an item or CreativeWork that this item, or CreativeWork
    # (in some sense), is part of. Inverse property: hasPart
    attr_accessor :is_part_of

    # Keywords or tags used to describe some item. Multiple textual entries
    # in a keywords list are typically delimited by commas, or by repeating
    # the property.
    attr_accessor :keywords

    # The predominant type or kind characterizing the learning resource.
    # For example, 'presentation', 'handout'.
    attr_accessor :learning_resource_type

    # A license document that applies to this content, typically indicated by
    # URL.
    attr_accessor :license

    # The location where the CreativeWork was created, which may not be the
    # same as the location depicted in the CreativeWork.
    attr_accessor :location_created

    # Indicates the primary entity described in some page or other
    # CreativeWork. Inverse property: mainEntityOfPage
    attr_accessor :main_entity

    # Properties from Thing

    # An additional type for the item, typically used for adding more specific
    # types from external vocabularies in microdata syntax. This is a
    # relationship between something and a class that the thing is in. In RDFa
    # syntax, it is better to use the native RDFa syntax - the 'typeof'
    # attribute - for multiple types. Schema.org tools may have only weaker
    # understanding of extra types, in particular those defined externally.
    attr_accessor :additional_type

    # An alias for the item.
    attr_accessor :alternate_name

    # A description of the item.
    attr_accessor :description

    # A sub property of description. A short description of the item used
    # to disambiguate from other, similar items. Information from other
    # properties (in particular, name) may be necessary for the description
    # to be useful for disambiguation.
    attr_accessor :disambiguating_description

    # The identifier property represents any kind of identifier for any kind
    # of Thing, such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides
    # dedicated properties for representing many of these, either as textual
    # strings or as URL (URI) links. See background notes for more details.
    attr_accessor :identifier

    # An image of the item. This can be a URL or a fully described ImageObject.
    attr_accessor :image

    # Indicates a page (or other CreativeWork) for which this thing is the main
    # entity being described. See background notes for details.
    # Inverse property: mainEntity
    attr_accessor :main_entity_of_page

    # The name of the item.
    attr_accessor :name

    # Indicates a potential Action, which describes an idealized action in
    # which this thing would play an 'object' role.
    attr_accessor :potential_action

    # URL of a reference Web page that unambiguously indicates the item's
    # identity. E.g. the URL of the item's Wikipedia page, Wikidata entry,
    # or official website.
    attr_accessor :same_as

    # A CreativeWork or Event about this Thing. Inverse property: about
    attr_accessor :subject_of

    # URL of the item.
    attr_accessor :url

    # The version of the CreativeWork embodied by a specified resource.
    attr_accessor :version

    def initialize(args = {})
      args.transform_keys!(&:to_sym)

      if args[:input]
        meta = read_input(args[:input]).merge(args)
      else
        meta = args
      end

      @type = 'SoftwareSourceCode'
      @about = meta[:about]
      @abstract = meta[:abstract]
      @access_mode = meta[:access_mode]
      @author = meta[:author]
      @code_repository = meta[:code_repository]
      @code_sample_type = meta[:code_sample_type]
      @date_created = meta[:date_created]
      @date_modified = meta[:date_modified]
      @date_published = meta[:date_published]
      @license = meta[:license]
      @name = meta[:name]
      @programming_language = meta[:programming_language]
      @version = meta[:version]
    end

    # rubocop:disable Metrics/MethodLength, Metrics/AbcSize
    def to_json_struct
      {
        '@type' => type,
        'codeRepository' => code_repository,
        'codeSampleType' => code_sample_type,
        'programmingLanguage' => programming_language,
        'runtimePlatform' => runtime_platform,
        'targetProduct' => target_product,
        'about' => about,
        'abstract' => abstract,
        'accessMode' => access_mode,
        'accessModeSufficient' => access_mode_sufficient,
        'accessibilityApi' => accessibility_api,
        'accessibilityControl' => accessibility_control,
        'accessibilityFeature' => accessibility_feature,
        'accessibilityHazard' => accessibility_hazard,
        'accessibilitySummary' => accessibility_summary,
        'additionalType' => additional_type,
        'alternateName' => alternate_name,
        'author' => author,
        'description' => description,
        'disambiguatingDescription' => disambiguating_description,
        'identifier' => identifier,
        'image' => image,
        'license' => license,
        'mainEntityOfPage' => main_entity_of_page,
        'name' => name,
        'potentialAction' => potential_action,
        'sameAs' => same_as,
        'subject_of' => subject_of,
        'url' => url,
        'version' => version,
      }.compact
    end
    # rubocop:enable Metrics/ClassLength, Metrics/MethodLength, Metrics/AbcSize
  end
end
