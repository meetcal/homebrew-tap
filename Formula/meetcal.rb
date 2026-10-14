class Meetcal < Formula
  desc "CLI for querying MeetCal lifting data"
  homepage "https://github.com/meetcal/meetcal-app/tree/master/cli"
  version "3.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v3.0.0/darwin-arm64.tar.gz"
      sha256 "cb22f8d7fd9f5d1eb51f146eb431fe0247409f4860a78cbdeac29975d079f86a"
    else
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v3.0.0/darwin-x64.tar.gz"
      sha256 "e4fcb97f7862277ce0a14101375efef9638a9c655d5ed02a5787ef324367883a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v3.0.0/linux-arm64.tar.gz"
      sha256 "9b65a4152b32c8fd6195f6d04ffbae19102464676bf24db758705fd15bb604aa"
    else
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v3.0.0/linux-x64.tar.gz"
      sha256 "777c090d633e660e13baa4e4c3ef46924cfef6398249104c38de74a1996a9dde"
    end
  end

  def install
    bin.install "meetcal"
  end

  test do
    system bin/"meetcal", "--help"
  end
end
