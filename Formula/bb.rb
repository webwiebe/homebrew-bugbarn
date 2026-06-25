class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.99"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.99.tar.gz"
      sha256 "da76ab0ca8c2b97b304c09f55a3d4dd87dba30e972bd7fb090ab43be9b653c65"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.99.tar.gz"
      sha256 "f9cecd9eadabdbd430c85f290d9f4ee50a0d8b63f4cf792a0b9c1b135dd48085"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
