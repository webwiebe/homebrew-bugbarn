class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.388"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.388.tar.gz"
      sha256 "f11ab32b8abe5f393f84529f12695640d6b66f8ca3322b9e86395bb9b7eb6c29"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.388.tar.gz"
      sha256 "ff39025ccbca3223923697b460dd59f21f833b1c8bf9e8e407bdf5818e70293a"
    end
  end

  def install
    bin.install "bb"
  end
end
