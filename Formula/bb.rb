class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.136"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.136.tar.gz"
      sha256 "9b584a550ab8f4f4a2e42f123c11b4125d4bde8e428684892cf97e44884d8a7e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.136.tar.gz"
      sha256 "5da48f67863b78580cdfa0ac6b1a7140df45e52a5412b087dce7e9d4f6518a23"
    end
  end

  def install
    bin.install "bb"
  end
end
