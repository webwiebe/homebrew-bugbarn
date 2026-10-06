class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.211"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.211.tar.gz"
      sha256 "4b8eb1e6afea10e1cc50a9cf5cd0a051d7c1fbb39ae90b51439836646bade20f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.211.tar.gz"
      sha256 "98ae1eb5454636152be45c4fdaf9b8049f076545660dd330d53644438dd70a89"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
