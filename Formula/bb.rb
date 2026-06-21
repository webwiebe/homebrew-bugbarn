class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.86"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.86.tar.gz"
      sha256 "bb5de9a0462b8893e1eeb427ba32875c655dfabe8e3d7deba46a8fc03168a310"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.86.tar.gz"
      sha256 "fc09d82cb51ea6621f827addc9254788c26d986385a2a82bf1c70fa6b707109b"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
