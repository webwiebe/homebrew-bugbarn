class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.142"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.142.tar.gz"
      sha256 "b7248d7a4a7f1e550a04d926a4506b0e75b203ee1d7784fca6b68bcd4838bd89"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.142.tar.gz"
      sha256 "6012bc5434a16539b1d855a4b0e539d0aa49e4f929a8c26dbd9e71b59a4cd86c"
    end
  end

  def install
    bin.install "bb"
  end
end
