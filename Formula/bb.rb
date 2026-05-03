class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.30.tar.gz"
      sha256 "84e6b654e3d24627a28973e3c03fb1b9363bc86d186d8bea50f5cf9b9100fef7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.30.tar.gz"
      sha256 "dc229ecf22a6106fb330519106451090490875001a3f214313eac7079abc9c1a"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
