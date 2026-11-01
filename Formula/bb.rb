class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.315"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.315.tar.gz"
      sha256 "d5851f8c7773855ef4d1d66521ed793b741342d88370b7b7a6b8d94568ee49d2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.315.tar.gz"
      sha256 "7c0b1fc1e396ec27d6a352820e96c601b73bd359f14568e31d92688065e95a36"
    end
  end

  def install
    bin.install "bb"
  end
end
