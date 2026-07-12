class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.137"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.137.tar.gz"
      sha256 "217c207456459b659da2df651fe55d4e2384fe33296c5bf059b5574e1b127b40"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.137.tar.gz"
      sha256 "295da80238e26ca2dfdd85864cb9451e58e20ce18a721b93ac838b35e6b5247b"
    end
  end

  def install
    bin.install "bb"
  end
end
