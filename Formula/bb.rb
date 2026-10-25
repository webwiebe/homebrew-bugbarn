class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.279"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.279.tar.gz"
      sha256 "47c34b7d40748141d9b54432fd12058c4c16c4e37e9d2f27cd0d712fb210c2c6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.279.tar.gz"
      sha256 "0de1a2926cb35796f2ac74e09dcf6d6714057666c1a3321c4647e73088455219"
    end
  end

  def install
    bin.install "bb"
  end
end
