class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.3.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.3.9.tar.gz"
      sha256 "411a1b4c35137c0b7bcf53dbadeb2f8db875176a644bd914ada055f1c3883c3f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.3.9.tar.gz"
      sha256 "3e82136497940510b0eb0967b5cce185357de07ed5660b50c4ada3cec13fa941"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
