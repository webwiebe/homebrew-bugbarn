class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.243"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.243.tar.gz"
      sha256 "2dc7cd8e0eacc0eedaf546229917783100227535addf0ad6452c8c635788d9b0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.243.tar.gz"
      sha256 "7819862c27c5f01a2865a7b601dc77b8ce8f5f9edbbe9a116fad08c7188d8e01"
    end
  end

  def install
    bin.install "bb"
  end
end
