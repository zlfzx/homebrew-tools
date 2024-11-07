
class Synchroma < Formula
    desc "Synchroma is a tool to synchronize database schema from source to target. It will compare the schema and generate a SQL script to sync the schema from source to target."
    homepage "https://github.com/zlfzx/synchroma"
    version "1.0.0"
    
    if OS.mac?
        if Hardware::CPU.intel?
            url "https://github.com/zlfzx/synchroma/releases/download/v1.0.0/synchroma-darwin-amd64-1.0.0.tar.gz"
            sha256 "f71eb79db67cb340b8387616816dbc4ad435e905f22596fdf5638e048aae67e4"
        elsif Hardware::CPU.arm?
            url "https://github.com/zlfzx/synchroma/releases/download/v1.0.0/synchroma-darwin-arm64-1.0.0.tar.gz"
            sha256 "ded8cb0898daba9d0dc2cb789509d7a248e8317388a4d8088025bbf6b895f303"
        end
    elsif OS.linux?
        if Hardware::CPU.intel?
            url "https://github.com/zlfzx/synchroma/releases/download/v1.0.0/synchroma-linux-amd64-1.0.0.tar.gz"
            sha256 "20738c1fc4988440a6580f9c2e6515db14e4b7857efad8b1f41da4e6d08ed6b2"
        elsif Hardware::CPU.arm?
            url "https://github.com/zlfzx/synchroma/releases/download/v1.0.0/synchroma-linux-arm64-1.0.0.tar.gz"
            sha256 "903cb20b22d905d55ac3c917d04b7238a5586a5b97ddc86d916e55c27a3f377b"
        end
    end

    def install
        bin.install "synchroma"
    end

    test do
        system "#{bin}/synchroma", "version"
    end
end