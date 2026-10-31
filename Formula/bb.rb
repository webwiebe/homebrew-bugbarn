class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.307"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.307.tar.gz"
      sha256 "af07abc1e1fe18d5f158773ae9d20e05693ba8e7619af9f4ac91324886ba52c7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.307.tar.gz"
      sha256 "8ebf629de8cee4f3f698687d5a2ef61846b2d45c5d4056698d881c7c68ea0793"
    end
  end

  def install
    bin.install "bb"
  end
end
