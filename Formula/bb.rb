class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.382"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.382.tar.gz"
      sha256 "1f598a102b5ffea6ebee6b7155a73bf781344ebf1281e6d2b40749d0aab98af1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.382.tar.gz"
      sha256 "c4f44254a903da4b8d38493e225b4f6c1a3c17c9afb36c35c9cf041c6af97ea0"
    end
  end

  def install
    bin.install "bb"
  end
end
