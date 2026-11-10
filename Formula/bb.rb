class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.342"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.342.tar.gz"
      sha256 "335dd8d728873efaa43159763c570e791cb024ed589e413bdd73db14b86cc81b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.342.tar.gz"
      sha256 "0c90b8bf71097352851f7f35b30b06215feb7c5570b6be1b1c3322d19669c743"
    end
  end

  def install
    bin.install "bb"
  end
end
