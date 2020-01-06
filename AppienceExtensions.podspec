Pod::Spec.new do |spec|
    spec.name         = 'AppienceExtensions'
    spec.version      = '0.2'
    spec.swift_version   = '5.0'
    spec.platform     = :ios , '10.0'
    spec.license      = { :type => 'BSD' }
    spec.homepage     = 'https://github.com/appience/AppienceExtensions'
    spec.authors      = { 'Jan Lipmann' => 'jan@appience.com' }
    spec.summary      = 'Swift exensions'
    spec.source       = { :git => 'https://github.com/appience/AppienceExtensions.git' }
    spec.source_files = 'AppienceExtensions/Extensions/*','AppienceExtensions/Protocols/*','AppienceExtensions/FlowCoordinator/*'
  end
