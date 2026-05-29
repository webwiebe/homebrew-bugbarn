class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.42"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.42.tar.gz"
      sha256 "5c1db6a2f43646e77397cff13d73fe6eecf1b609b68b2e835b5601e2a66453c4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.42.tar.gz"
      sha256 "a8d4796b0a74fc6fb8eb69daed283bf7efac6d27c322bf565e47055ccead4876"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
