<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&height=190&color=0:05080D,45:0066FF,100:00D4FF&text=SzCore+World&fontSize=42&fontColor=FFFFFF&animation=fadeIn&fontAlignY=38&desc=SzCore+Framework+%E2%80%A2+World+%26+Population&descAlignY=60&descSize=16" width="100%" alt="SzCore World" />

<img src="https://readme-typing-svg.demolab.com?font=Orbitron&weight=700&size=21&duration=2500&pause=850&color=00D4FF&center=true&vCenter=true&width=720&height=52&lines=World+%26+Population;Density+%E2%80%A2+Calm+AI+%E2%80%A2+Dispatch+Control" alt="SzCore World animated headline" />

<p><b>Ambient world and population controller for ped/traffic density, calm AI, wanted/dispatch suppression and server-side model blocking.</b></p>

<p>
<img src="https://img.shields.io/badge/SzCore-v1.4.0--rc1-8B5CF6?style=for-the-badge" alt="Version">
<img src="https://img.shields.io/badge/Type-World%20%26%20Population-00D4FF?style=for-the-badge" alt="Type">
<img src="https://img.shields.io/badge/FiveM-Resource-F40552?style=for-the-badge&logo=fivem&logoColor=white" alt="FiveM">
<img src="https://img.shields.io/badge/Lua-5.4-2C2D72?style=for-the-badge&logo=lua&logoColor=white" alt="Lua">
</p>

<p>
<a href="https://github.com/Szilko121/szcore_world/stargazers"><img src="https://img.shields.io/github/stars/Szilko121/szcore_world?style=flat-square&logo=github&color=00D4FF" alt="Stars"></a>
<a href="https://github.com/Szilko121/szcore_world/issues"><img src="https://img.shields.io/github/issues/Szilko121/szcore_world?style=flat-square&logo=github&color=EF4444" alt="Issues"></a>
<img src="https://img.shields.io/github/last-commit/Szilko121/szcore_world?style=flat-square&logo=github&color=22C55E" alt="Last commit">
</p>

<p><a href="https://github.com/Szilko121/SzCore-Framework"><b>Framework</b></a> • <a href="https://github.com/Szilko121/SzCore-Framework/tree/main/docs"><b>Docs</b></a> • <a href="https://github.com/Szilko121/SzCore-Recipe"><b>Recipe</b></a> • <a href="https://github.com/Szilko121/szcore_world/issues"><b>Issues</b></a></p>
</div>

---

## 🚀 Overview

`szcore_world` manages ambient GTA/FiveM population behavior without turning the core into a world-management monolith.

> Density multipliers require per-frame FiveM native calls; static world configuration is kept out of that hot loop.

## ✨ Highlights

| | Capability |
|---:|---|
| 🚗 | **Vehicle, random vehicle and parked-car density** |
| 🚶 | **Ped and scenario density profiles** |
| 🤝 | **Calm relationship groups** |
| 🚔 | **Wanted, dispatch and random-cop suppression** |
| 🌍 | **Boats, trains, garbage and HUD controls** |
| 🛡️ | **Server-side blacklisted model cancellation** |

## 📦 Installation

**Dependency:** `szcore`

```bash
git clone https://github.com/Szilko121/szcore_world.git "resources/[szcore]/szcore_world"
```

```cfg
ensure szcore_world
```

## 🔌 API Highlights

`SetDensity` · `GetDensity` · `SetProfile` · `GetProfile` · `IsModelBlacklisted`

## ⚡ Performance

The frame loop contains only natives that FiveM/GTA requires to be applied every frame. Other cleanup and rule enforcement use slower intervals or one-time setup.

No fixed resmon number is promised across different servers.

<div align="center">

[![Framework](https://img.shields.io/badge/SzCore-Framework-00D4FF?style=for-the-badge&logo=github)](https://github.com/Szilko121/SzCore-Framework)
[![Recipe](https://img.shields.io/badge/txAdmin-Recipe-2563EB?style=for-the-badge&logo=github)](https://github.com/Szilko121/SzCore-Recipe)

<br><br><sub>Built by <b>SzCode</b> for the FiveM community.</sub>
<img src="https://capsule-render.vercel.app/api?type=waving&height=90&section=footer&color=0:00D4FF,55:0066FF,100:05080D" width="100%" alt="SzCore footer" />

</div>
