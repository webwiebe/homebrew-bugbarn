class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.323"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.323.tar.gz"
      sha256 "5e6c639d3e46ed3a5a3120dad1eb38db87e6b76a0cd186bcf1aa427fef5976fb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.323.tar.gz"
      sha256 "e1f9b738d2d7bb54cd3c7824f356f8217ebc42de70c5318ee41f9c6939083b9d"
    end
  end

  def install
    bin.install "bb"
  end
end
