class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.229"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.229.tar.gz"
      sha256 "c6bb695ee764a7e1e9bf4daf65335ec99c8b1b162d2942fb288c6a030130b7de"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.229.tar.gz"
      sha256 "53ee10b2c7061b59d2106427da42c3ad6d82a7c5c886eb33627925d405076987"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
