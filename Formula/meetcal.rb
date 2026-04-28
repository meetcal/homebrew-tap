class Meetcal < Formula
  desc "CLI for querying MeetCal lifting data"
  homepage "https://github.com/memohnsen/meetcal-cli"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/memohnsen/meetcal-cli/releases/download/v1.0.0/darwin-arm64.tar.gz"
      sha256 "d61ca36ef5486799414e213a137a4e284ca6641e22a127afa1835925087f9f7f"
    else
      url "https://github.com/memohnsen/meetcal-cli/releases/download/v1.0.0/darwin-x64.tar.gz"
      sha256 "30dacdd51f6a0732fe88b5bf629bcd3aecafc41855cc199312e8f5ec6c70e5f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/memohnsen/meetcal-cli/releases/download/v1.0.0/linux-arm64.tar.gz"
      sha256 "efbacb33e7b301fe432c2017e2d473e8872e140c44328e8bb1d1b08e08873b2a"
    else
      url "https://github.com/memohnsen/meetcal-cli/releases/download/v1.0.0/linux-x64.tar.gz"
      sha256 "a1a895a1c554778cf61be87c77bbcc75fbee499962bf06ce900bbf5ed7eedaa2"
    end
  end

  def install
    executable = File.exist?("index") ? "index" : Dir["*/index"].first
    bin.install executable => "meetcal"
  end

  test do
    system "#{bin}/meetcal", "help"
  end
end
