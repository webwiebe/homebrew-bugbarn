class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.169"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.169.tar.gz"
      sha256 "c5a3e440050db2bac10d053430e22e19f9836e3e3ba332d478334d35c8b8fad1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.169.tar.gz"
      sha256 "3894586a63f055cba60455efbf2124b1291837fb39c64c23a1771ab9a144c45b"
    end
  end

  def install
    bin.install "bb"
  end
end
