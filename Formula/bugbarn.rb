class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.148"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.148.tar.gz"
      sha256 "043b50f4754614e13a9700c508ed0978fb97905b4220236d071a57bf8bd1481b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.148.tar.gz"
      sha256 "0d68990a6721180a18d822f1450818439640a9a5b4d6cca620ea733ff6af6787"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
