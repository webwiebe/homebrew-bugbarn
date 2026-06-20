class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.85"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.85.tar.gz"
      sha256 "58b8b07f757e4ac511bab972302f91f6c80ba9557174b56410828f69a7044257"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.85.tar.gz"
      sha256 "71a24171f13ff46e3cf9130aa150b92ed24b72dacc9db23dbf4b5b49f4d4184b"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
