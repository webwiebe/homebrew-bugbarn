class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.208"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.208.tar.gz"
      sha256 "f2ecb5797f5b5c03505a2f1d5524bb0adae9ff30e5ec041d4c9cf1f60cc3d77d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.208.tar.gz"
      sha256 "8edf5fd5c8e87d387b157dac3941e5b371171144430df13fad91de3de7fffd6f"
    end
  end

  def install
    bin.install "bb"
  end
end
