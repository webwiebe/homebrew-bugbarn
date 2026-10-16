class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.261"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.261.tar.gz"
      sha256 "f32a10464b01486b4b101722d7d77dbd3e9442f790abdf50cd0454ba24021825"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.261.tar.gz"
      sha256 "5931b82f0847daf67fd614d8fb0e7aa60d43376ac49fc43999d6feb033b49078"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
