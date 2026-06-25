class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.102"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.102.tar.gz"
      sha256 "3ce4e51459631c5ac49737845f65d1285243c9e2bfd6f11be5a75ceec5f16b74"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.102.tar.gz"
      sha256 "4ce977fd89536d8271bcffad93798145310147cf83befdb7900a642a1a81c142"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
