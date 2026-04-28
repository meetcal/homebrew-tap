class Meetcal < Formula
  desc "CLI for querying MeetCal lifting data"
  homepage "https://github.com/memohnsen/meetcal-cli"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/memohnsen/meetcal-cli/releases/download/v1.0.0/darwin-arm64.tar.gz"
      sha256 "cb3a6640bf42e5ffc1f388e05e07f3478730d98600e932809ca6f6e433086883"
    else
      url "https://github.com/memohnsen/meetcal-cli/releases/download/v1.0.0/darwin-x64.tar.gz"
      sha256 "175c57ea20e6bb4917a364cfc2b8bcdca0e8d17d27816efc7d64be19d3ac5e01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/memohnsen/meetcal-cli/releases/download/v1.0.0/linux-arm64.tar.gz"
      sha256 "e9546f4d7af43c235f9218edeba0f3b724caeca1beea13bf306df680319bf5b8"
    else
      url "https://github.com/memohnsen/meetcal-cli/releases/download/v1.0.0/linux-x64.tar.gz"
      sha256 "ff04391cf0e089dfaeb569d6788d0dedecdd5a7af74d897e3dadc963ba1204f1"
    end
  end

  def install
    platform_dir = if OS.mac?
      Hardware::CPU.arm? ? "darwin-arm64" : "darwin-x64"
    elsif Hardware::CPU.arm?
      "linux-arm64"
    else
      "linux-x64"
    end

    bin.install "#{platform_dir}/index" => "meetcal"
  end

  test do
    system "#{bin}/meetcal", "help"
  end
end
