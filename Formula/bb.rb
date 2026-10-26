class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.285"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.285.tar.gz"
      sha256 "9b681d4a32c0a0e1b7a8b11478f3526ef9b1ce84113f1c971f20eb8a4087a16f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.285.tar.gz"
      sha256 "718a0a77d510f67822c2842519ad33c5eedf11e25fa76844848d293426dbf5fd"
    end
  end

  def install
    bin.install "bb"
  end
end
