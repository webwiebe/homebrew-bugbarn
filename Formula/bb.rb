class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.286"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.286.tar.gz"
      sha256 "00602516ea86b604ce446eba832913239037f5ebb09b695ef6b0b6a6f70abe4d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.286.tar.gz"
      sha256 "0dfe722eb43c18c21f33490b3ae8499cd2f91083282c120bac33bb410eb8967f"
    end
  end

  def install
    bin.install "bb"
  end
end
