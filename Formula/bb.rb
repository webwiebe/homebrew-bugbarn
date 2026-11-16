class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.369"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.369.tar.gz"
      sha256 "696e6fbf84a94d811db9daf03c10dad6f9c05b1ffbeb4ed88dfaff0206e7e5ec"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.369.tar.gz"
      sha256 "414b71031ce5dc5932413cf8a589554ac82f18a50852b0dfe1f30e08ffd33c3a"
    end
  end

  def install
    bin.install "bb"
  end
end
