class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.338"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.338.tar.gz"
      sha256 "750d68e23f1cc85a24976b53c0c30885f385fce7024b9a32949ce2bb83f1881c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.338.tar.gz"
      sha256 "b9a492671217d36b3d6dc39c5907c22d7574277e4eb57f539c15b69f288ed4bc"
    end
  end

  def install
    bin.install "bb"
  end
end
