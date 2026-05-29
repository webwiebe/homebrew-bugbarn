class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.40"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.40.tar.gz"
      sha256 "19c711e04a47bb22551bd94e43c97ff8c30bb944591be096d1e83145b82e5eb3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.40.tar.gz"
      sha256 "c9ee9049f4d2f9877b7085a43a87eee106452fb2723b5fd32e9b1aa8244a16bf"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
