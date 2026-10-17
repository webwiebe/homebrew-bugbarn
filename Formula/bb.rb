class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.266"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.266.tar.gz"
      sha256 "6c1e297dfd7491fc2ee04573cbe049112754bb8b20cd8e959918275532093e81"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.266.tar.gz"
      sha256 "1fee3f2426220bc5be19244d5d1c208fc32ee4fef017ea03e309fba6ed58595a"
    end
  end

  def install
    bin.install "bb"
  end
end
