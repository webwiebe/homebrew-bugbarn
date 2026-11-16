class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.370"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.370.tar.gz"
      sha256 "1ae5af9b43e6603565d966bf3372b688ebbe8d4b90fd6b6ace39dab4781592f6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.370.tar.gz"
      sha256 "ad16c7a5a5cf4f12df1f21c004a7a5faa322e5d7bb5b10d258c4af59679ec926"
    end
  end

  def install
    bin.install "bb"
  end
end
