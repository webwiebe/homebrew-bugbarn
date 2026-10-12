class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.226"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.226.tar.gz"
      sha256 "5013ea9d613b3cd8762498996f1e2124bf1edc07b5d983fa9cfd79a76db18c26"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.226.tar.gz"
      sha256 "86cd96352b35c8be0681dcdbeb73db8a3ceebcf43398f48cfe4feb23630649b0"
    end
  end

  def install
    bin.install "bb"
  end
end
