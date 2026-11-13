class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.366"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.366.tar.gz"
      sha256 "142cc5064262b291eaccd0725afa8e7cbc612b25050184efdc01facdd3fc8a04"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.366.tar.gz"
      sha256 "199d5d48726f1b000dee247815da9d8a8c8d55a699e477bd8b6ebba6c447e16f"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
