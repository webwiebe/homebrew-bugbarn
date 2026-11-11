class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.353"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.353.tar.gz"
      sha256 "5f834a093032f119a0c41bf11a35ddd28c4518be7d0228d23724ca4fafe9406d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.353.tar.gz"
      sha256 "3abfeed2c46d776c84ee8b6a03cacdddbb86a548fbd893a4e027d0e3f8dd95a7"
    end
  end

  def install
    bin.install "bb"
  end
end
