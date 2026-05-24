class Radpresence < Formula
  desc "RetroAchievements Discord Rich Presence background service"
  homepage "https://www.radpresence.com"
  url "https://github.com/raz0red/RADPresence/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e2cb832062fa2525f12c9330e081b35444882c38133ec242a22c83624f83b27b"
  license "MIT"
  head "https://github.com/raz0red/RADPresence.git", branch: "master"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X github.com/raz0red/radpresence/internal/buildinfo.Version=v#{version}
    ]
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/radiscordpresence"
  end

  service do
    run [opt_bin/"radpresence", "run"]
    keep_alive true
    log_path var/"log/radpresence.log"
    error_log_path var/"log/radpresence.log"
  end

  def caveats
    <<~EOS
      Before starting the service, save your RetroAchievements credentials:
        radpresence set --username YOUR_RA_USERNAME --apikey YOUR_API_KEY

      Then start the service:
        brew services start radpresence

      Or run it manually in the foreground:
        radpresence run
    EOS
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/radpresence version")
  end
end
