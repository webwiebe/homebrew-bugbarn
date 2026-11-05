class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.324"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.324.tar.gz"
      sha256 "aee392e604db4dd5ac4eaebdb19b7f2348bf0d6b75d2764d0ed18428bce48521"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.324.tar.gz"
      sha256 "6e24806a54d0b39d95892856790320cc021143b71ec275802da55a4ac59d43a5"
    end
  end

  def install
    bin.install "bb"
  end
end
