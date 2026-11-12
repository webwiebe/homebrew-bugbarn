class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.357"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.357.tar.gz"
      sha256 "757d6ee2e74d1fe1c7e41a26aba7112ccc622e6868c46bc1625a3de2e36db1e5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.357.tar.gz"
      sha256 "1f76d6e47156ad2de7448b3fd829e950e17cbe8dd9c436d7e603954c88cd07aa"
    end
  end

  def install
    bin.install "bb"
  end
end
