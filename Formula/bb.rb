class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.379"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.379.tar.gz"
      sha256 "a78cf2102257715efd7c666791e7d564c77b6c4ac1ddff0a7502e846136561f4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.379.tar.gz"
      sha256 "f3d3a9a982bfbd83fdf705b2b69e872ec60af822ce56bce10c66720c981267aa"
    end
  end

  def install
    bin.install "bb"
  end
end
