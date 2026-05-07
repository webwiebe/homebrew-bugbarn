class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.64"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.64.tar.gz"
      sha256 "89e922ba27d2daa507265850d2d4c34c0a569a8c3c75db3f5f723f02178c19e2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.64.tar.gz"
      sha256 "15c8cdc82a5fcb6576133f7447df417da69ba922d03cc3522404960bd74213ef"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
