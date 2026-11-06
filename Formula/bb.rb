class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.340"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.340.tar.gz"
      sha256 "f687fcfb0ef911a64624565d4c9a0afae855a66edad9f906a6c3aada10e419d0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.340.tar.gz"
      sha256 "8b29e5d95b83f05112ab6615c3be72a74efc4ab600e2adf8e964ad34e0d3f156"
    end
  end

  def install
    bin.install "bb"
  end
end
