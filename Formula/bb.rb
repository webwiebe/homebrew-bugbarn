class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.203"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.203.tar.gz"
      sha256 "4196f2eb5cd70072c6b2e2399a7ab9f03568bf87221608803e2af212c800f92d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.203.tar.gz"
      sha256 "8f2f004e7ee455faa6ba7fbfa48c5a78d78b75bb0382f185054f4d419c4d33e1"
    end
  end

  def install
    bin.install "bb"
  end
end
