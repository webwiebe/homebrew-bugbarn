class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.248"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.248.tar.gz"
      sha256 "48492ea5b76a49de4cfd1e9eb8323236cf1b7633d37e26d9b50f861ea0ec7d9e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.248.tar.gz"
      sha256 "b1f39ab9810ea3a5ec1e2f43258dbb8fc88d814a9779f4caac46e4248be5e36a"
    end
  end

  def install
    bin.install "bb"
  end
end
