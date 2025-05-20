# All Kerala Roleplay - V5-OMP

Welcome to the **official public release** of the SA-MP roleplay script used in the All Kerala Roleplay server. This script was developed and maintained by **NAJU (najuaircrack)** with the intention of providing a semi-optimized, clean, and functional roleplay base for Open.MP-based SA-MP servers.

This release was made to ensure script integrity and transparency, especially in response to threats of unauthorized leaks. Please use this repository as the **only official source** of the AKRP V5-OMP script.

---

## About All Kerala Roleplay

**All Kerala Roleplay (AKRP)** is a regional roleplay community founded in Kerala, India. Focused on realism and creative roleplay scenarios, AKRP provided a stable and immersive multiplayer experience using the SA-MP engine.

- **Founder**: SHAZ  
- **Owner**: CARLO  
- **Lead Developer**: NAJU (najuaircrack)  
- **Script Version**: V5-OMP  
- **Script Date**: 12/09/2024  

---

## Technologies Used

- **Game Mode Engine**: [Open.MP](https://open.mp) (recommended for stability and performance)
- **Script Language**: PAWN (v3.10.10)
- **Database**: MySQL (R41-4 plugin)
- **Libraries**:
  - `open.mp` standard library
  - YSI (for core utilities)
  - Streamer
  - MySQL plugin by BlueG

---

## Performance

The script is **intermediately optimized**, capable of supporting up to **70 players concurrently** on a mid-range VPS. It includes lightweight database interactions, cached data systems, and structured code organization for reliability.

---

## Setup Instructions

### 1. Configure Basic Settings

Open the file:

config.json

And fill in your details:
- MySQL database host, name, username, password
- Server hostname, port
- Any other relevant flags

---

### 2. Setup Database Connection

Go to:
/core/definitions.pwn

Inside that file, update the following:
- `MYSQL_HOSTNAME`
- `MYSQL_USERNAME`
- `MYSQL_PASSWORD`
- `MYSQL_DATABASE`

Ensure your MySQL server is running and the credentials are correct.

---

### 3. Compile the Gamemode

Extract The `include.rar` in /pawno.
Use the Pawn compiler (3.10.10 recommended). Compile the main `AKRPV5.pwn` file to generate the `.amx`.

Place all required plugins (`.so` / `.dll`), includes, and compiled files into your server directory.

---

### 4. Run the Server

Start your server using:

omp-server.exe (or `./omp-server` on Linux)

Make sure the MySQL plugin is correctly loaded and your config file is valid.

---

## License & Usage

This script is released **only for public educational and non-commercial use**. Any commercial usage, resale, or rebranding without explicit permission is prohibited.

You may:
- Fork and modify for learning or personal use
- Share improvements with the community via pull requests
- Raise issues and contribute fixes

You may not:
- Sell this script or use it in paid services
- Claim ownership or modify author credits
- Re-upload this script to third-party sites

---

## Support & Contributions

If you face any issues:
- Use the [Issues tab](https://github.com/najuaircrack/AKRPV5/issues) to report bugs or request fixes.
- All genuine issues will be reviewed and resolved as quickly as possible.

---

## Contact

**Author**: NAJU  
**Email**: Kcnajwan7@gmail.com  
**GitHub**: https://github.com/najuaircrack

---

## Credits

- Najuaircrack (Author)
- AKRP-TEAM 
- Open.MP development team  
- SA-MP community for inspiration and tools  
- BlueG for MySQL plugin  
- YSI library maintainers  

---