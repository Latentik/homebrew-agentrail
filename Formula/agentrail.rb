class Agentrail < Formula
  desc "Portable coding-agent handoff CLI"
  homepage "https://github.com/Latentik/agentrail"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Latentik/agentrail/releases/download/v0.2.2/agentrail-v0.2.2-macos-arm64.tar.gz"
      sha256 "13dd7f3efaa0aa54ad65eb0303d22819d68d2d8cc1934f026b0f9fb496fcd527"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Latentik/agentrail/releases/download/v0.2.2/agentrail-v0.2.2-linux-x86_64.tar.gz"
      sha256 "7f438614843efa18687bdfc7abf8128ed0962757829ce517b15efffebe56382a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Latentik/agentrail/releases/download/v0.2.2/agentrail-v0.2.2-linux-arm64.tar.gz"
      sha256 "f24089de73f63163c0515319315e6606db2a4757d856f5ea1bdbf36553739c9a"
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
