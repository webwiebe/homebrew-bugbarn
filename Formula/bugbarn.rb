class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.274"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.274.tar.gz"
      sha256 "dd5549153f4f3172594a3ba32131291f54a6251ee6827007e64eec018d445335"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.274.tar.gz"
      sha256 "0fcda7a60c437f2369dcd53b3a2d603b64e71e9eb7077c177ad67f4a1c3186fb"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
