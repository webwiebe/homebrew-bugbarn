class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.355"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.355.tar.gz"
      sha256 "3d101054ef8766f9a45843160ed2b2e1d095b3508a6035a018bfcf8e87082689"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.355.tar.gz"
      sha256 "2bcd2a4ed2ef46eb530434b4d21dd344b7c0aaed15296d805aa33809b4dc1ff6"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
