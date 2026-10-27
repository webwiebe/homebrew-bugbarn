class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.295"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.295.tar.gz"
      sha256 "0106e97acc0f80dfc5f5a1c5301f100cf50e6b2d98b7335720f220aa26b135e0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.295.tar.gz"
      sha256 "df60149dbc9d8c6654b1573cdfb74ebdf11100e48d4b3ccdae7bd0cb6523eac6"
    end
  end

  def install
    bin.install "bb"
  end
end
