class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.265"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.265.tar.gz"
      sha256 "530de5bc2817a712a1799e36c7c37707831ff55eb5e2a0f2b089c48ad4f0639a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.265.tar.gz"
      sha256 "da2a6ca6ac53ad6e0017de272e9b0904d5e14f6ed7d428de77b3e273fd6abf9b"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
