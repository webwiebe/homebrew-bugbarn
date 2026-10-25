class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.278"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.278.tar.gz"
      sha256 "2fbc7e3b3f5a2dabb782e24aefa4987d17e39f6e72f945e5bc23d25d0eabd2cf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.278.tar.gz"
      sha256 "099b38a214a153b6957ef2ef81fca0e97b82235e16c28f9058c9a7b86a678bf2"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
