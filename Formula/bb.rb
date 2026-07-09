class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.125"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.125.tar.gz"
      sha256 "2f28dddb1c20e4c52f38ac66e791187fd74feb8580c41bc871740309dc7f9794"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.125.tar.gz"
      sha256 "5f45223f52c89ed1398ae6bbce0dda95fcf440e0218e197533795890a8215518"
    end
  end

  def install
    bin.install "bb"
  end
end
