class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.117"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.117.tar.gz"
      sha256 "9a5089754aa0ab4c2190c3f28247992174d9fcb54b99ef28d52ec77f897088ca"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.117.tar.gz"
      sha256 "84c0800815cd1ba2152f97554b7f1956fcb86a01ac6bb4de66df70928cc3dbf4"
    end
  end

  def install
    bin.install "bb"
  end
end
