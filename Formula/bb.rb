class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.325"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.325.tar.gz"
      sha256 "510c7a66b95753265f41ab6c1c58e520dab5e478ae243fd9b75c2a23bd21b2ec"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.325.tar.gz"
      sha256 "095a0d848378608458df7e384c8f1a2d06ca0f9125827cf36e617432072a244c"
    end
  end

  def install
    bin.install "bb"
  end
end
