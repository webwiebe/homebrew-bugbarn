class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.107"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.107.tar.gz"
      sha256 "93b96d08701f2bd2c0f9fcd21d0d17d1f045e08430f1360c72dc35520ce452ab"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.107.tar.gz"
      sha256 "4dc26a5e9a65c304e02051c7acb79feeaccc51a42cef22e4afd8538e473f1612"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
