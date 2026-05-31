class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.50"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.50.tar.gz"
      sha256 "d218642454571445cc0843cd95851f06873bde82d9fddb39d4c59adaee679558"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.50.tar.gz"
      sha256 "03bf1c7c8a3f1b22c9a2c8b2f1e207428d224a52c4c00ea63cda0ea5d5de1bb9"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
