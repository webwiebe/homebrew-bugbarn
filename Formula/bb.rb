class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.116"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.116.tar.gz"
      sha256 "c0d49a3ec51a29cbeab0884a8449dd8c2770f7c25a51ff02c7dc8f3e305d6ed3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.116.tar.gz"
      sha256 "aa9b68f2d15fe728c636042fd3bbd6e32514569919954e574efe6caed82370e8"
    end
  end

  def install
    bin.install "bb"
  end
end
