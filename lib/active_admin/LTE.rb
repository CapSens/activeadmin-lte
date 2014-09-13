require "active_admin/LTE/version"
require "quiet_assets"
require 'awesome_print'
require 'bootstrap-kaminari-views'

module ActiveAdmin
  module LTE
    autoload :ViewFactory,       'active_admin/LTE/view_factory'
    autoload :Views,             'active_admin/LTE/views'
    autoload :FormBuilder,       'active_admin/LTE/form_builder'
    autoload :ViewHelpers,       'active_admin/LTE/view_helpers'
    autoload :Resource,          'active_admin/LTE/resource'
    autoload :Config,            'active_admin/LTE/config.rb'
    autoload :DSL,               'active_admin/LTE/dsl.rb'
    autoload :Inputs,            'active_admin/LTE/inputs'
    def self.icon_collection
      @icon_collection ||= %w(fa-rub fa-ruble fa-rouble fa-pagelines fa-stack-exchange fa-arrow-circle-o-right fa-arrow-circle-o-left fa-caret-square-o-left fa-toggle-left fa-dot-circle-o fa-wheelchair fa-vimeo-square fa-try fa-turkish-lira fa-plus-square-o fa-adjust fa-anchor fa-archive fa-arrows fa-arrows-h fa-arrows-v fa-asterisk fa-ban fa-bar-chart-o fa-barcode fa-bars fa-beer fa-bell fa-bell-o fa-bolt fa-book fa-bookmark fa-bookmark-o fa-briefcase fa-bug fa-building-o fa-bullhorn fa-bullseye fa-calendar fa-calendar-o fa-camera fa-camera-retro fa-caret-square-o-down fa-caret-square-o-left fa-caret-square-o-right fa-caret-square-o-up fa-certificate fa-check fa-check-circle fa-check-circle-o fa-check-square fa-check-square-o fa-circle fa-circle-o fa-clock-o fa-cloud fa-cloud-download fa-cloud-upload fa-code fa-code-fork fa-coffee fa-cog fa-cogs fa-comment fa-comment-o fa-comments fa-comments-o fa-compass fa-credit-card fa-crop fa-crosshairs fa-cutlery fa-dashboard fa-desktop fa-dot-circle-o fa-download fa-edit fa-ellipsis-h fa-ellipsis-v fa-envelope fa-envelope-o fa-eraser fa-exchange fa-exclamation fa-exclamation-circle fa-exclamation-triangle fa-external-link fa-external-link-square fa-eye fa-eye-slash fa-female fa-fighter-jet fa-film fa-filter fa-fire fa-fire-extinguisher fa-flag fa-flag-checkered fa-flag-o fa-flash fa-flask fa-folder fa-folder-o fa-folder-open fa-folder-open-o fa-frown-o fa-gamepad fa-gavel fa-gear fa-gears fa-gift fa-glass fa-globe fa-group fa-hdd-o fa-headphones fa-heart fa-heart-o fa-home fa-inbox fa-info fa-info-circle fa-key fa-keyboard-o fa-laptop fa-leaf fa-legal fa-lemon-o fa-level-down fa-level-up fa-lightbulb-o fa-location-arrow fa-lock fa-magic fa-magnet fa-mail-forward fa-mail-reply fa-mail-reply-all fa-male fa-map-marker fa-meh-o fa-microphone fa-microphone-slash fa-minus fa-minus-circle fa-minus-square fa-minus-square-o fa-mobile fa-mobile-phone fa-money fa-moon-o fa-music fa-pencil fa-pencil-square fa-pencil-square-o fa-phone fa-phone-square fa-picture-o fa-plane fa-plus fa-plus-circle fa-plus-square fa-plus-square-o fa-power-off fa-print fa-puzzle-piece fa-qrcode fa-question fa-question-circle fa-quote-left fa-quote-right fa-random fa-refresh fa-reply fa-reply-all fa-retweet fa-road fa-rocket fa-rss fa-rss-square fa-search fa-search-minus fa-search-plus fa-share fa-share-square fa-share-square-o fa-shield fa-shopping-cart fa-sign-in fa-sign-out fa-signal fa-sitemap fa-smile-o fa-sort fa-sort-alpha-asc fa-sort-alpha-desc fa-sort-amount-asc fa-sort-amount-desc fa-sort-asc fa-sort-desc fa-sort-down fa-sort-numeric-asc fa-sort-numeric-desc fa-sort-up fa-spinner fa-square fa-square-o fa-star fa-star-half fa-star-half-empty fa-star-half-full fa-star-half-o fa-star-o fa-subscript fa-suitcase fa-sun-o fa-superscript fa-tablet fa-tachometer fa-tag fa-tags fa-tasks fa-terminal fa-thumb-tack fa-thumbs-down fa-thumbs-o-down fa-thumbs-o-up fa-thumbs-up fa-ticket fa-times fa-times-circle fa-times-circle-o fa-tint fa-toggle-down fa-toggle-left fa-toggle-right fa-toggle-up fa-trash-o fa-trophy fa-truck fa-umbrella fa-unlock fa-unlock-alt fa-unsorted fa-upload fa-user fa-users fa-video-camera fa-volume-down fa-volume-off fa-volume-up fa-warning fa-wheelchair fa-wrench fa-check-square fa-check-square-o fa-circle fa-circle-o fa-dot-circle-o fa-minus-square fa-minus-square-o fa-plus-square fa-plus-square-o fa-square fa-square-o fa-bitcoin fa-btc fa-cny fa-dollar fa-eur fa-euro fa-gbp fa-inr fa-jpy fa-krw fa-money fa-rmb fa-rouble fa-rub fa-ruble fa-rupee fa-try fa-turkish-lira fa-usd fa-won fa-yen fa-align-center fa-align-justify fa-align-left fa-align-right fa-bold fa-chain fa-chain-broken fa-clipboard fa-columns fa-copy fa-cut fa-dedent fa-eraser fa-file fa-file-o fa-file-text fa-file-text-o fa-files-o fa-floppy-o fa-font fa-indent fa-italic fa-link fa-list fa-list-alt fa-list-ol fa-list-ul fa-outdent fa-paperclip fa-paste fa-repeat fa-rotate-left fa-rotate-right fa-save fa-scissors fa-strikethrough fa-table fa-text-height fa-text-width fa-th fa-th-large fa-th-list fa-underline fa-undo fa-unlink fa-angle-double-down fa-angle-double-left fa-angle-double-right fa-angle-double-up fa-angle-down fa-angle-left fa-angle-right fa-angle-up fa-arrow-circle-down fa-arrow-circle-left fa-arrow-circle-o-down fa-arrow-circle-o-left fa-arrow-circle-o-right fa-arrow-circle-o-up fa-arrow-circle-right fa-arrow-circle-up fa-arrow-down fa-arrow-left fa-arrow-right fa-arrow-up fa-arrows fa-arrows-alt fa-arrows-h fa-arrows-v fa-caret-down fa-caret-left fa-caret-right fa-caret-square-o-down fa-caret-square-o-left fa-caret-square-o-right fa-caret-square-o-up fa-caret-up fa-chevron-circle-down fa-chevron-circle-left fa-chevron-circle-right fa-chevron-circle-up fa-chevron-down fa-chevron-left fa-chevron-right fa-chevron-up fa-hand-o-down fa-hand-o-left fa-hand-o-right fa-hand-o-up fa-long-arrow-down fa-long-arrow-left fa-long-arrow-right fa-long-arrow-up fa-toggle-down fa-toggle-left fa-toggle-right fa-toggle-up fa-arrows-alt fa-backward fa-compress fa-eject fa-expand fa-fast-backward fa-fast-forward fa-forward fa-pause fa-play fa-play-circle fa-play-circle-o fa-step-backward fa-step-forward fa-stop fa-youtube-play fa-adn fa-android fa-apple fa-bitbucket fa-bitbucket-square fa-bitcoin fa-btc fa-css3 fa-dribbble fa-dropbox fa-facebook fa-facebook-square fa-flickr fa-foursquare fa-github fa-github-alt fa-github-square fa-gittip fa-google-plus fa-google-plus-square fa-html5 fa-instagram fa-linkedin fa-linkedin-square fa-linux fa-maxcdn fa-pagelines fa-pinterest fa-pinterest-square fa-renren fa-skype fa-stack-exchange fa-stack-overflow fa-trello fa-tumblr fa-tumblr-square fa-twitter fa-twitter-square fa-vimeo-square fa-vk fa-weibo fa-windows fa-xing fa-xing-square fa-youtube fa-youtube-play fa-youtube-square fa-ambulance fa-h-square fa-hospital-o fa-medkit fa-plus-square fa-stethoscope fa-user-md fa-wheelchair)
    end
  end
end

require "active_admin/LTE/application"
require "active_admin/LTE/resource_dsl"
require "active_admin/LTE/engine"

ActiveAdmin::ViewHelpers.send :include, ActiveAdmin::LTE::ViewHelpers
ActiveAdmin::Resource.send    :include, ActiveAdmin::LTE::Resource
ActiveAdmin::Resource.send    :include, ActiveAdmin::LTE::Config
ActiveAdmin::Page.send        :include, ActiveAdmin::LTE::Config
ActiveAdmin::DSL.send         :include, ActiveAdmin::LTE::DSL
