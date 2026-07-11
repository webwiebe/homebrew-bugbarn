class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.132"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.132.tar.gz"
      sha256 "f26a928a28aa79ad5ec266103c2063280c0704ed6f03431e50a49553d4a30db0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.132.tar.gz"
      sha256 "f773b86d769c50bf3f3ced1a0f51601f94cadd0cf8b6a40dac69bb432027445a"
    end
  end

  def install
    bin.install "bb"
  end
end
