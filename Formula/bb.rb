class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.339"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.339.tar.gz"
      sha256 "cebbad9d4a9a8743f937151294f592e7297b2a9d1d688ef08b64c12ce473a12e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.339.tar.gz"
      sha256 "4f21f5afaccb4205ef426b05f4e6aa8176eefeb162a7df800447982bf702a6e3"
    end
  end

  def install
    bin.install "bb"
  end
end
