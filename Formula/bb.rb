class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.257"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.257.tar.gz"
      sha256 "b092c733a88ca0d5b49ff70fffee603aa18bac662715b33e0f9f7e838eb18aa1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.257.tar.gz"
      sha256 "bf8f501ad80fdfdb94d330afa537b66273dd1c101fec5173bbc17ab688fb0928"
    end
  end

  def install
    bin.install "bb"
  end
end
