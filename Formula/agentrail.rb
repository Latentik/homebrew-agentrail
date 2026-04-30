class Agentrail < Formula
  desc "Portable coding-agent handoff CLI"
  homepage "https://github.com/Latentik/agentrail"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Latentik/agentrail/releases/download/v0.2.2/agentrail-v0.2.2-macos-arm64.tar.gz"
      sha256 "2856554c0790d1548c5cb837c278182664617a0e0f4c9d2d85652769cef09223"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Latentik/agentrail/releases/download/v0.2.2/agentrail-v0.2.2-linux-x86_64.tar.gz"
      sha256 "419cdbf6f6ff789568b714ce7ee5e2e1b1160a8c29cf0f68f704f4161dc7d2fc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Latentik/agentrail/releases/download/v0.2.2/agentrail-v0.2.2-linux-arm64.tar.gz"
      sha256 "aea570439438f9f6f3df4dfbe8ceb198855f33f6692ee171d8d39ea658146b86"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"agentrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentrail --version")
  end
end
