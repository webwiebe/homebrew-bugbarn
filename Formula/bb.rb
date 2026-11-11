class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.343"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.343.tar.gz"
      sha256 "fa20b8687302098db9c8cabc5a70f925e95a1ee0a94c892cccf9264e52e988e9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.343.tar.gz"
      sha256 "763933a1dbd67eb7ec1dd5d612f81eef08f8d51a1e5293fae799c2f56486502c"
    end
  end

  def install
    bin.install "bb"
  end
end
