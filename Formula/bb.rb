class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.277"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.277.tar.gz"
      sha256 "8939189935fb72f105d34f63fa1448f76ba5fa61201a594e9801f2c519eab54f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.277.tar.gz"
      sha256 "253edc347a8ac79f3b58576e3a6c4ab547b2f613198a02a78ed033725999946b"
    end
  end

  def install
    bin.install "bb"
  end
end
