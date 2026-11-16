class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.371"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.371.tar.gz"
      sha256 "26e830d8b259ffe86c11c38ba51ee38bebd064ef12c2e04c6e85ce0bfce02953"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.371.tar.gz"
      sha256 "869d4d3c7c93d3a8546a67fb5f9cd4df2b916ef92eb2c12378d3d8b81199d885"
    end
  end

  def install
    bin.install "bb"
  end
end
