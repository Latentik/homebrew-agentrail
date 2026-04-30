class Agentrail < Formula
  desc "Portable coding-agent handoff CLI"
  homepage "https://github.com/Latentik/agentrail"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Latentik/agentrail/releases/download/v0.2.2/agentrail-v0.2.2-macos-arm64.tar.gz"
      sha256 "5582c0a5fa16e0b5c821f5e46fdc1087cf426bd79348586250e15e0861f434ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Latentik/agentrail/releases/download/v0.2.2/agentrail-v0.2.2-linux-x86_64.tar.gz"
      sha256 "96a8ff144c3ee1ad609f59462bf14d961e27650286e9e9d76c7111682bc9d6fc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Latentik/agentrail/releases/download/v0.2.2/agentrail-v0.2.2-linux-arm64.tar.gz"
      sha256 "35669bb1570e10b26f9aeea8fa58cf557a71c8151de39193eb4700f854b2340c"
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
