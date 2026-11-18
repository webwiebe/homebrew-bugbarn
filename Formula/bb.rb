class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.376"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.376.tar.gz"
      sha256 "ec5493f178ca22dd855dfb3d97e38f89f7af664653388e3548dd5411575e7cdc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.376.tar.gz"
      sha256 "c525a8ec49d4c8707e429b378fdfffaaaba72afc5f3cab45afa08a071f16e970"
    end
  end

  def install
    bin.install "bb"
  end
end
