import { useState } from "react";

const ACCENT = "#007AFF";

const screens = ["Library", "Study", "Session", "Stats"];

const levelColors = {
  N5: "#34C759", N4: "#007AFF", N3: "#FF9500", N2: "#AF52DE", N1: "#FF3B30",
};

// ── shared phone shell ──────────────────────────────────────────────────────
function Phone({ children, activeTab, onTab }) {
  return (
    <div style={{
      width: 320, background: "#F2F2F7", borderRadius: 44,
      boxShadow: "0 32px 80px rgba(0,0,0,.28), 0 0 0 10px #1C1C1E",
      overflow: "hidden", display: "flex", flexDirection: "column",
      fontFamily: "-apple-system, BlinkMacSystemFont, 'SF Pro Display', sans-serif",
      height: 640, position: "relative",
    }}>
      {/* status bar */}
      <div style={{ background: "#fff", padding: "12px 20px 6px", display: "flex", justifyContent: "space-between", fontSize: 12, fontWeight: 600 }}>
        <span>9:41</span>
        <span>●●● WiFi 🔋</span>
      </div>
      {/* content */}
      <div style={{ flex: 1, minHeight: 0, overflow: "hidden", display: "flex", flexDirection: "column" }}>
        {children}
      </div>
      {/* tab bar */}
      <div style={{ background: "rgba(255,255,255,.92)", backdropFilter: "blur(20px)", borderTop: "1px solid #E5E5EA", display: "flex", padding: "8px 0 16px" }}>
        {[
          { id: "Library", icon: "📚", label: "Library" },
          { id: "Study",   icon: "🎓", label: "Study"   },
          { id: "Stats",   icon: "📊", label: "Stats"   },
        ].map(t => (
          <button key={t.id} onClick={() => onTab(t.id)}
            style={{ flex: 1, background: "none", border: "none", cursor: "pointer",
              display: "flex", flexDirection: "column", alignItems: "center", gap: 2,
              color: activeTab === t.id ? ACCENT : "#8E8E93", fontSize: 10, fontWeight: 600 }}>
            <span style={{ fontSize: 22 }}>{t.icon}</span>
            {t.label}
          </button>
        ))}
      </div>
    </div>
  );
}

// ── Library screen ──────────────────────────────────────────────────────────
const sampleKanji = [
  { c:"日", m:"sun",   lv:"N5", st:4  },{ c:"月", m:"moon",  lv:"N5", st:4  },
  { c:"火", m:"fire",  lv:"N5", st:4  },{ c:"水", m:"water", lv:"N5", st:4  },
  { c:"木", m:"tree",  lv:"N5", st:4  },{ c:"金", m:"gold",  lv:"N5", st:8  },
  { c:"山", m:"mountain",lv:"N5",st:3 },{ c:"川", m:"river", lv:"N5", st:3  },
  { c:"人", m:"person",lv:"N5", st:2  },{ c:"口", m:"mouth", lv:"N5", st:3  },
  { c:"目", m:"eye",   lv:"N5", st:5  },{ c:"手", m:"hand",  lv:"N5", st:4  },
  { c:"足", m:"foot",  lv:"N4", st:7  },{ c:"耳", m:"ear",   lv:"N4", st:6  },
  { c:"心", m:"heart", lv:"N3", st:4  },{ c:"力", m:"power", lv:"N4", st:2  },
];

function LibraryScreen() {
  const [filter, setFilter] = useState("All");
  const [search, setSearch] = useState("");
  const levels = ["All", "N5", "N4", "N3", "N2", "N1"];
  const visible = sampleKanji.filter(k =>
    (filter === "All" || k.lv === filter) &&
    (search === "" || k.m.includes(search) || k.c.includes(search))
  );
  const statuses = ["mastered","learned","learned","new","mastered","learned","new","learned","mastered","new","learned","mastered","new","new","new","new"];

  return (
    <div style={{ flex: 1, minHeight: 0, display: "flex", flexDirection: "column", overflow: "hidden" }}>
      <div style={{ background: "#fff", padding: "8px 16px 0" }}>
        <div style={{ fontSize: 28, fontWeight: 700, paddingBottom: 8 }}>Library</div>
        <div style={{ background: "#F2F2F7", borderRadius: 10, padding: "8px 12px", display: "flex", alignItems: "center", gap: 8, marginBottom: 8 }}>
          <span style={{ color: "#8E8E93" }}>🔍</span>
          <input value={search} onChange={e => setSearch(e.target.value)}
            placeholder="Search kanji, meaning, reading…"
            style={{ border: "none", background: "none", outline: "none", fontSize: 14, flex: 1 }} />
        </div>
        <div style={{ display: "flex", gap: 6, overflowX: "auto", paddingBottom: 10 }}>
          {levels.map(l => (
            <button key={l} onClick={() => setFilter(l)}
              style={{ border: "none", borderRadius: 20, padding: "5px 14px", cursor: "pointer",
                background: filter === l ? ACCENT : "#E5E5EA",
                color: filter === l ? "#fff" : "#000", fontWeight: 600, fontSize: 13, whiteSpace: "nowrap" }}>
              {l}
            </button>
          ))}
        </div>
      </div>
      <div style={{ flex: 1, minHeight: 0, overflowY: "auto", padding: 12,
        display: "grid", gridTemplateColumns: "repeat(4, 1fr)", gap: 8, alignContent: "start" }}>
        {visible.map((k, i) => {
          const st = statuses[i % statuses.length];
          const border = st === "mastered" ? "#34C759" : st === "learned" ? ACCENT : "#D1D1D6";
          return (
            <div key={k.c} style={{ background: "#fff", borderRadius: 14,
              border: `2px solid ${border}`, display: "flex", flexDirection: "column",
              alignItems: "center", justifyContent: "center", padding: "8px 4px", gap: 2 }}>
              <span style={{ fontSize: 28, lineHeight: 1 }}>{k.c}</span>
              <span style={{ fontSize: 9, color: "#8E8E93", textAlign: "center" }}>{k.m}</span>
            </div>
          );
        })}
      </div>
    </div>
  );
}

// ── Study screen ────────────────────────────────────────────────────────────
function StudyScreen({ onStartSession }) {
  const [levels, setLevels] = useState(new Set(["N5"]));
  const toggle = lv => setLevels(prev => {
    const s = new Set(prev);
    if (s.has(lv) && s.size > 1) s.delete(lv); else s.add(lv);
    return s;
  });
  const progresses = { N5: 0.62, N4: 0.28, N3: 0.05, N2: 0, N1: 0 };
  const due = 12;

  return (
    <div style={{ flex: 1, minHeight: 0, overflowY: "auto", padding: "0 0 8px" }}>
      <div style={{ background: "#fff", padding: "8px 16px 12px" }}>
        <div style={{ fontSize: 28, fontWeight: 700 }}>Study</div>
      </div>
      <div style={{ padding: "12px 16px", display: "flex", flexDirection: "column", gap: 14 }}>
        {/* due banner */}
        <div style={{ background: "#fff", borderRadius: 16, padding: 16, display: "flex", alignItems: "center", gap: 14 }}>
          <div style={{ width: 52, height: 52, borderRadius: 26, background: `${ACCENT}22`,
            display: "flex", alignItems: "center", justifyContent: "center",
            fontSize: 22, fontWeight: 700, color: ACCENT }}>{due}</div>
          <div>
            <div style={{ fontWeight: 700, fontSize: 15 }}>Cards due today</div>
            <div style={{ color: "#8E8E93", fontSize: 13 }}>Keep your streak going!</div>
          </div>
        </div>

        {/* level selector */}
        <div>
          <div style={{ display: "flex", justifyContent: "space-between", alignItems: "center", marginBottom: 10 }}>
            <span style={{ fontWeight: 700, fontSize: 15 }}>Study levels</span>
            <span style={{ color: ACCENT, fontSize: 13, fontWeight: 600 }}>Edit</span>
          </div>
          <div style={{ display: "flex", gap: 8, overflowX: "auto" }}>
            {Object.entries(progresses).map(([lv, prog]) => (
              <div key={lv} onClick={() => toggle(lv)} style={{ cursor: "pointer",
                background: levels.has(lv) ? `${levelColors[lv]}14` : "#fff",
                border: `2px solid ${levels.has(lv) ? levelColors[lv] : "transparent"}`,
                borderRadius: 14, padding: "10px 12px", minWidth: 110, flexShrink: 0 }}>
                <div style={{ display: "flex", justifyContent: "space-between", alignItems: "center" }}>
                  <span style={{ fontWeight: 700, color: levelColors[lv] }}>{lv}</span>
                  {levels.has(lv) && <span style={{ fontSize: 11, color: levelColors[lv] }}>✓</span>}
                </div>
                <div style={{ fontSize: 11, color: "#8E8E93", marginTop: 2 }}>
                  {lv === "N5" ? 80 : lv === "N4" ? 125 : lv === "N3" ? 137 : lv === "N2" ? 181 : 196} kanji
                </div>
                <div style={{ height: 5, background: `${levelColors[lv]}22`, borderRadius: 3, marginTop: 8 }}>
                  <div style={{ height: 5, background: levelColors[lv], borderRadius: 3, width: `${prog*100}%` }} />
                </div>
                <div style={{ fontSize: 10, color: levelColors[lv], fontWeight: 600, marginTop: 4 }}>
                  {Math.round(prog*100)}%
                </div>
              </div>
            ))}
          </div>
        </div>

        {/* start button */}
        <button onClick={onStartSession} style={{
          background: ACCENT, border: "none", borderRadius: 16, padding: "16px", cursor: "pointer",
          display: "flex", alignItems: "center", justifyContent: "center", gap: 10,
          color: "#fff", fontSize: 16, fontWeight: 700 }}>
          ▶ Start Review ({due})
        </button>

        {/* quick stats */}
        <div style={{ background: "#fff", borderRadius: 16, padding: "14px 0", display: "flex" }}>
          {[["47","Learned","📖"],["12","Mastered","⭐"],["5","Streak","🔥"]].map(([v,l,i], idx) => (
            <div key={l} style={{ flex: 1, display: "flex", flexDirection: "column",
              alignItems: "center", gap: 2, borderRight: idx < 2 ? "1px solid #E5E5EA" : "none" }}>
              <span style={{ fontSize: 14 }}>{i}</span>
              <span style={{ fontWeight: 700, fontSize: 17 }}>{v}</span>
              <span style={{ fontSize: 11, color: "#8E8E93" }}>{l}</span>
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}

// ── Session (flashcard) screen ──────────────────────────────────────────────
function SessionScreen({ onBack }) {
  const [flipped, setFlipped] = useState(false);
  const [rated, setRated]     = useState(false);
  const [idx, setIdx]         = useState(0);

  const cards = [
    { c:"愛", m:["love","affection"], on:"アイ", kun:"めで", ex:"愛情", exR:"あいじょう", exM:"affection", lv:"N3" },
    { c:"感", m:["feeling","emotion"],on:"カン",  kun:"—",   ex:"感謝", exR:"かんしゃ",   exM:"gratitude", lv:"N3" },
    { c:"夢", m:["dream"],            on:"ム",    kun:"ゆめ", ex:"夢中", exR:"むちゅう",   exM:"absorbed",  lv:"N3" },
  ];
  const card = cards[idx % cards.length];

  const handleRate = () => {
    setRated(true);
    setTimeout(() => { setFlipped(false); setRated(false); setIdx(i => i+1); }, 300);
  };

  const ratings = [
    { label:"Again", emoji:"🔴", color:"#FF3B30" },
    { label:"Hard",  emoji:"🟠", color:"#FF9500" },
    { label:"Good",  emoji:"🟢", color:"#34C759" },
    { label:"Easy",  emoji:"⭐", color:"#007AFF" },
  ];

  return (
    <div style={{ flex: 1, display: "flex", flexDirection: "column", background: "#F2F2F7" }}>
      {/* header */}
      <div style={{ padding: "12px 16px", display: "flex", alignItems: "center", justifyContent: "space-between" }}>
        <button onClick={onBack} style={{ width: 32, height: 32, borderRadius: 16, background: "#E5E5EA",
          border: "none", cursor: "pointer", fontSize: 16 }}>✕</button>
        <span style={{ color: "#8E8E93", fontSize: 13 }}>{idx + 1} / 12</span>
        {idx > 0
          ? <span style={{ background: "#34C75918", color: "#34C759", borderRadius: 20, padding: "4px 10px", fontSize: 13, fontWeight: 700 }}>83%</span>
          : <div style={{ width: 44 }} />}
      </div>

      {/* progress bar */}
      <div style={{ margin: "0 16px 16px", height: 4, background: "#E5E5EA", borderRadius: 2 }}>
        <div style={{ height: 4, background: ACCENT, borderRadius: 2, width: `${(idx/12)*100}%`, transition: "width .3s" }} />
      </div>

      {/* card */}
      <div style={{ flex: 1, display: "flex", alignItems: "center", justifyContent: "center", padding: "0 20px" }}>
        <div onClick={() => !flipped && setFlipped(true)} style={{ cursor: flipped ? "default" : "pointer",
          background: "#fff", borderRadius: 28, width: "100%", minHeight: 280,
          boxShadow: "0 8px 32px rgba(0,0,0,.10)", display: "flex", flexDirection: "column",
          alignItems: "center", justifyContent: "center", padding: 24, gap: 12, transition: "all .3s" }}>

          {/* level badge */}
          <div style={{ background: `${levelColors[card.lv]}22`, color: levelColors[card.lv],
            borderRadius: 20, padding: "3px 12px", fontSize: 12, fontWeight: 700,
            border: `1px solid ${levelColors[card.lv]}44` }}>{card.lv}</div>

          {/* kanji */}
          <div style={{ fontSize: flipped ? 60 : 96, fontWeight: 200, lineHeight: 1 }}>{card.c}</div>

          {!flipped ? (
            <div style={{ color: "#C7C7CC", fontSize: 14 }}>Tap to reveal</div>
          ) : (
            <>
              <div style={{ fontWeight: 700, fontSize: 20, textAlign: "center" }}>{card.m.join(" · ")}</div>
              <div style={{ height: 1, background: "#E5E5EA", width: "60%", margin: "4px 0" }} />
              <div style={{ display: "flex", gap: 28 }}>
                <div style={{ textAlign: "center" }}>
                  <div style={{ color: "#FF3B30", fontSize: 11, fontWeight: 600 }}>On'yomi</div>
                  <div style={{ fontWeight: 600 }}>{card.on}</div>
                </div>
                <div style={{ textAlign: "center" }}>
                  <div style={{ color: ACCENT, fontSize: 11, fontWeight: 600 }}>Kun'yomi</div>
                  <div style={{ fontWeight: 600 }}>{card.kun}</div>
                </div>
              </div>
              <div style={{ background: "#F2F2F7", borderRadius: 12, padding: "10px 16px", textAlign: "center", marginTop: 4 }}>
                <div style={{ fontWeight: 600, fontSize: 16 }}>{card.ex}</div>
                <div style={{ color: "#8E8E93", fontSize: 12 }}>{card.exR} — {card.exM}</div>
              </div>
            </>
          )}
        </div>
      </div>

      {/* rating buttons */}
      <div style={{ padding: "16px 16px 8px" }}>
        {!flipped ? (
          <button onClick={() => setFlipped(true)} style={{ width: "100%", background: "none", border: "none",
            color: "#8E8E93", fontSize: 14, cursor: "pointer", padding: 8 }}>Tap card to reveal</button>
        ) : (
          <div style={{ display: "flex", gap: 8 }}>
            {ratings.map(r => (
              <button key={r.label} onClick={handleRate} style={{ flex: 1, background: `${r.color}18`,
                border: `1px solid ${r.color}55`, borderRadius: 14, padding: "10px 0", cursor: "pointer",
                display: "flex", flexDirection: "column", alignItems: "center", gap: 3 }}>
                <span style={{ fontSize: 16 }}>{r.emoji}</span>
                <span style={{ fontSize: 11, fontWeight: 700, color: r.color }}>{r.label}</span>
              </button>
            ))}
          </div>
        )}
      </div>
    </div>
  );
}

// ── Stats screen ────────────────────────────────────────────────────────────
function StatsScreen() {
  const levels = [
    { lv:"N5", prog:0.62 },{ lv:"N4", prog:0.28 },
    { lv:"N3", prog:0.05 },{ lv:"N2", prog:0.00 },{ lv:"N1", prog:0.00 },
  ];
  // fake heatmap: last 12 weeks
  const heatmap = Array.from({ length: 84 }, (_, i) => Math.random() > 0.55);

  return (
    <div style={{ flex: 1, minHeight: 0, overflowY: "auto" }}>
      <div style={{ background: "#fff", padding: "8px 16px 12px" }}>
        <div style={{ fontSize: 28, fontWeight: 700 }}>Statistics</div>
      </div>
      <div style={{ padding: "12px 16px", display: "flex", flexDirection: "column", gap: 14 }}>

        {/* KPI strip */}
        <div style={{ background: "#fff", borderRadius: 18, padding: "14px 0", display: "flex" }}>
          {[["5","Streak","🔥","#FF9500"],["142","Reviews","🔄",ACCENT],["76%","Accuracy","✅","#34C759"]].map(([v,l,i,c], idx) => (
            <div key={l} style={{ flex: 1, display: "flex", flexDirection: "column",
              alignItems: "center", gap: 3, borderRight: idx < 2 ? "1px solid #E5E5EA" : "none" }}>
              <span style={{ fontSize: 18 }}>{i}</span>
              <span style={{ fontWeight: 700, fontSize: 20, color: c }}>{v}</span>
              <span style={{ fontSize: 11, color: "#8E8E93" }}>{l}</span>
            </div>
          ))}
        </div>

        {/* mastery */}
        <div style={{ background: "#fff", borderRadius: 18, padding: 16 }}>
          <div style={{ fontWeight: 700, marginBottom: 12 }}>Mastery Overview</div>
          {[["Mastered",12,719,"#34C759"],["In Progress",35,719,ACCENT],["Not Started",672,719,"#D1D1D6"]].map(([l,v,t,c]) => (
            <div key={l} style={{ display: "flex", alignItems: "center", gap: 8, marginBottom: 10 }}>
              <div style={{ width: 8, height: 8, borderRadius: 4, background: c, flexShrink: 0 }} />
              <div style={{ fontSize: 13, width: 90, flexShrink: 0 }}>{l}</div>
              <div style={{ flex: 1, height: 7, background: `${c}22`, borderRadius: 4 }}>
                <div style={{ height: 7, background: c, borderRadius: 4, width: `${(v/t)*100}%` }} />
              </div>
              <div style={{ fontSize: 12, fontWeight: 700, color: c, width: 28, textAlign: "right" }}>{v}</div>
            </div>
          ))}
        </div>

        {/* level progress */}
        <div style={{ background: "#fff", borderRadius: 18, padding: 16 }}>
          <div style={{ fontWeight: 700, marginBottom: 12 }}>Progress by Level</div>
          {levels.map(({ lv, prog }) => (
            <div key={lv} style={{ display: "flex", alignItems: "center", gap: 10, marginBottom: 10 }}>
              <span style={{ fontWeight: 700, color: levelColors[lv], width: 24, fontSize: 13 }}>{lv}</span>
              <div style={{ flex: 1, height: 9, background: `${levelColors[lv]}22`, borderRadius: 5 }}>
                <div style={{ height: 9, background: levelColors[lv], borderRadius: 5, width: `${prog*100}%`, transition: "width 1s" }} />
              </div>
              <span style={{ fontSize: 12, fontWeight: 700, color: levelColors[lv], width: 32, textAlign: "right" }}>
                {Math.round(prog*100)}%
              </span>
            </div>
          ))}
        </div>

        {/* heatmap */}
        <div style={{ background: "#fff", borderRadius: 18, padding: 16 }}>
          <div style={{ fontWeight: 700, marginBottom: 12 }}>Activity (last 12 weeks)</div>
          <div style={{ display: "flex", gap: 3 }}>
            {Array.from({ length: 12 }, (_, w) => (
              <div key={w} style={{ display: "flex", flexDirection: "column", gap: 3 }}>
                {Array.from({ length: 7 }, (_, d) => {
                  const studied = heatmap[w * 7 + d];
                  return (
                    <div key={d} style={{ width: 14, height: 14, borderRadius: 3,
                      background: studied ? ACCENT : "#E5E5EA" }} />
                  );
                })}
              </div>
            ))}
          </div>
          <div style={{ display: "flex", gap: 6, marginTop: 8, alignItems: "center" }}>
            <div style={{ width: 8, height: 8, borderRadius: 4, background: "#E5E5EA" }} />
            <span style={{ fontSize: 11, color: "#8E8E93" }}>No study</span>
            <div style={{ width: 8, height: 8, borderRadius: 4, background: ACCENT, marginLeft: 8 }} />
            <span style={{ fontSize: 11, color: "#8E8E93" }}>Studied</span>
          </div>
        </div>

      </div>
    </div>
  );
}

// ── App ─────────────────────────────────────────────────────────────────────
export default function App() {
  const [tab, setTab]       = useState("Study");
  const [session, setSession] = useState(false);

  const handleTab = t => { setTab(t); setSession(false); };

  return (
    <div style={{ minHeight: "100vh", background: "linear-gradient(135deg, #1a1a2e 0%, #16213e 50%, #0f3460 100%)",
      display: "flex", flexDirection: "column", alignItems: "center", justifyContent: "center",
      gap: 40, padding: 40 }}>

      <div style={{ textAlign: "center", color: "#fff" }}>
        <div style={{ fontSize: 36, fontWeight: 800, marginBottom: 6 }}>漢字 Flashcard App</div>
        <div style={{ color: "rgba(255,255,255,.6)", fontSize: 15 }}>Tap the cards and buttons — they're interactive!</div>
      </div>

      <div style={{ display: "flex", gap: 48, flexWrap: "wrap", justifyContent: "center", alignItems: "flex-start" }}>

        {/* Phone 1 – Library */}
        <div style={{ display: "flex", flexDirection: "column", alignItems: "center", gap: 12 }}>
          <Phone activeTab="Library" onTab={() => {}}>
            <LibraryScreen />
          </Phone>
          <div style={{ color: "rgba(255,255,255,.7)", fontWeight: 600, fontSize: 14 }}>📚 Library</div>
        </div>

        {/* Phone 2 – Study / Session (interactive) */}
        <div style={{ display: "flex", flexDirection: "column", alignItems: "center", gap: 12 }}>
          <Phone activeTab={session ? "Session" : "Study"} onTab={handleTab}>
            {session
              ? <SessionScreen onBack={() => setSession(false)} />
              : <StudyScreen onStartSession={() => setSession(true)} />}
          </Phone>
          <div style={{ color: "rgba(255,255,255,.7)", fontWeight: 600, fontSize: 14 }}>
            {session ? "🃏 Flashcard Session" : "🎓 Study"}
          </div>
        </div>

        {/* Phone 3 – Stats */}
        <div style={{ display: "flex", flexDirection: "column", alignItems: "center", gap: 12 }}>
          <Phone activeTab="Stats" onTab={() => {}}>
            <StatsScreen />
          </Phone>
          <div style={{ color: "rgba(255,255,255,.7)", fontWeight: 600, fontSize: 14 }}>📊 Statistics</div>
        </div>

      </div>

      <div style={{ color: "rgba(255,255,255,.4)", fontSize: 12 }}>
        SwiftUI · SM-2 SRS · JLPT N5–N1
      </div>
    </div>
  );
}
