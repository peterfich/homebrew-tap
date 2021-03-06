# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class NetstreamMvn321 < Formula
  homepage ""
  url "https://github.com/peterfich/netstream-mvn-3.2.1/archive/0.0.2.tar.gz"
  version "0.9"
  sha256 "351e2db2eff90aba254fd574fe5c91ff08876d81f5524d4de5475e9564c4f50f"
  
  def install
    mkdir_p '/easy'
    cp_r 'apache-maven-3.2.1', '/easy'
    ln_s '/easy/apache-maven-3.2.1/bin/mvn', "#{HOMEBREW_PREFIX}/bin/mvn"
    ln_s '/easy/apache-maven-3.2.1/bin/mvnDebug', "#{HOMEBREW_PREFIX}/bin/mvnDebug"
  end
end
