class graphicsmagick {
  include homebrew

  homebrew::formula {
    'graphicsmagick':
      source => 'puppet:///modules/princexml/brews/graphicsmagick.rb',
      before => Package['boxen/brews/graphicsmagick'] ;
  }

  package {
    'boxen/brews/graphicsmagick':
      ensure => "1.3.17-boxen1";
  }
}
