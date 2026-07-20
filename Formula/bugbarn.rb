class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.153"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.153.tar.gz"
      sha256 "be16e4d8b21a6add44e21a516ac36fe2e845490eb28956f2aa36a72f3613b053"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.153.tar.gz"
      sha256 "806f60daac456e6b6a0780e2d77766c175edad5f6496d07ca71344daf31e3530"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
