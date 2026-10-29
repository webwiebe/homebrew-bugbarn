class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.301"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.301.tar.gz"
      sha256 "d387754111fe3d7b17531d6e9d194c3c718826950a8c415c705d4b4689ff40a0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.301.tar.gz"
      sha256 "690dab6837a30c9aad75575f763264dcdb2b6d7f252949f68f46e9fb02fdc1b3"
    end
  end

  def install
    bin.install "bb"
  end
end
