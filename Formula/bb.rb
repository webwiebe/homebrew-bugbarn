class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.76"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.76.tar.gz"
      sha256 "44b75700cbc367cbe9d4e9659f7d6ebd580a53ded51353a7157e3d8431025782"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.76.tar.gz"
      sha256 "31f6c5c22c5f0070fefe8f8e2c89c3979ece01b97ed2bb4030967f4c17d43490"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
