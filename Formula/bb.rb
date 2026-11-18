class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.385"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.385.tar.gz"
      sha256 "95c1f0dc9837b2b97970cb7c7f64d152881eddda622cb171e4ba7d05ee0c8c96"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.385.tar.gz"
      sha256 "3745a09a3e059405729bc74773f0b1710a78a7d97034f89d55a6e53cb6d2dff6"
    end
  end

  def install
    bin.install "bb"
  end
end
