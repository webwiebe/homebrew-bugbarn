class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.150"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.150.tar.gz"
      sha256 "9bbb7d949890b0dcb3f8b9cd31bc627f7be73caf987ffdfa1d2f32a0b87557b0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.150.tar.gz"
      sha256 "cd73390678f642c0088fd38ee3709916b9c8bac0b7de67613264cf8ef99b0340"
    end
  end

  def install
    bin.install "bb"
  end
end
