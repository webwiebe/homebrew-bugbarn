class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.396"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.396.tar.gz"
      sha256 "e2bd5e96a22155f5f7ed05913e01182f008c37887ec205ef4be71c62b26f225b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.396.tar.gz"
      sha256 "ce7c232702b2c496a7606fc91b59320a515216b385cccf9eb7a45c1669bd86ce"
    end
  end

  def install
    bin.install "bb"
  end
end
