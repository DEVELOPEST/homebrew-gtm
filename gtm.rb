class Gtm < Formula
  desc 'Simple, seamless, lightweight time tracking for all your git projects'
  homepage 'https://github.com/DEVELOPEST/gtm-core'
  license "MIT"

  version 'v1.0.3'
  sha256Mac = '3153d874d64e735ffb96538eef16696b5354b9d46192f271325dce1507a683e7'
  sha256Linux = '65a2ac04a5c14b155924df17ce3a910007c18f36c1209e24e506443732cdbf4e'

  os = ''
  if OS.mac? then
      os = 'macOS'
      sha256 "#{sha256Mac}"
  elsif OS.linux? then
      os = 'linux'
      sha256 "#{sha256Linux}"
  end
  url "https://github.com/DEVELOPEST/gtm-core/releases/download/#{Gtm.version}/gtm-#{os}.zip"

  def install
    bin.install 'gtm'
  end

end