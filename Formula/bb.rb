class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.141"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.141.tar.gz"
      sha256 "3c7ef7658686239a42dd457a6215c0fe862c229c21dfcf8dfb2370dc9bc34a2b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.141.tar.gz"
      sha256 "4cbacab7952568de8121f8ee04e307fc141ca75cb8a2dc0fd1b669c46fec99db"
    end
  end

  def install
    bin.install "bb"
  end
end
