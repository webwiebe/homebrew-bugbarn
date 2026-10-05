class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.206"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.206.tar.gz"
      sha256 "260174a3bb6897a54edd1757519cff625d0e2a42c0fbafb61400cae2e7d245cd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.206.tar.gz"
      sha256 "4892f9d407e4a63c64079ea1e16e53e863d1d29a1ee25be8b69e956475b9d8da"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
