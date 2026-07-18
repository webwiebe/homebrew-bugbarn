class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.151"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.151.tar.gz"
      sha256 "17cf8223734b72e4447968196e693fab8b6280d0f214540c9e240a58ad0ad2ba"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.151.tar.gz"
      sha256 "667f15d6ba4e5999519bb141bb1c12820a555f77e341464bc6bd3c608f5bbcce"
    end
  end

  def install
    bin.install "bb"
  end
end
