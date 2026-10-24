class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.272"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.272.tar.gz"
      sha256 "f8477c1911320a07959645d46e3c49f2c3a5f11c8331f8285d93c6fd6178a62b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.272.tar.gz"
      sha256 "7829d4845dadbe37f06d721f050b24ad68fb9a908119d5ac458abde982f061ca"
    end
  end

  def install
    bin.install "bb"
  end
end
