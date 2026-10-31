class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.310"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.310.tar.gz"
      sha256 "ba033f21b563bb9937552a0b360d35c503fbffaf5b05e47656aecf1d56d549d8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.310.tar.gz"
      sha256 "415602ce7fb0cb262029c34f21d3973e8087472c314cf49553491469744451c8"
    end
  end

  def install
    bin.install "bb"
  end
end
