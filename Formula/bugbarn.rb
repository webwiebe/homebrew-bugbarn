class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.102"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.102.tar.gz"
      sha256 "b78bb516f5899f0275020c0390a4b96f4713c59c3932ed93ddcdb32dac1bb515"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.102.tar.gz"
      sha256 "990cd4d3739c7679dd44d36446d8c10183a4aa3f0005a6949a53c4bdee038b76"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
