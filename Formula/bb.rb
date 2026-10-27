class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.292"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.292.tar.gz"
      sha256 "e9cece7a75677a2a80512b5e8702ad8e6dbb7280f2c98e0f31994d22c185c722"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.292.tar.gz"
      sha256 "087e7a56e6804a3908f80e35e630538929926ff6c3916687dfbb8082bc4b490f"
    end
  end

  def install
    bin.install "bb"
  end
end
