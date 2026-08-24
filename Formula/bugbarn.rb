class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.163"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.163.tar.gz"
      sha256 "fe2064d8ca7d25861bda4622523a66baa9f4a5f1201593a788417c81323d677b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.163.tar.gz"
      sha256 "c1182f1a84e8dbf2d5d128a160f9d1b4feb73e94558adc0513895581d5a58e7d"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
