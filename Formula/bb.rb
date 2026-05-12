class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.129"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.129.tar.gz"
      sha256 "eb061de49eac359cf32a2cbe3f73589f0052d27815642f58bef0345ed816434e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.129.tar.gz"
      sha256 "fea7677946852daeaab579f775da93eee2ee94a600579adf4ecdee335411d196"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
