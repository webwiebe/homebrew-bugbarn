class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.187"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.187.tar.gz"
      sha256 "5daa2c022401d1c1f513fa8fb9175843cf55c32db31cd09f9dd6926fae199570"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.187.tar.gz"
      sha256 "c0a5970dfbc1be5e70da6558098bfa8a1bcab7247808914ba8741b0c32bc00f9"
    end
  end

  def install
    bin.install "bb"
  end
end
