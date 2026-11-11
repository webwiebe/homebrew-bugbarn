class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.348"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.348.tar.gz"
      sha256 "f3c38275584e74e02fd1ddb60f2fee9c12da7abefe55864d5942f78c2ae4ccf7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.348.tar.gz"
      sha256 "3d7d6825622614f76b4f2756b59c68f9ae7d1a12bda76dd4071e0628b18aeb0c"
    end
  end

  def install
    bin.install "bb"
  end
end
