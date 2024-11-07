
class Synchroma < Formula
    desc "Synchroma is a tool to synchronize database schema from source to target. It will compare the schema and generate a SQL script to sync the schema from source to target."
    homepage "https://github.com/zlfzx/synchroma"
    version "1.0.0"
    
    if OS.mac?
        if Hardware::CPU.intel?
            url "https://github.com/zlfzx/synchroma/releases/download/v1.0.0/synchroma-darwin-amd64-1.0.0.tar.gz"
            sha256 "9ff879c12c7a81c9313a45841d8d27843ef0a39084268781295f15d48220db8d"
        elsif Hardware::CPU.arm?
            url "https://github.com/zlfzx/synchroma/releases/download/v1.0.0/synchroma-darwin-arm64-1.0.0.tar.gz"
            sha256 "7c2b5b3434a0bbe0241c571b7f936f8d560986d507525ca40984a6b33a720297"
        end
    elsif OS.linux?
        if Hardware::CPU.intel?
            url "https://github.com/zlfzx/synchroma/releases/download/v1.0.0/synchroma-linux-amd64-1.0.0.tar.gz"
            sha256 "578cbab8f1cf8aa0719d97f3f00cc0cd8d06842defe475989085e8428e42c316"
        elsif Hardware::CPU.arm?
            url "https://github.com/zlfzx/synchroma/releases/download/v1.0.0/synchroma-linux-arm64-1.0.0.tar.gz"
            sha256 "072775733e7a37d01a78fc871d325a1d28bbdb8db87e9ffa0aeb7fcc45d087a1"
        end
    end

    def install
        bin.install "synchroma"
    end

    test do
        system "#{bin}/synchroma", "version"
    end
end