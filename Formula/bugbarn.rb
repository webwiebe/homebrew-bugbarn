class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.175"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.175.tar.gz"
      sha256 "11fd50551f3380fce0e0feb628930c22f9a42da3cb4a7acc5e23a84ba50b1a2f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.175.tar.gz"
      sha256 "6b2e5ca33c8b095edecbed91818560d10cde427c3eeaf25fd33373bfe8a9fc32"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
