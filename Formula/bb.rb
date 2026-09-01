class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.165"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.165.tar.gz"
      sha256 "4f502caaf3682fbb7f3845d623eeb93b65c4e11b2c9b58109f6b49dd3d8d0364"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.165.tar.gz"
      sha256 "4062fb49b0a2c0fad0a1f66a3ed64b3c0b2137dac6373a8fb8985df527799f18"
    end
  end

  def install
    bin.install "bb"
  end
end
