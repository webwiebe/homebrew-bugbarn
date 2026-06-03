class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.55"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.55.tar.gz"
      sha256 "ab5fa34c0e3ad5e0571d54b518eb7625b3577608f96c5ff3f011f0fb2808871f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.55.tar.gz"
      sha256 "add6b775d0edc5f4018d09c49fc198f22abdd69e5dce4b2c7404b19690c96f4d"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
