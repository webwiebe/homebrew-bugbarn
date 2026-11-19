class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.388"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.388.tar.gz"
      sha256 "389f06a09fb62b6233f11456cbc74298903c94deacaec6102a6b2c59acef6c6a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.388.tar.gz"
      sha256 "bc9ecd3beb78807e6e7e051b1fa58e2bcd7975688e8982c0411bce8c6ef2b9b3"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
