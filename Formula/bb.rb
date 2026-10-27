class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.289"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.289.tar.gz"
      sha256 "ae862a8794285f2cab784372a76cff3b1078a0c13be71749c54e91159862bdc3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.289.tar.gz"
      sha256 "aec529ea0bd6c95467bc34ae638324323353ec5114d31310e080a0255ad5e7bf"
    end
  end

  def install
    bin.install "bb"
  end
end
