class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.358"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.358.tar.gz"
      sha256 "00a3c52281a3f7b2cbb5ad930e8fde09130c6052f529d346306a38a45e3108d1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.358.tar.gz"
      sha256 "f70b2373c7849093bfaf21556cedb811731e0fde801f559f6d7e0c14b5c48339"
    end
  end

  def install
    bin.install "bb"
  end
end
