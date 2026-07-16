class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.149"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.149.tar.gz"
      sha256 "427599c087e4fe641a4be50b4fd233b029cb0d62a863b8a2afd27ece443c22ea"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.149.tar.gz"
      sha256 "13157cee6e986a54f627bc6bc1c747dcd7ea8d7aa37f7aa97dce3716279b7519"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
