Pod::Spec.new do |spec|
    spec.name         = 'AppienceExtensions'
    spec.version      = '0.0.2'
    spec.platform     = :ios , '10.0'
    spec.license      = { :type => 'BSD' }
    spec.homepage     = 'https://github.com/jaskooo/AppienceExtensions'
    spec.authors      = { 'Jan Lipmann' => 'jan@appience.com' }
    spec.summary      = 'Swift exensions'
    spec.source       = { :git => 'https://github.com/jaskooo/AppienceExtensions.git' }
    spec.source_files = 'AppienceExtensions/Extensions/*','AppienceExtensions/Protocols/*','AppienceExtensions/FlowCoordinators/*'
  end
