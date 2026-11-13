// Kailen Patel — resume reproduced from the supplied PDF / DOCX.
// Edit this file in VS Code using the Tinymist extension.
// All styling is deliberately black and white.
//
// Compile: typst compile KailenPatelResume.typ KailenPatelResume_Typst.pdf
//
// Spacing revision: increased paragraph leading and component spacing.
// If you want a little more/less breathing room, adjust:
//   - par(leading: ...): lines that wrap inside bullets
//   - bullet(... below: ...): separation between bullet items
//   - entry(... below: ...): separation between title/role rows
//   - section(... above/below: ...): headings and divider rules
//
// Uses only Times New Roman to avoid the missing "Tinos" font warning.

#set page(
  paper: "us-letter",
  margin: (top: 0.38in, bottom: 0.18in, left: 0.40in, right: 0.36in),
)
#set text(font: "Times New Roman", size: 12pt, fill: black)
#set par(leading: 0.65em, spacing: 0pt)

// Simple flow-based layout: entries and bullet points reflow as you edit.
#let section(title) = block(width: 100%, above: 18pt, below: 10pt)[
  #grid(
    columns: (1fr,),
    row-gutter: 4pt,
    inset: 0pt,
    [#text(weight: "bold")[#title]],
    [#line(length: 100%, stroke: 0.4pt + black)],
  )
]
#let entry(lhs, rhs) = block(width: 100%, above: 0pt, below: 8pt)[
  #grid(
    columns: (1fr, auto),
    gutter: 0pt,
    inset: 0pt,
    align: (left, right),
    lhs,
    rhs,
  )
]
#let bullet(body) = block(width: 100%, above: 0pt, below: 11pt, inset: (left: 8pt))[
  #grid(
    columns: (10pt, 1fr),
    gutter: 0pt,
    inset: 0pt,
    [-],
    body,
  )
]

// ── Header ──────────────────────────────────────────────────────
#align(center)[
  #text(size: 16pt, weight: "bold")[Kailen Patel]
  #linebreak()
  #text(size: 11pt)[630-501-9661 | kcpatel2\@illinois.edu | www.linkedin.com/in/kailenpatel | github.com/kcp1023]
]

// ── Education ───────────────────────────────────────────────────
#section("EDUCATION")
#entry([*University of Illinois at Urbana-Champaign*], [*Expected May 2028*])
#entry([_Bachelor of Science in Computer Science_], [_GPA: 3.33_])

// ── Work experience ─────────────────────────────────────────────
#section("WORK EXPERIENCE")
#entry([*Infraly LLC*], [*West Chicago, IL*])
#entry([_Server Technician_], [_March 2024 - Present_])
#bullet([Assemble servers with new motherboards, CPUs, RAM, storage, and cooling to expand computing capacity for client workloads])
#bullet([Upgrade servers with higher-performance components or peripherals, including 10GbE NICs, which increase network capacity by up to 10x])
#bullet([Provide 24/7 on-call support to quickly fix urgent server issues like component failures, maintaining 99.99% uptime])

// ── Projects ────────────────────────────────────────────────────
#section("PROJECTS")
#entry([*Networking Homelab*], [_July 2026 - Present_])
#bullet([Configured WAN/LAN interfaces, DNS, DHCP, and firewall rules to support an expanding network of servers, client devices, and services])
#bullet([Implemented WireGuard VPN, SSH, and MFA, allowing for secure remote access without exposing management interfaces directly to the internet])
#bullet([Deployed Prometheus and Grafana with Docker Compose to visualize network bandwidth, server temperatures, and hardware health, enabling centralized diagnostics and troubleshooting])
#bullet([Resolved overlapping-subnet routing conflicts by migrating to a non-conflicting LAN subnet, restoring access to homelab devices for all remote VPN clients])

#block(above: 6pt, below: 0pt)
#entry([*Distributed Command Execution & Membership Service*], [_August 2026 - Present_])
#bullet([Built the networking and cluster management layer for a distributed system of 10 Linux VMs in Go, supporting dynamic node joins, leaves, crashes, and rejoins])
#bullet([Implemented peer-to-peer gossip-based failure detection with heartbeats and SWIM-style suspicion, which detects failures within 3 seconds and propagates membership changes across the system within 6 seconds])
#bullet([Built a distributed command execution service using concurrent TCP connections and goroutines, enabling system-wide log querying and streamlined debugging from a single node])
#bullet([Simulated an unreliable network by randomly dropping gossip messages and maintained 0 false-positive failure detections up to 20% message loss])

// ── Technical skills and certifications ─────────────────────────
#section("TECHNICAL SKILLS & CERTIFICATIONS")
#entry([*Programming Languages:* C/C++, Go, Python, SQL, Java], none)
// #block(above: 0pt, below: 11pt)[*Programming Languages:* C/C++, Go, Python, SQL, Java]
#entry([*Platforms/Tools:* Linux, OPNsense/FreeBSD, Docker, Prometheus, Grafana, WireGuard, Git], none)
// #block(above: 0pt, below: 6pt)[*Platforms/Tools:* Linux, OPNsense/FreeBSD, Docker, Prometheus, Grafana, WireGuard, Git]
#entry([*CompTIA A+ ce Certification*], none)
#entry([_Issued by CompTIA_], [_August 2025 - August 2028_])
#bullet([Proficiency in hardware/software troubleshooting, networking fundamentals, and IT security])
#bullet([Practical knowledge of IP addressing, network ports/protocols, and troubleshooting networks])
