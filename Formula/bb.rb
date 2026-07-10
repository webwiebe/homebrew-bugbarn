class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.131"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.131.tar.gz"
      sha256 "dc9c675fc2c0d0dd80a5fa4ac53f71b3cf808d649b0511117054ca8d59b9cdb1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.131.tar.gz"
      sha256 "0609c856c5cbf07af26f36583222adacace8e87cb9bea3238ba18a62433d78e0"
    end
  end

  def install
    bin.install "bb"
  end
end
