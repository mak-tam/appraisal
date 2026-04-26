<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>TAM Self-Assessment Workbook — Advisory</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Fraunces:ital,opsz,wght@0,9..144,400;0,9..144,500;0,9..144,600;0,9..144,700;1,9..144,400&family=Inter+Tight:wght@400;500;600;700&family=JetBrains+Mono:wght@400;500&display=swap" rel="stylesheet">
<style>
  :root {
    --ink: #0d0b1f;
    --ink-soft: #2a2640;
    --ink-muted: #6b6783;
    --paper: #f5f1e8;
    --paper-warm: #ebe4d3;
    --paper-deep: #e0d7c0;
    --indigo: #4f46e5;
    --indigo-deep: #3730a3;
    --indigo-dark: #1e1b4b;
    --accent: #fbbf24;
    --accent-deep: #f59e0b;
    --rose: #e11d48;
    --line: rgba(13, 11, 31, 0.12);
    --line-strong: rgba(13, 11, 31, 0.28);
    --shadow-sm: 0 1px 2px rgba(13, 11, 31, 0.06);
    --shadow-md: 0 4px 16px rgba(13, 11, 31, 0.08);
    --shadow-lg: 0 20px 48px rgba(13, 11, 31, 0.12);
  }

  * { box-sizing: border-box; margin: 0; padding: 0; }

  html { scroll-behavior: smooth; }

  body {
    font-family: 'Inter Tight', -apple-system, sans-serif;
    background: var(--paper);
    color: var(--ink);
    line-height: 1.55;
    font-size: 15px;
    overflow-x: hidden;
  }

  /* Subtle noise overlay for paper texture */
  body::before {
    content: '';
    position: fixed;
    inset: 0;
    pointer-events: none;
    opacity: 0.4;
    z-index: 0;
    background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 200 200' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='n'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.85' numOctaves='2' stitchTiles='stitch'/%3E%3CfeColorMatrix values='0 0 0 0 0.05 0 0 0 0 0.04 0 0 0 0 0.12 0 0 0 0 0 0 0.08 0'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23n)'/%3E%3C/svg%3E");
  }

  /* ============ GATE (department + level selector) ============ */
  body.gate-active {
    overflow: hidden;
  }
  body.gate-active .wrap,
  body.gate-active section.export {
    visibility: hidden;
  }

  .gate {
    position: fixed;
    inset: 0;
    z-index: 300;
    background: linear-gradient(135deg, #1e1b4b 0%, #2d1b69 60%, #0d0b1f 100%);
    color: var(--paper);
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 40px 24px;
    overflow-y: auto;
  }
  .gate.hidden {
    display: none;
  }

  .gate-bg-noise {
    position: absolute;
    inset: 0;
    pointer-events: none;
    opacity: 0.35;
    background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 200 200' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='gn'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='2' stitchTiles='stitch'/%3E%3CfeColorMatrix values='0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.05 0'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23gn)'/%3E%3C/svg%3E");
  }

  .gate-inner {
    position: relative;
    z-index: 2;
    max-width: 640px;
    width: 100%;
  }

  .gate-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 64px;
    padding-bottom: 20px;
    border-bottom: 1px solid rgba(245, 241, 232, 0.15);
  }

  .gate-brand {
    color: var(--paper);
    font-size: 24px;
  }
  .gate-brand .diamond {
    background: var(--accent);
  }

  .gate-eyebrow {
    font-family: 'JetBrains Mono', monospace;
    font-size: 10px;
    text-transform: uppercase;
    letter-spacing: 0.15em;
    color: rgba(245, 241, 232, 0.6);
  }

  .gate-title {
    font-family: 'Fraunces', serif;
    font-weight: 500;
    font-size: clamp(38px, 5.5vw, 64px);
    line-height: 1;
    letter-spacing: -0.03em;
    margin-bottom: 16px;
    color: var(--paper);
  }
  .gate-title em {
    font-style: italic;
    font-weight: 400;
    color: var(--accent);
  }

  .gate-sub {
    font-size: 16px;
    line-height: 1.6;
    color: rgba(245, 241, 232, 0.75);
    max-width: 520px;
    margin-bottom: 48px;
  }

  .gate-fields {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 20px;
    margin-bottom: 28px;
  }

  .gate-field {
    display: flex;
    flex-direction: column;
  }

  .gate-field .field-label {
    color: var(--accent);
    margin-bottom: 8px;
  }

  .gate-field select {
    width: 100%;
    background: rgba(245, 241, 232, 0.08);
    border: 1px solid rgba(245, 241, 232, 0.2);
    color: var(--paper);
    padding: 14px 16px;
    font-size: 15px;
    font-family: inherit;
    border-radius: 3px;
    cursor: pointer;
    transition: all 0.2s;
    appearance: none;
    background-image: url("data:image/svg+xml,%3Csvg width='12' height='8' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M1 1l5 5 5-5' stroke='%23fbbf24' stroke-width='1.5' fill='none'/%3E%3C/svg%3E");
    background-repeat: no-repeat;
    background-position: right 14px center;
    padding-right: 40px;
  }
  .gate-field select:focus {
    outline: none;
    border-color: var(--accent);
    background-color: rgba(245, 241, 232, 0.12);
  }
  .gate-field select:disabled {
    opacity: 0.4;
    cursor: not-allowed;
  }
  .gate-field select option {
    background: var(--indigo-dark);
    color: var(--paper);
  }

  .gate-status {
    min-height: 24px;
    margin-bottom: 16px;
    font-size: 13px;
    color: var(--accent);
    font-style: italic;
  }
  .gate-status.muted {
    color: rgba(245, 241, 232, 0.55);
    font-style: normal;
  }

  .gate-actions {
    margin-bottom: 32px;
  }

  .btn-lg {
    padding: 18px 36px;
    font-size: 12px;
  }

  .btn-primary:disabled {
    background: rgba(245, 241, 232, 0.15);
    color: rgba(245, 241, 232, 0.4);
    cursor: not-allowed;
    transform: none;
  }
  .btn-primary:disabled:hover {
    background: rgba(245, 241, 232, 0.15);
    color: rgba(245, 241, 232, 0.4);
    transform: none;
  }

  .gate-footnote {
    font-family: 'JetBrains Mono', monospace;
    font-size: 11px;
    color: rgba(245, 241, 232, 0.4);
    line-height: 1.7;
    padding-top: 24px;
    border-top: 1px solid rgba(245, 241, 232, 0.1);
  }

  @media (max-width: 640px) {
    .gate-fields { grid-template-columns: 1fr; }
    .gate-header { margin-bottom: 40px; }
    .gate-sub { margin-bottom: 32px; }
  }

  .wrap {
    position: relative;
    z-index: 1;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 32px;
  }

  /* ============ HEADER ============ */
  header.masthead {
    padding: 40px 0 28px;
    border-bottom: 1px solid var(--line);
    position: relative;
  }

  .masthead-row {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    gap: 32px;
  }

  .brand {
    display: flex;
    align-items: center;
    gap: 16px;
  }

  .brand-mark {
    font-family: 'Fraunces', serif;
    font-weight: 600;
    font-size: 28px;
    letter-spacing: -0.02em;
    color: var(--ink);
    display: flex;
    align-items: center;
    gap: 10px;
  }

  .brand-mark .diamond {
    width: 14px;
    height: 14px;
    background: var(--indigo);
    transform: rotate(45deg);
    display: inline-block;
  }

  .meta-pill {
    font-family: 'JetBrains Mono', monospace;
    font-size: 11px;
    text-transform: uppercase;
    letter-spacing: 0.1em;
    color: var(--ink-muted);
    padding: 8px 14px;
    border: 1px solid var(--line-strong);
    border-radius: 100px;
    background: rgba(255, 255, 255, 0.4);
  }

  .title-block {
    margin-top: 48px;
    display: grid;
    grid-template-columns: 1fr auto;
    gap: 48px;
    align-items: end;
  }

  h1.title {
    font-family: 'Fraunces', serif;
    font-weight: 500;
    font-size: clamp(42px, 6vw, 76px);
    line-height: 0.95;
    letter-spacing: -0.035em;
    color: var(--ink);
  }

  h1.title em {
    font-style: italic;
    font-weight: 400;
    color: var(--indigo-deep);
  }

  .title-side {
    font-family: 'JetBrains Mono', monospace;
    font-size: 12px;
    line-height: 1.8;
    color: var(--ink-muted);
    max-width: 280px;
    text-align: right;
    padding-bottom: 12px;
  }

  .title-side strong {
    color: var(--ink);
    font-weight: 500;
  }

  .change-link {
    color: var(--indigo-deep);
    text-decoration: none;
    font-family: 'JetBrains Mono', monospace;
    font-size: 11px;
    letter-spacing: 0.08em;
    text-transform: uppercase;
    border-bottom: 1px dotted var(--indigo-deep);
    padding-bottom: 1px;
  }
  .change-link:hover {
    color: var(--ink);
    border-bottom-color: var(--ink);
  }

  .intro {
    margin-top: 40px;
    max-width: 620px;
    font-size: 17px;
    line-height: 1.65;
    color: var(--ink-soft);
  }

  .intro em {
    font-family: 'Fraunces', serif;
    font-style: italic;
    color: var(--indigo-deep);
  }

  /* ============ PROGRESS NAV ============ */
  .progress-nav {
    position: sticky;
    top: 0;
    z-index: 50;
    background: var(--paper);
    padding: 20px 0;
    margin-top: 56px;
    border-top: 1px solid var(--line);
    border-bottom: 1px solid var(--line);
  }

  .progress-nav::before {
    content: '';
    position: absolute;
    inset: 0;
    background: var(--paper);
    opacity: 0.95;
    backdrop-filter: blur(8px);
    z-index: -1;
  }

  .progress-wrap {
    display: flex;
    align-items: center;
    gap: 4px;
    flex-wrap: wrap;
  }

  .prog-item {
    flex: 1;
    min-width: 120px;
    position: relative;
    padding: 12px 0;
    cursor: pointer;
    border-top: 2px solid var(--line);
    transition: border-color 0.3s;
  }

  .prog-item.active { border-top-color: var(--indigo); }
  .prog-item.done { border-top-color: var(--accent-deep); }

  .prog-item:hover { border-top-color: var(--ink); }

  .prog-num {
    font-family: 'JetBrains Mono', monospace;
    font-size: 10px;
    color: var(--ink-muted);
    letter-spacing: 0.1em;
  }

  .prog-label {
    font-family: 'Fraunces', serif;
    font-size: 15px;
    color: var(--ink);
    margin-top: 2px;
    font-weight: 500;
  }

  .prog-item.done .prog-num::after {
    content: ' ✓';
    color: var(--accent-deep);
  }

  /* ============ SECTION ============ */
  section.dimension {
    padding: 80px 0 100px;
    border-bottom: 1px solid var(--line);
    position: relative;
  }

  section.dimension:last-of-type {
    border-bottom: none;
  }

  .section-header {
    display: grid;
    grid-template-columns: 100px 1fr;
    gap: 32px;
    align-items: start;
    margin-bottom: 48px;
  }

  .section-num {
    font-family: 'Fraunces', serif;
    font-style: italic;
    font-weight: 400;
    font-size: 72px;
    line-height: 1;
    color: var(--indigo-deep);
    letter-spacing: -0.03em;
  }

  .section-title {
    font-family: 'Fraunces', serif;
    font-weight: 500;
    font-size: 40px;
    line-height: 1.05;
    letter-spacing: -0.025em;
    color: var(--ink);
  }

  .section-desc {
    font-size: 15px;
    color: var(--ink-muted);
    margin-top: 12px;
    max-width: 640px;
    line-height: 1.6;
  }

  /* ============ FRAMEWORK CONTEXT CARD ============ */
  .framework-card {
    background: var(--ink-dark, #1e1b4b);
    background: linear-gradient(135deg, var(--indigo-dark) 0%, #2d1b69 100%);
    color: var(--paper);
    padding: 28px 32px;
    border-radius: 4px;
    margin-bottom: 32px;
    position: relative;
    overflow: hidden;
  }

  .framework-card::before {
    content: '';
    position: absolute;
    top: -50%;
    right: -20%;
    width: 400px;
    height: 400px;
    background: radial-gradient(circle, rgba(251, 191, 36, 0.08) 0%, transparent 70%);
    pointer-events: none;
  }

  .framework-label {
    font-family: 'JetBrains Mono', monospace;
    font-size: 10px;
    text-transform: uppercase;
    letter-spacing: 0.15em;
    color: var(--accent);
    margin-bottom: 12px;
  }

  .framework-title {
    font-family: 'Fraunces', serif;
    font-weight: 500;
    font-size: 20px;
    margin-bottom: 10px;
    color: var(--paper);
  }

  .framework-desc {
    font-size: 14px;
    line-height: 1.65;
    color: rgba(245, 241, 232, 0.82);
    max-width: 780px;
  }

  .framework-indicators {
    margin-top: 20px;
    padding-top: 20px;
    border-top: 1px solid rgba(245, 241, 232, 0.15);
  }

  .framework-indicators summary {
    font-family: 'JetBrains Mono', monospace;
    font-size: 11px;
    text-transform: uppercase;
    letter-spacing: 0.1em;
    color: var(--accent);
    cursor: pointer;
    list-style: none;
    display: flex;
    align-items: center;
    gap: 8px;
    user-select: none;
  }

  .framework-indicators summary::-webkit-details-marker { display: none; }

  .framework-indicators summary::before {
    content: '+';
    display: inline-block;
    width: 16px;
    height: 16px;
    line-height: 14px;
    text-align: center;
    border: 1px solid var(--accent);
    border-radius: 50%;
    font-size: 12px;
    transition: transform 0.2s;
  }

  .framework-indicators[open] summary::before {
    content: '−';
    transform: rotate(180deg);
  }

  .indicator-list {
    margin-top: 16px;
    display: grid;
    gap: 12px;
  }

  .indicator-list li {
    list-style: none;
    padding-left: 20px;
    position: relative;
    font-size: 13px;
    color: rgba(245, 241, 232, 0.85);
    line-height: 1.55;
  }

  .indicator-list li::before {
    content: '';
    position: absolute;
    left: 0;
    top: 8px;
    width: 8px;
    height: 8px;
    background: var(--accent);
    transform: rotate(45deg);
  }

  .indicator-list li strong {
    color: var(--paper);
    font-weight: 600;
    display: block;
    margin-bottom: 2px;
    font-size: 13px;
  }

  /* ============ EVIDENCE ENTRIES ============ */
  .entries {
    display: flex;
    flex-direction: column;
    gap: 16px;
  }

  .entry {
    background: rgba(255, 255, 255, 0.55);
    border: 1px solid var(--line);
    border-radius: 4px;
    padding: 24px;
    position: relative;
    transition: border-color 0.2s;
  }

  .entry:focus-within {
    border-color: var(--indigo);
    box-shadow: 0 0 0 3px rgba(79, 70, 229, 0.1);
  }

  .entry-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 16px;
  }

  .entry-num {
    font-family: 'JetBrains Mono', monospace;
    font-size: 11px;
    color: var(--ink-muted);
    letter-spacing: 0.1em;
    text-transform: uppercase;
  }

  .remove-btn {
    background: none;
    border: none;
    color: var(--ink-muted);
    font-size: 18px;
    cursor: pointer;
    padding: 4px 8px;
    line-height: 1;
    border-radius: 4px;
    transition: all 0.2s;
  }

  .remove-btn:hover {
    color: var(--rose);
    background: rgba(225, 29, 72, 0.08);
  }

  .field {
    margin-bottom: 16px;
  }

  .field:last-child { margin-bottom: 0; }

  .field-label {
    display: block;
    font-family: 'JetBrains Mono', monospace;
    font-size: 10px;
    text-transform: uppercase;
    letter-spacing: 0.12em;
    color: var(--ink-muted);
    margin-bottom: 6px;
    font-weight: 500;
  }

  .field-label .req {
    color: var(--rose);
    margin-left: 2px;
  }

  .field-hint {
    font-size: 12px;
    color: var(--ink-muted);
    margin-top: 4px;
    font-style: italic;
  }

  input[type="text"], textarea, select {
    width: 100%;
    font-family: inherit;
    font-size: 14px;
    color: var(--ink);
    background: rgba(255, 255, 255, 0.8);
    border: 1px solid var(--line-strong);
    border-radius: 3px;
    padding: 10px 12px;
    transition: all 0.2s;
    line-height: 1.5;
  }

  input[type="text"]:focus, textarea:focus, select:focus {
    outline: none;
    border-color: var(--indigo);
    background: #fff;
  }

  textarea {
    resize: vertical;
    min-height: 80px;
  }

  .entry-title {
    font-family: 'Fraunces', serif;
    font-size: 18px;
    font-weight: 500;
    border: none;
    background: transparent;
    padding: 0;
    border-bottom: 1px dashed var(--line-strong);
    border-radius: 0;
    padding-bottom: 6px;
    color: var(--ink);
  }

  .entry-title::placeholder {
    font-style: italic;
    color: var(--ink-muted);
  }

  .entry-title:focus {
    border-bottom-color: var(--indigo);
    background: transparent;
  }

  /* Add entry button */
  .add-entry {
    margin-top: 4px;
    padding: 18px;
    border: 1.5px dashed var(--line-strong);
    background: transparent;
    border-radius: 4px;
    width: 100%;
    font-family: 'JetBrains Mono', monospace;
    font-size: 11px;
    text-transform: uppercase;
    letter-spacing: 0.12em;
    color: var(--ink-muted);
    cursor: pointer;
    transition: all 0.2s;
  }

  .add-entry:hover {
    border-color: var(--indigo);
    color: var(--indigo);
    background: rgba(79, 70, 229, 0.04);
  }

  /* ============ SELF-RATING BLOCK ============ */
  .rating-block {
    margin-top: 32px;
    background: var(--paper-warm);
    border: 1px solid var(--line-strong);
    padding: 28px;
    border-radius: 4px;
  }

  .rating-block-label {
    font-family: 'JetBrains Mono', monospace;
    font-size: 10px;
    text-transform: uppercase;
    letter-spacing: 0.15em;
    color: var(--indigo-deep);
    margin-bottom: 8px;
  }

  .rating-block-title {
    font-family: 'Fraunces', serif;
    font-size: 22px;
    font-weight: 500;
    color: var(--ink);
    margin-bottom: 4px;
  }

  .rating-block-sub {
    font-size: 13px;
    color: var(--ink-muted);
    margin-bottom: 20px;
  }

  .rating-options {
    display: grid;
    grid-template-columns: repeat(5, 1fr);
    gap: 8px;
  }

  .rating-option {
    position: relative;
    cursor: pointer;
  }

  .rating-option input {
    position: absolute;
    opacity: 0;
    pointer-events: none;
  }

  .rating-card {
    padding: 14px 12px;
    background: rgba(255, 255, 255, 0.5);
    border: 1.5px solid var(--line);
    border-radius: 3px;
    transition: all 0.2s;
    height: 100%;
  }

  .rating-option:hover .rating-card {
    border-color: var(--ink-muted);
    background: rgba(255, 255, 255, 0.8);
  }

  .rating-option input:checked + .rating-card {
    border-color: var(--indigo);
    background: #fff;
    box-shadow: 0 0 0 2px rgba(79, 70, 229, 0.15);
  }

  .rating-name {
    font-family: 'Fraunces', serif;
    font-weight: 600;
    font-size: 13px;
    color: var(--ink);
    margin-bottom: 6px;
    line-height: 1.2;
  }

  .rating-option input:checked + .rating-card .rating-name {
    color: var(--indigo-deep);
  }

  .rating-desc {
    font-size: 11px;
    color: var(--ink-muted);
    line-height: 1.4;
  }

  /* Values rating (4-option) */
  .rating-options.three-col {
    grid-template-columns: repeat(4, 1fr);
  }

  .values-grid {
    display: grid;
    gap: 20px;
    margin-top: 8px;
  }

  .value-row {
    background: rgba(255, 255, 255, 0.55);
    border: 1px solid var(--line);
    padding: 20px 24px;
    border-radius: 4px;
  }

  .value-header {
    display: flex;
    align-items: baseline;
    gap: 14px;
    margin-bottom: 14px;
  }

  .value-name {
    font-family: 'Fraunces', serif;
    font-size: 19px;
    font-weight: 500;
    color: var(--ink);
  }

  .value-name .diamond {
    width: 9px;
    height: 9px;
    background: var(--accent-deep);
    display: inline-block;
    transform: rotate(45deg);
    margin-right: 8px;
    vertical-align: middle;
  }

  .value-tagline {
    font-size: 12px;
    color: var(--ink-muted);
    font-style: italic;
  }

  .value-field {
    margin-bottom: 14px;
  }

  /* ============ EXPORT SECTION ============ */
  section.export {
    padding: 100px 0 140px;
    background: var(--ink-dark, #1e1b4b);
    background: linear-gradient(180deg, #1e1b4b 0%, #0d0b1f 100%);
    color: var(--paper);
    margin-top: 60px;
    position: relative;
    overflow: hidden;
  }

  section.export::before {
    content: '';
    position: absolute;
    top: 10%;
    left: -10%;
    width: 500px;
    height: 500px;
    background: radial-gradient(circle, rgba(251, 191, 36, 0.12) 0%, transparent 60%);
    pointer-events: none;
  }

  section.export::after {
    content: '';
    position: absolute;
    bottom: 0;
    right: -5%;
    width: 400px;
    height: 400px;
    background: radial-gradient(circle, rgba(79, 70, 229, 0.18) 0%, transparent 60%);
    pointer-events: none;
  }

  .export .section-num { color: var(--accent); }
  .export .section-title { color: var(--paper); }
  .export .section-desc { color: rgba(245, 241, 232, 0.7); }

  .export-actions {
    display: flex;
    gap: 16px;
    margin-top: 40px;
    flex-wrap: wrap;
  }

  .btn {
    font-family: 'JetBrains Mono', monospace;
    font-size: 11px;
    text-transform: uppercase;
    letter-spacing: 0.15em;
    padding: 16px 28px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    transition: all 0.2s;
    font-weight: 500;
  }

  .btn-primary {
    background: var(--accent);
    color: var(--ink-dark, #1e1b4b);
  }

  .btn-primary:hover {
    background: #fcd34d;
    transform: translateY(-1px);
  }

  .btn-ghost {
    background: transparent;
    color: var(--paper);
    border: 1px solid rgba(245, 241, 232, 0.3);
  }

  .btn-ghost:hover {
    border-color: var(--accent);
    color: var(--accent);
  }

  /* Preview area */
  .preview {
    margin-top: 48px;
    background: var(--paper);
    color: var(--ink);
    padding: 48px 56px;
    border-radius: 4px;
    box-shadow: var(--shadow-lg);
    max-height: 600px;
    overflow-y: auto;
    font-size: 14px;
    line-height: 1.65;
    display: none;
  }

  .preview.visible { display: block; }

  .preview h2 {
    font-family: 'Fraunces', serif;
    font-weight: 500;
    font-size: 28px;
    margin-bottom: 4px;
    color: var(--ink);
  }

  .preview .sub {
    color: var(--ink-muted);
    font-size: 13px;
    margin-bottom: 28px;
    font-family: 'JetBrains Mono', monospace;
    letter-spacing: 0.05em;
  }

  .preview h3 {
    font-family: 'Fraunces', serif;
    font-weight: 500;
    font-size: 20px;
    margin-top: 28px;
    margin-bottom: 12px;
    color: var(--indigo-deep);
    padding-bottom: 4px;
    border-bottom: 1px solid var(--line);
  }

  .preview h4 {
    font-family: 'Inter Tight', sans-serif;
    font-weight: 600;
    font-size: 14px;
    margin-top: 14px;
    margin-bottom: 4px;
    color: var(--ink);
  }

  .preview p { margin-bottom: 10px; }

  .preview .rating-line {
    background: var(--paper-warm);
    padding: 12px 16px;
    font-family: 'JetBrains Mono', monospace;
    font-size: 12px;
    margin: 12px 0 20px;
    border-left: 3px solid var(--indigo);
    border-radius: 2px;
  }

  .preview .empty {
    color: var(--ink-muted);
    font-style: italic;
    font-size: 13px;
  }

  /* ============ FOOTER ============ */
  footer {
    padding: 48px 0 64px;
    border-top: 1px solid var(--line);
    margin-top: 0;
    color: var(--ink-muted);
    font-size: 12px;
    font-family: 'JetBrains Mono', monospace;
    letter-spacing: 0.05em;
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 16px;
  }

  /* ============ EMPLOYEE INFO BLOCK ============ */
  .employee-info {
    margin-top: 48px;
    padding: 32px;
    background: rgba(255, 255, 255, 0.5);
    border: 1px solid var(--line);
    border-radius: 4px;
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 20px;
  }

  .employee-info .field {
    margin-bottom: 0;
  }

  /* ============ RESPONSIVE ============ */
  @media (max-width: 768px) {
    .wrap { padding: 0 20px; }
    .title-block { grid-template-columns: 1fr; gap: 24px; }
    .title-side { text-align: left; max-width: 100%; }
    .section-header { grid-template-columns: 1fr; gap: 16px; }
    .section-num { font-size: 56px; }
    .section-title { font-size: 30px; }
    .rating-options { grid-template-columns: 1fr 1fr; }
    .rating-options.three-col { grid-template-columns: 1fr 1fr; }
    .employee-info { grid-template-columns: 1fr; }
    .export-actions { flex-direction: column; }
    .btn { width: 100%; }
    .preview { padding: 28px 24px; }
  }

  /* Print styles */
  @media print {
    body::before { display: none; }
    .progress-nav, section.export, .export-actions, footer { display: none; }
    .preview { max-height: none; box-shadow: none; }
  }

  /* ============ ADMIN MODAL ============ */
  .admin-link {
    color: var(--ink-muted);
    text-decoration: none;
    font-family: 'JetBrains Mono', monospace;
    font-size: 11px;
    letter-spacing: 0.1em;
    text-transform: uppercase;
    border-bottom: 1px dotted var(--ink-muted);
    padding-bottom: 1px;
    transition: color 0.2s, border-color 0.2s;
  }
  .admin-link:hover {
    color: var(--indigo-deep);
    border-bottom-color: var(--indigo-deep);
  }
  .footer-sep {
    margin: 0 12px;
    color: var(--line);
  }

  .admin-overlay {
    position: fixed;
    inset: 0;
    background: rgba(13, 11, 31, 0.6);
    backdrop-filter: blur(4px);
    z-index: 200;
    display: none;
    align-items: flex-start;
    justify-content: center;
    padding: 5vh 24px;
    overflow-y: auto;
  }
  .admin-overlay.show { display: flex; }

  .admin-modal {
    background: var(--paper);
    border-radius: 4px;
    box-shadow: 0 30px 80px rgba(0,0,0,0.4);
    width: 100%;
    max-width: 900px;
    max-height: 90vh;
    display: flex;
    flex-direction: column;
    overflow: hidden;
  }

  .admin-header {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    padding: 28px 36px 20px;
    border-bottom: 1px solid var(--line);
    background: linear-gradient(135deg, var(--indigo-dark) 0%, #2d1b69 100%);
    color: var(--paper);
  }
  .admin-eyebrow {
    font-family: 'JetBrains Mono', monospace;
    font-size: 10px;
    text-transform: uppercase;
    letter-spacing: 0.15em;
    color: var(--accent);
    margin-bottom: 4px;
  }
  .admin-title {
    font-family: 'Fraunces', serif;
    font-weight: 500;
    font-size: 26px;
    letter-spacing: -0.02em;
    color: var(--paper);
  }
  .admin-close {
    background: none;
    border: none;
    color: var(--paper);
    font-size: 28px;
    cursor: pointer;
    line-height: 1;
    opacity: 0.7;
    transition: opacity 0.2s;
    padding: 0 6px;
  }
  .admin-close:hover { opacity: 1; }

  .admin-login {
    padding: 40px 36px;
  }
  .admin-login-msg {
    font-size: 14px;
    color: var(--ink-soft);
    margin-bottom: 16px;
  }
  .admin-login-row {
    display: flex;
    gap: 8px;
    margin-bottom: 12px;
  }
  .admin-login-row input {
    flex: 1;
    padding: 12px 14px;
    border: 1px solid var(--line-strong);
    border-radius: 3px;
    font-size: 14px;
    background: #fff;
  }
  .admin-login-row input:focus {
    outline: none;
    border-color: var(--indigo);
  }
  .admin-login-hint {
    font-size: 12px;
    color: var(--ink-muted);
  }
  .admin-login-hint code {
    background: var(--paper-warm);
    padding: 2px 6px;
    border-radius: 3px;
    font-family: 'JetBrains Mono', monospace;
    font-size: 11px;
    color: var(--ink);
  }

  .admin-body {
    flex: 1;
    display: flex;
    flex-direction: column;
    overflow: hidden;
  }

  .admin-toolbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 18px 36px;
    border-bottom: 1px solid var(--line);
    background: var(--paper-warm);
  }
  .admin-stats {
    font-family: 'JetBrains Mono', monospace;
    font-size: 11px;
    text-transform: uppercase;
    letter-spacing: 0.08em;
    color: var(--ink-soft);
  }
  .admin-toolbar-actions {
    display: flex;
    gap: 8px;
  }

  .btn-sm {
    padding: 10px 16px;
    font-size: 10px;
  }
  .btn-danger {
    background: var(--rose);
    color: var(--paper);
  }
  .btn-danger:hover { background: #be123c; }

  .admin-table-wrap {
    flex: 1;
    overflow-y: auto;
    padding: 0 36px;
  }
  .admin-table {
    width: 100%;
    border-collapse: collapse;
    margin: 16px 0;
  }
  .admin-table th {
    text-align: left;
    font-family: 'JetBrains Mono', monospace;
    font-size: 10px;
    text-transform: uppercase;
    letter-spacing: 0.1em;
    color: var(--ink-muted);
    font-weight: 500;
    padding: 12px 8px 10px;
    border-bottom: 1px solid var(--line-strong);
  }
  .admin-table td {
    padding: 14px 8px;
    border-bottom: 1px solid var(--line);
    font-size: 13px;
    vertical-align: middle;
  }
  .admin-table tr:hover td { background: rgba(255,255,255,0.5); }
  .admin-table .t-right { text-align: right; }
  .admin-table .name { font-weight: 600; color: var(--ink); }
  .admin-table .rating-pill {
    display: inline-block;
    padding: 4px 10px;
    border-radius: 100px;
    background: var(--indigo-dark);
    color: var(--accent);
    font-family: 'JetBrains Mono', monospace;
    font-size: 10px;
    text-transform: uppercase;
    letter-spacing: 0.06em;
  }
  .admin-table .rating-pill.muted {
    background: rgba(13,11,31,0.08);
    color: var(--ink-muted);
  }
  .admin-table .row-action {
    background: none;
    border: 1px solid var(--line-strong);
    padding: 6px 12px;
    border-radius: 3px;
    cursor: pointer;
    font-family: 'JetBrains Mono', monospace;
    font-size: 10px;
    text-transform: uppercase;
    letter-spacing: 0.08em;
    color: var(--ink-soft);
    margin-left: 6px;
    transition: all 0.2s;
  }
  .admin-table .row-action:hover { border-color: var(--ink); color: var(--ink); }
  .admin-table .row-action.danger:hover {
    border-color: var(--rose);
    color: var(--rose);
    background: rgba(225,29,72,0.05);
  }

  .admin-empty {
    padding: 48px 0;
    text-align: center;
    color: var(--ink-muted);
    font-style: italic;
    font-size: 13px;
  }

  .admin-danger {
    padding: 16px 36px 24px;
    border-top: 1px solid var(--line);
    text-align: right;
  }


  .toast {
    position: fixed;
    bottom: 32px;
    right: 32px;
    background: var(--ink-dark, #1e1b4b);
    color: var(--paper);
    padding: 14px 22px;
    border-radius: 4px;
    font-family: 'JetBrains Mono', monospace;
    font-size: 12px;
    letter-spacing: 0.08em;
    text-transform: uppercase;
    box-shadow: var(--shadow-lg);
    transform: translateY(120%);
    transition: transform 0.3s ease;
    z-index: 100;
    border-left: 3px solid var(--accent);
  }

  .toast.show { transform: translateY(0); }
</style>
</head>
<body>

<!-- ============ DEPARTMENT + LEVEL GATE ============ -->
<div class="gate" id="gate">
  <div class="gate-bg-noise"></div>
  <div class="gate-inner">
    <div class="gate-header">
      <div class="brand-mark gate-brand">
        <span class="diamond"></span>
        TAM
      </div>
      <div class="gate-eyebrow">Self-Assessment Workbook · Mid-Year Cycle 2026</div>
    </div>

    <h1 class="gate-title">Let's tailor this <em>to you</em>.</h1>
    <p class="gate-sub">Choose your department and level to load the right competency framework. The workbook below will adapt to match.</p>

    <div class="gate-fields">
      <div class="gate-field">
        <label class="field-label">Department</label>
        <select id="gateDept" onchange="onDeptChange()">
          <option value="">— Select your department —</option>
          <option value="advisory">Advisory</option>
          <option value="bd">Business Development</option>
          <option value="digital">Digital</option>
          <option value="support">Support (Branding · HR · Finance)</option>
        </select>
      </div>

      <div class="gate-field">
        <label class="field-label">Level</label>
        <select id="gateLevel" disabled>
          <option value="">— Pick department first —</option>
        </select>
      </div>
    </div>

    <div class="gate-status" id="gateStatus"></div>

    <div class="gate-actions">
      <button class="btn btn-primary btn-lg" id="gateEnter" onclick="enterWorkbook()" disabled>Enter workbook</button>
    </div>

    <div class="gate-footnote">
      Currently the Advisory framework is fully active. Other departments will be enabled in upcoming releases.
    </div>
  </div>
</div>

<div class="wrap">

  <!-- ============ MASTHEAD ============ -->
  <header class="masthead">
    <div class="masthead-row">
      <div class="brand">
        <div class="brand-mark">
          <span class="diamond"></span>
          TAM
        </div>
      </div>
      <div class="meta-pill">Mid-Year · Cycle 2026</div>
    </div>

    <div class="title-block">
      <h1 class="title">Your <em>growth</em><br>starts with your story.</h1>
      <div class="title-side">
        <strong>Self-Assessment Workbook</strong><br>
        <span id="ctxDeptLevel">Advisory · Associate Level</span><br>
        — <br>
        Built to help you capture<br>
        what you've accomplished<br>
        with clarity and evidence.
        <br><br>
        <a href="#" class="change-link" onclick="reopenGate(event)">Change selection</a>
      </div>
    </div>

    <p class="intro">
      Your self-assessment is the foundation of a useful conversation about your growth. This workbook walks you through all <em>five dimensions</em> of how TAM evaluates performance, with the <span id="ctxDeptName">Advisory</span> framework for your level surfaced inline. Fill in what you've actually done, with specific examples. Your assessor will use this alongside feedback from your exposure list and your KPIs to write your growth report.
    </p>
  </header>

  <!-- ============ PROGRESS NAV ============ -->
  <nav class="progress-nav">
    <div class="progress-wrap" id="progressNav">
      <a class="prog-item active" data-section="info"><div class="prog-num">00</div><div class="prog-label">About You</div></a>
      <a class="prog-item" data-section="client"><div class="prog-num">01</div><div class="prog-label">Client</div></a>
      <a class="prog-item" data-section="firm"><div class="prog-num">02</div><div class="prog-label">Firm</div></a>
      <a class="prog-item" data-section="thought"><div class="prog-num">03</div><div class="prog-label">Thought</div></a>
      <a class="prog-item" data-section="people"><div class="prog-num">04</div><div class="prog-label">People</div></a>
      <a class="prog-item" data-section="values"><div class="prog-num">05</div><div class="prog-label">Values</div></a>
      <a class="prog-item" data-section="export"><div class="prog-num">06</div><div class="prog-label">Export</div></a>
    </div>
  </nav>

  <!-- ============ EMPLOYEE INFO ============ -->
  <section class="dimension" id="info">
    <div class="section-header">
      <div class="section-num">00</div>
      <div>
        <div class="section-title">About you</div>
      </div>
    </div>

    <div class="employee-info">
      <div class="field">
        <label class="field-label">Your name</label>
        <input type="text" id="empName" placeholder="Full name" />
      </div>
      <div class="field">
        <label class="field-label">Assessor's name</label>
        <select id="empAssessor">
          <option value="">— Select your assessor —</option>
          <option value="Ammar Alrjoub">Ammar Alrjoub</option>
          <option value="Mayada Akasha">Mayada Akasha</option>
          <option value="Abdullah Alratroot">Abdullah Alratroot</option>
          <option value="Other">Other (specify in chat)</option>
        </select>
      </div>
      <div class="field">
        <label class="field-label">Tenure at TAM</label>
        <input type="text" id="empTenure" placeholder="e.g., 2 years 3 months" />
      </div>
      <div class="field">
        <label class="field-label">Tenure in current position</label>
        <input type="text" id="empPosition" placeholder="e.g., 1 year 1 month" />
      </div>
    </div>
  </section>

  <!-- ============ 1. CLIENT LEADERSHIP ============ -->
  <section class="dimension" id="client">
    <div class="section-header">
      <div class="section-num">01</div>
      <div>
        <div class="section-title">Client Leadership</div>
        <div class="section-desc">Your ability to manage and develop client and stakeholder relationships in an effective manner — building trust, communicating clearly, and delivering value.</div>
      </div>
    </div>

    <div class="framework-card" data-fw="client">
      <div class="framework-label">What's expected at Associate level</div>
      <div class="framework-title">You're moving from contributor to leader of client moments.</div>
      <div class="framework-desc">
        As an Associate, you're expected to take the lead in cultivating junior client relationships, establish collaborative coaching relationships with junior clients, and communicate compellingly in written and verbal forms. You should produce near-client-ready documents with limited support, lead development of presentation decks with confidence, and consistently meet all commitments with a growing capacity to contribute to proposals.
      </div>
      <details class="framework-indicators">
        <summary>See the detailed behaviors expected</summary>
        <ul class="indicator-list">
          <li><strong>Takes a lead in cultivating junior client relationships</strong>Establishes collaborative coaching relationships with junior clients, providing guidance and support.</li>
          <li><strong>Exhibits a solid understanding of the client's context</strong>Translates context into actionable solutions within proposals.</li>
          <li><strong>Communicates in a clear, compelling, and convincing manner</strong>Both in written and verbal forms, effectively employing top-down communication techniques.</li>
          <li><strong>Develops near-client-ready documents</strong>Showcases growing proficiency in communication and document preparation, requiring limited support from the BD manager.</li>
          <li><strong>Leads development of presentation decks</strong>Shows good understanding of creating effective presentations with ability to present it internally.</li>
          <li><strong>Consistently delivers proposals</strong>Efficiently meets all deadlines and commitments, ensuring the TAM's work provides value to clients/stakeholders.</li>
        </ul>
      </details>
    </div>

    <div class="entries" data-dim="client" id="entriesClient"></div>
    <button class="add-entry" onclick="addEntry('client')">+ Add another accomplishment</button>

    <div class="rating-block">
      <div class="rating-block-label">Your self-rating · Client Leadership</div>
      <div class="rating-block-title">How would you rate your performance?</div>
      <div class="rating-block-sub">Be honest. Your assessor will compare this with exposure feedback and KPIs. Sandbagging and inflation are both unhelpful.</div>
      <div class="rating-options" data-dim="client">
        <label class="rating-option"><input type="radio" name="rate-client" value="Underperforms" /><div class="rating-card"><div class="rating-name">Underperforms</div><div class="rating-desc">Fails to meet core requirements.</div></div></label>
        <label class="rating-option"><input type="radio" name="rate-client" value="Below Expectations" /><div class="rating-card"><div class="rating-name">Below Expectations</div><div class="rating-desc">Inconsistent or below standards.</div></div></label>
        <label class="rating-option"><input type="radio" name="rate-client" value="Meets Expectations" /><div class="rating-card"><div class="rating-name">Meets Expectations</div><div class="rating-desc">Consistent, reliable, hits the mark.</div></div></label>
        <label class="rating-option"><input type="radio" name="rate-client" value="Exceeds Expectations" /><div class="rating-card"><div class="rating-name">Exceeds Expectations</div><div class="rating-desc">Above expectations, goes beyond scope.</div></div></label>
        <label class="rating-option"><input type="radio" name="rate-client" value="Outstanding" /><div class="rating-card"><div class="rating-name">Outstanding</div><div class="rating-desc">Company-level impact, innovates, mentors.</div></div></label>
      </div>
    </div>
  </section>

  <!-- ============ 2. FIRM LEADERSHIP ============ -->
  <section class="dimension" id="firm">
    <div class="section-header">
      <div class="section-num">02</div>
      <div>
        <div class="section-title">Firm Leadership</div>
        <div class="section-desc">Your ability to make an impact, take ownership, and contribute to building TAM — beyond just your client projects.</div>
      </div>
    </div>

    <div class="framework-card" data-fw="firm">
      <div class="framework-label">What's expected at Associate level</div>
      <div class="framework-title">You start acting like an owner, not just a contributor.</div>
      <div class="framework-desc">
        At Associate level, you should identify areas of improvement in TAM's operations and actively contribute to firm initiatives. You demonstrate a growing sense of ownership, take responsibility for tasks, proactively seek opportunities to enhance value, and participate in knowledge codification and sharing efforts within the team.
      </div>
      <details class="framework-indicators">
        <summary>See the detailed behaviors expected</summary>
        <ul class="indicator-list">
          <li><strong>Contributes to firm initiatives</strong>Identifies areas of improvement and actively works on initiatives designed to enhance TAM's capabilities.</li>
          <li><strong>Demonstrates ownership</strong>Takes responsibility for tasks with a growing sense of accountability; proactively seeks opportunities to add value.</li>
          <li><strong>Shares knowledge</strong>Actively acquires and shares knowledge with the team. Contributes to codification of knowledge and participates in knowledge-sharing.</li>
          <li><strong>Supports business development</strong>Identifies opportunities during engagements to support BD; helps on proposal development when needed.</li>
        </ul>
      </details>
    </div>

    <div class="entries" data-dim="firm" id="entriesFirm"></div>
    <button class="add-entry" onclick="addEntry('firm')">+ Add another accomplishment</button>

    <div class="rating-block">
      <div class="rating-block-label">Your self-rating · Firm Leadership</div>
      <div class="rating-block-title">How would you rate your performance?</div>
      <div class="rating-block-sub">Think squads, internal initiatives, BD support, knowledge codification.</div>
      <div class="rating-options" data-dim="firm">
        <label class="rating-option"><input type="radio" name="rate-firm" value="Underperforms" /><div class="rating-card"><div class="rating-name">Underperforms</div><div class="rating-desc">Fails to meet core requirements.</div></div></label>
        <label class="rating-option"><input type="radio" name="rate-firm" value="Below Expectations" /><div class="rating-card"><div class="rating-name">Below Expectations</div><div class="rating-desc">Inconsistent or below standards.</div></div></label>
        <label class="rating-option"><input type="radio" name="rate-firm" value="Meets Expectations" /><div class="rating-card"><div class="rating-name">Meets Expectations</div><div class="rating-desc">Consistent, reliable, hits the mark.</div></div></label>
        <label class="rating-option"><input type="radio" name="rate-firm" value="Exceeds Expectations" /><div class="rating-card"><div class="rating-name">Exceeds Expectations</div><div class="rating-desc">Above expectations, goes beyond scope.</div></div></label>
        <label class="rating-option"><input type="radio" name="rate-firm" value="Outstanding" /><div class="rating-card"><div class="rating-name">Outstanding</div><div class="rating-desc">Company-level impact, innovates, mentors.</div></div></label>
      </div>
    </div>
  </section>

  <!-- ============ 3. THOUGHT LEADERSHIP ============ -->
  <section class="dimension" id="thought">
    <div class="section-header">
      <div class="section-num">03</div>
      <div>
        <div class="section-title">Thought Leadership</div>
        <div class="section-desc">Your technical mastery — analytical thinking, conceptual problem-solving, continuous learning, and innovation.</div>
      </div>
    </div>

    <div class="framework-card" data-fw="thought">
      <div class="framework-label">What's expected at Associate level</div>
      <div class="framework-title">You drive issue identification and bring structured, client-ready thinking.</div>
      <div class="framework-desc">
        As an Associate, you should drive issue identification and problem structuring, take the lead on aspects of problem-solving in proposals, independently structure standard proposals with only limited guidance, demonstrate competence and attention to detail in complex analytical tasks, and actively contribute clear, reasonable, and actionable solutions to team problem-solving.
      </div>
      <details class="framework-indicators">
        <summary>See the detailed behaviors expected</summary>
        <ul class="indicator-list">
          <li><strong>Drives issue identification and problem structuring</strong>Takes the lead on aspects of problem-solving in proposals and client issues.</li>
          <li><strong>Independently structures standard proposals</strong>Shows growing proficiency; requires only limited guidance from managers.</li>
          <li><strong>Demonstrates analytical competence</strong>Clear thinking and attention to detail in complex analytical tasks.</li>
          <li><strong>Contributes actionable solutions</strong>Drives clear, reasonable, actionable solutions for clients and stakeholders.</li>
          <li><strong>Integrates thinking for team problem-solving</strong>Brings knowledge and integrated thinking to the team's problem-solving efforts.</li>
          <li><strong>Applies frameworks effectively</strong>Actively seeks and adapts relevant frameworks and tools to enhance problem-solving.</li>
        </ul>
      </details>
    </div>

    <div class="entries" data-dim="thought" id="entriesThought"></div>
    <button class="add-entry" onclick="addEntry('thought')">+ Add another accomplishment</button>

    <div class="rating-block">
      <div class="rating-block-label">Your self-rating · Thought Leadership</div>
      <div class="rating-block-title">How would you rate your performance?</div>
      <div class="rating-block-sub">Think deliverables, analytical work, storylining, frameworks, innovation.</div>
      <div class="rating-options" data-dim="thought">
        <label class="rating-option"><input type="radio" name="rate-thought" value="Underperforms" /><div class="rating-card"><div class="rating-name">Underperforms</div><div class="rating-desc">Fails to meet core requirements.</div></div></label>
        <label class="rating-option"><input type="radio" name="rate-thought" value="Below Expectations" /><div class="rating-card"><div class="rating-name">Below Expectations</div><div class="rating-desc">Inconsistent or below standards.</div></div></label>
        <label class="rating-option"><input type="radio" name="rate-thought" value="Meets Expectations" /><div class="rating-card"><div class="rating-name">Meets Expectations</div><div class="rating-desc">Consistent, reliable, hits the mark.</div></div></label>
        <label class="rating-option"><input type="radio" name="rate-thought" value="Exceeds Expectations" /><div class="rating-card"><div class="rating-name">Exceeds Expectations</div><div class="rating-desc">Above expectations, goes beyond scope.</div></div></label>
        <label class="rating-option"><input type="radio" name="rate-thought" value="Outstanding" /><div class="rating-card"><div class="rating-name">Outstanding</div><div class="rating-desc">Company-level impact, innovates, mentors.</div></div></label>
      </div>
    </div>
  </section>

  <!-- ============ 4. PEOPLE LEADERSHIP ============ -->
  <section class="dimension" id="people">
    <div class="section-header">
      <div class="section-num">04</div>
      <div>
        <div class="section-title">People Leadership</div>
        <div class="section-desc">Your ability to collaborate with, coach, and sponsor other TAMers — building and supporting high-performing teams.</div>
      </div>
    </div>

    <div class="framework-card" data-fw="people">
      <div class="framework-label">What's expected at Associate level</div>
      <div class="framework-title">You start leading collaboration, not just participating in it.</div>
      <div class="framework-desc">
        At Associate level, you lead and facilitate collaboration among team members, manage small groups of junior colleagues to deliver specific tasks, support training and coaching through onboarding, identify areas of improvement in yourself and others, and deliver regular constructive feedback — both upward and downward.
      </div>
      <details class="framework-indicators">
        <summary>See the detailed behaviors expected</summary>
        <ul class="indicator-list">
          <li><strong>Leads and facilitates collaboration</strong>Demonstrates a proactive approach to team cohesion and problem-solving through collaboration.</li>
          <li><strong>Manages small groups of juniors</strong>Able to manage a small group of junior colleagues to deliver a specific task.</li>
          <li><strong>Supports training and coaching</strong>Through onboarding and leading others to aid in their development.</li>
          <li><strong>Self-awareness about development</strong>Identifies areas of improvement in one's self.</li>
          <li><strong>Delivers constructive feedback</strong>Asks for feedback from leadership and provides constructive upward feedback. Helps colleagues grow through regular constructive feedback.</li>
          <li><strong>Positive team dynamics</strong>Contributes to team energy and demonstrates genuine concern for peers and clients.</li>
        </ul>
      </details>
    </div>

    <div class="entries" data-dim="people" id="entriesPeople"></div>
    <button class="add-entry" onclick="addEntry('people')">+ Add another accomplishment</button>

    <div class="rating-block">
      <div class="rating-block-label">Your self-rating · People Leadership</div>
      <div class="rating-block-title">How would you rate your performance?</div>
      <div class="rating-block-sub">Think coaching, mentoring, feedback culture, team contribution.</div>
      <div class="rating-options" data-dim="people">
        <label class="rating-option"><input type="radio" name="rate-people" value="Underperforms" /><div class="rating-card"><div class="rating-name">Underperforms</div><div class="rating-desc">Fails to meet core requirements.</div></div></label>
        <label class="rating-option"><input type="radio" name="rate-people" value="Below Expectations" /><div class="rating-card"><div class="rating-name">Below Expectations</div><div class="rating-desc">Inconsistent or below standards.</div></div></label>
        <label class="rating-option"><input type="radio" name="rate-people" value="Meets Expectations" /><div class="rating-card"><div class="rating-name">Meets Expectations</div><div class="rating-desc">Consistent, reliable, hits the mark.</div></div></label>
        <label class="rating-option"><input type="radio" name="rate-people" value="Exceeds Expectations" /><div class="rating-card"><div class="rating-name">Exceeds Expectations</div><div class="rating-desc">Above expectations, goes beyond scope.</div></div></label>
        <label class="rating-option"><input type="radio" name="rate-people" value="Outstanding" /><div class="rating-card"><div class="rating-name">Outstanding</div><div class="rating-desc">Company-level impact, innovates, mentors.</div></div></label>
      </div>
    </div>
  </section>

  <!-- ============ 5. VALUES ============ -->
  <section class="dimension" id="values">
    <div class="section-header">
      <div class="section-num">05</div>
      <div>
        <div class="section-title">Adhering to Values</div>
        <div class="section-desc">How you live TAM's five values in everyday work. Rated on a three-level scale: <em>Does Not Demonstrate</em> · <em>Demonstrates</em> · <em>Role Model</em>.</div>
      </div>
    </div>

    <div class="values-grid">

      <div class="value-row">
        <div class="value-header">
          <div class="value-name"><span class="diamond"></span>Own Your Impact</div>
          <div class="value-tagline">Reliability · Impact orientation · Empowerment · Recognition & mistakes</div>
        </div>
        <div class="value-field">
          <label class="field-label">Describe how you lived this value</label>
          <textarea data-value="impact-evidence" placeholder="Where did you take full ownership? Where did you deliver beyond 'ticking the box' because you cared about the impact?"></textarea>
        </div>
        <div class="rating-options three-col" data-value-dim="impact">
          <label class="rating-option"><input type="radio" name="val-impact" value="Does Not Demonstrate" /><div class="rating-card"><div class="rating-name">Does Not Demonstrate</div><div class="rating-desc">Shows little ownership; blames others.</div></div></label>
          <label class="rating-option"><input type="radio" name="val-impact" value="Partially Demonstrates" /><div class="rating-card"><div class="rating-name">Partially Demonstrates</div><div class="rating-desc">Inconsistent ownership; shows it sometimes.</div></div></label>
          <label class="rating-option"><input type="radio" name="val-impact" value="Demonstrates" /><div class="rating-card"><div class="rating-name">Demonstrates</div><div class="rating-desc">Reliably owns and delivers on commitments.</div></div></label>
          <label class="rating-option"><input type="radio" name="val-impact" value="Role Model" /><div class="rating-card"><div class="rating-name">Role Model</div><div class="rating-desc">Champions ownership as a cultural value.</div></div></label>
        </div>
      </div>

      <div class="value-row">
        <div class="value-header">
          <div class="value-name"><span class="diamond"></span>Respect the Truth</div>
          <div class="value-tagline">Integrity · Psychological safety · Evidence · Respectful communication</div>
        </div>
        <div class="value-field">
          <label class="field-label">Describe how you lived this value</label>
          <textarea data-value="truth-evidence" placeholder="When did you say the hard thing? When did you make it safe for someone else to speak up? Where did you ground discussions in evidence?"></textarea>
        </div>
        <div class="rating-options three-col" data-value-dim="truth">
          <label class="rating-option"><input type="radio" name="val-truth" value="Does Not Demonstrate" /><div class="rating-card"><div class="rating-name">Does Not Demonstrate</div><div class="rating-desc">Avoids difficult conversations.</div></div></label>
          <label class="rating-option"><input type="radio" name="val-truth" value="Partially Demonstrates" /><div class="rating-card"><div class="rating-name">Partially Demonstrates</div><div class="rating-desc">Honest in some contexts but not consistently.</div></div></label>
          <label class="rating-option"><input type="radio" name="val-truth" value="Demonstrates" /><div class="rating-card"><div class="rating-name">Demonstrates</div><div class="rating-desc">Communicates openly and honestly.</div></div></label>
          <label class="rating-option"><input type="radio" name="val-truth" value="Role Model" /><div class="rating-card"><div class="rating-name">Role Model</div><div class="rating-desc">Creates psychological safety for others.</div></div></label>
        </div>
      </div>

      <div class="value-row">
        <div class="value-header">
          <div class="value-name"><span class="diamond"></span>Win as a Team</div>
          <div class="value-tagline">Caring · Company interest first · Trust · Collaboration</div>
        </div>
        <div class="value-field">
          <label class="field-label">Describe how you lived this value</label>
          <textarea data-value="team-evidence" placeholder="When did you prioritize the team or the firm over your own interest? When did you collaborate through a tough moment?"></textarea>
        </div>
        <div class="rating-options three-col" data-value-dim="team">
          <label class="rating-option"><input type="radio" name="val-team" value="Does Not Demonstrate" /><div class="rating-card"><div class="rating-name">Does Not Demonstrate</div><div class="rating-desc">Disrupts teamwork; operates in a silo.</div></div></label>
          <label class="rating-option"><input type="radio" name="val-team" value="Partially Demonstrates" /><div class="rating-card"><div class="rating-name">Partially Demonstrates</div><div class="rating-desc">Collaborates with prompting; uneven across situations.</div></div></label>
          <label class="rating-option"><input type="radio" name="val-team" value="Demonstrates" /><div class="rating-card"><div class="rating-name">Demonstrates</div><div class="rating-desc">Reliable collaborator who facilitates work.</div></div></label>
          <label class="rating-option"><input type="radio" name="val-team" value="Role Model" /><div class="rating-card"><div class="rating-name">Role Model</div><div class="rating-desc">Actively breaks silos and elevates others.</div></div></label>
        </div>
      </div>

      <div class="value-row">
        <div class="value-header">
          <div class="value-name"><span class="diamond"></span>Adapt & Innovate</div>
          <div class="value-tagline">Open-mindedness · Curiosity · Courage · Resourcefulness</div>
        </div>
        <div class="value-field">
          <label class="field-label">Describe how you lived this value</label>
          <textarea data-value="adapt-evidence" placeholder="When did you challenge the status quo? When did you find a creative way around a constraint? When did you learn and apply something new?"></textarea>
        </div>
        <div class="rating-options three-col" data-value-dim="adapt">
          <label class="rating-option"><input type="radio" name="val-adapt" value="Does Not Demonstrate" /><div class="rating-card"><div class="rating-name">Does Not Demonstrate</div><div class="rating-desc">Actively resists change.</div></div></label>
          <label class="rating-option"><input type="radio" name="val-adapt" value="Partially Demonstrates" /><div class="rating-card"><div class="rating-name">Partially Demonstrates</div><div class="rating-desc">Adapts when required; not yet proactive.</div></div></label>
          <label class="rating-option"><input type="radio" name="val-adapt" value="Demonstrates" /><div class="rating-card"><div class="rating-name">Demonstrates</div><div class="rating-desc">Adapts positively and learns from feedback.</div></div></label>
          <label class="rating-option"><input type="radio" name="val-adapt" value="Role Model" /><div class="rating-card"><div class="rating-name">Role Model</div><div class="rating-desc">Catalyst for innovation; experiments boldly.</div></div></label>
        </div>
      </div>

      <div class="value-row">
        <div class="value-header">
          <div class="value-name"><span class="diamond"></span>Grow with Wellbeing</div>
          <div class="value-tagline">Growth mindset · Holistic effort · Potential over competency · Praising effort</div>
        </div>
        <div class="value-field">
          <label class="field-label">Describe how you lived this value</label>
          <textarea data-value="grow-evidence" placeholder="How did you work on your own development? How did you help others grow? How did you balance performance and wellbeing?"></textarea>
        </div>
        <div class="rating-options three-col" data-value-dim="grow">
          <label class="rating-option"><input type="radio" name="val-grow" value="Does Not Demonstrate" /><div class="rating-card"><div class="rating-name">Does Not Demonstrate</div><div class="rating-desc">Disengaged from development.</div></div></label>
          <label class="rating-option"><input type="radio" name="val-grow" value="Partially Demonstrates" /><div class="rating-card"><div class="rating-name">Partially Demonstrates</div><div class="rating-desc">Engages in development inconsistently.</div></div></label>
          <label class="rating-option"><input type="radio" name="val-grow" value="Demonstrates" /><div class="rating-card"><div class="rating-name">Demonstrates</div><div class="rating-desc">Actively works on development plan.</div></div></label>
          <label class="rating-option"><input type="radio" name="val-grow" value="Role Model" /><div class="rating-card"><div class="rating-name">Role Model</div><div class="rating-desc">Models sustainable high performance; coaches others.</div></div></label>
        </div>
      </div>

    </div>

    <div class="rating-block" style="margin-top: 40px;">
      <div class="rating-block-label">Overall competency self-rating</div>
      <div class="rating-block-title">Taking everything together, what's your overall rating?</div>
      <div class="rating-block-sub">This is your holistic view across all five dimensions above.</div>
      <div class="rating-options" data-dim="overall">
        <label class="rating-option"><input type="radio" name="rate-overall" value="Underperforms" /><div class="rating-card"><div class="rating-name">Underperforms</div><div class="rating-desc">Fails to meet core requirements.</div></div></label>
        <label class="rating-option"><input type="radio" name="rate-overall" value="Below Expectations" /><div class="rating-card"><div class="rating-name">Below Expectations</div><div class="rating-desc">Inconsistent or below standards.</div></div></label>
        <label class="rating-option"><input type="radio" name="rate-overall" value="Meets Expectations" /><div class="rating-card"><div class="rating-name">Meets Expectations</div><div class="rating-desc">Consistent, reliable, hits the mark.</div></div></label>
        <label class="rating-option"><input type="radio" name="rate-overall" value="Exceeds Expectations" /><div class="rating-card"><div class="rating-name">Exceeds Expectations</div><div class="rating-desc">Above expectations, goes beyond scope.</div></div></label>
        <label class="rating-option"><input type="radio" name="rate-overall" value="Outstanding" /><div class="rating-card"><div class="rating-name">Outstanding</div><div class="rating-desc">Company-level impact, innovates, mentors.</div></div></label>
      </div>
    </div>
  </section>

  <!-- ============ 6. EXPORT ============ -->
</div>

<section class="export" id="export">
  <div class="wrap">
    <div class="section-header">
      <div class="section-num">06</div>
      <div>
        <div class="section-title">You're done.</div>
        <div class="section-desc">Preview what your assessor will see, then export it. You can copy the full text, download it as an HTML file, or print/save to PDF.</div>
      </div>
    </div>

    <div class="export-actions">
      <button class="btn btn-primary btn-save" onclick="submitAssessment()">Submit &amp; save</button>
      <button class="btn btn-ghost" onclick="generatePreview()">Preview</button>
      <button class="btn btn-ghost" onclick="exportPolishedPDF()">Export polished PDF</button>
      <button class="btn btn-ghost" onclick="copyToClipboard()">Copy as text</button>
      <button class="btn btn-ghost" onclick="downloadHTML()">Download as HTML</button>
    </div>

    <div class="preview" id="previewArea"></div>
  </div>
</section>

<div class="wrap">
  <footer>
    <div>TAM · Self-Assessment Workbook · Advisory — Associate</div>
    <div>
      <a href="#" class="admin-link" onclick="openAdmin(event)">Admin</a>
      <span class="footer-sep">·</span>
      Your story, structured.
    </div>
  </footer>
</div>

<!-- ============ ADMIN MODAL ============ -->
<div class="admin-overlay" id="adminOverlay" onclick="if(event.target===this)closeAdmin()">
  <div class="admin-modal">
    <div class="admin-header">
      <div>
        <div class="admin-eyebrow">TAM · Restricted</div>
        <h2 class="admin-title">Self-Assessment Admin</h2>
      </div>
      <button class="admin-close" onclick="closeAdmin()" aria-label="Close">&times;</button>
    </div>

    <!-- Login gate -->
    <div class="admin-login" id="adminLogin">
      <div class="admin-login-msg">Enter the admin passcode to view saved self-assessments.</div>
      <div class="admin-login-row">
        <input type="password" id="adminPass" placeholder="Passcode" onkeydown="if(event.key==='Enter')checkAdminPass()" />
        <button class="btn btn-primary" onclick="checkAdminPass()">Enter</button>
      </div>
      <div class="admin-login-hint">Default passcode: <code>tam2025</code> — change in the JS to whatever you want.</div>
    </div>

    <!-- Body shown after login -->
    <div class="admin-body" id="adminBody" style="display:none;">
      <div class="admin-toolbar">
        <div class="admin-stats" id="adminStats">0 self-assessments saved</div>
        <div class="admin-toolbar-actions">
          <button class="btn btn-ghost btn-sm" onclick="refreshAdmin()">Refresh</button>
          <button class="btn btn-primary btn-sm" onclick="exportAllExcel()">Export all to Excel</button>
        </div>
      </div>

      <div class="admin-table-wrap">
        <table class="admin-table" id="adminTable">
          <thead>
            <tr>
              <th>Name</th>
              <th>Department</th>
              <th>Level</th>
              <th>Assessor</th>
              <th>Overall</th>
              <th>Saved</th>
              <th class="t-right">Actions</th>
            </tr>
          </thead>
          <tbody id="adminTbody"></tbody>
        </table>
        <div class="admin-empty" id="adminEmpty">No self-assessments saved yet.</div>
      </div>

      <div class="admin-danger">
        <button class="btn btn-danger btn-sm" onclick="deleteAllAssessments()">Delete all assessments</button>
      </div>
    </div>
  </div>
</div>

<div class="toast" id="toast">Copied to clipboard</div>

<script>
  // ============ FRAMEWORK DATA ============
  // Advisory framework — distilled from the Advisory Role Expectations PDF
  // Each level has: title (short summary), client/firm/thought/people cards (headline, description, list of indicators)
  const ADVISORY_FRAMEWORK = {
    'analyst': {
      label: 'Analyst',
      client: {
        headline: "You're learning to listen, capture, and communicate clearly.",
        desc: "As an Analyst, you're expected to actively listen during client interactions, capture needs and preferences accurately, communicate clearly and professionally in writing and verbally, and support meeting prep and follow-ups. You're building basic understanding of the client's business and applying feedback to grow.",
        indicators: [
          ['Demonstrates active listening', 'Pays close attention to client and internal discussions; asks clarifying questions when needed.'],
          ['Communicates clearly and professionally', 'Prepares concise written materials with appropriate tone; speaks confidently in team discussions.'],
          ['Supports client meeting prep and follow-up', 'Helps create presentations, briefs, or data; takes accurate meeting notes; follows through on actions.'],
          ['Shows basic understanding of client context', 'Aware of client business and industry; tailors communication to be relevant.'],
          ['Seeks feedback to improve communication', 'Welcomes input on style and content; applies feedback to increase clarity and effectiveness.']
        ]
      },
      firm: {
        headline: "You start contributing to the firm beyond your tasks.",
        desc: "Contribute to firm initiatives, view yourself as an owner with strong sense of accountability, and begin identifying potential knowledge or service areas to contribute to. Aim to support proposal development.",
        indicators: [
          ['Contributes to firm initiatives', 'Participates in initiatives that improve TAM operations and capabilities.'],
          ['Acts like an owner', 'Takes ownership of individual responsibilities with a strong sense of accountability.'],
          ['Identifies knowledge to share', 'Begins to identify potential areas of knowledge or service lines to contribute to or build upon.'],
          ['Proposal development', 'Targets supporting on 3 proposals.']
        ]
      },
      thought: {
        headline: "You think clearly and execute analytical tasks accurately.",
        desc: "Approach tasks with logical structure, collect and analyze relevant data, identify patterns and root causes, ensure accuracy and rigor in analysis, and support decisions with fact-based inputs. Aim for ≥95% accuracy on outputs.",
        indicators: [
          ['Approaches tasks with logical structure', 'Breaks problems into manageable parts; follows step-by-step methods.'],
          ['Collects and analyzes data', 'Uses Excel, Power BI, SQL, or other tools to summarize findings and draw accurate conclusions.'],
          ['Identifies patterns and root causes', 'Recognizes inconsistencies and patterns; questions assumptions when something seems off.'],
          ['Ensures analytical rigor', 'Double-checks calculations and logic; maintains precision; understands quality implications.'],
          ['Supports decisions with facts', 'Presents findings clearly to support team or client decisions; tailors insights to the audience.']
        ]
      },
      people: {
        headline: "You collaborate well and seek feedback proactively.",
        desc: "Collaborate effectively with teammates, contribute positively to team energy and dynamics, understand basic coaching concepts and identify areas of self-improvement, and ask for and act on feedback from leadership.",
        indicators: [
          ['Collaborates effectively', 'Builds strong relationships with teammates; works selflessly with colleagues to achieve common goals.'],
          ['Contributes to team energy', 'Positively contributes to team dynamics and shows genuine concern for peers and clients.'],
          ['Self-aware about development', 'Understands coaching concepts and identifies areas of improvement in oneself.'],
          ['Seeks and acts on feedback', 'Asks for feedback from leadership and provides constructive upward feedback.']
        ]
      }
    },

    'sr-analyst': {
      label: 'Sr Analyst',
      client: {
        headline: "You're producing near-client-ready work and building presence.",
        desc: "As a Sr Analyst, you communicate clearly with growing confidence, develop documents that are almost client-ready (with limited support from the BD manager), contribute to presentation decks, and identify gaps in the client context to communicate to leadership.",
        indicators: [
          ['Active listening to client needs', 'Pays close attention; takes detailed notes; demonstrates understanding by paraphrasing.'],
          ['Clear and professional communication', 'Prepares draft emails, presentations, and updates that require minimal rework.'],
          ['Responsiveness and follow-up', 'Responds promptly to client requests; escalates appropriately to senior team members.'],
          ['Contributes to client meetings', 'Prepares materials, attends meetings with seniors, contributes when appropriate.'],
          ['Professional conduct in interactions', 'Represents the firm professionally and adapts to client communication preferences.'],
          ['Builds client knowledge', 'Develops basic understanding of the client industry, business model, and key stakeholders.']
        ]
      },
      firm: {
        headline: "You take ownership and actively share knowledge.",
        desc: "Contribute to firm initiatives, demonstrate ownership, and actively acquire and share knowledge with the team. Contribute to codification of knowledge and participate in knowledge-sharing efforts.",
        indicators: [
          ['Contributes to firm initiatives', 'Participates in initiatives that enhance TAM operations and capabilities.'],
          ['Acts like an owner', 'Takes responsibility for individual responsibilities with strong accountability.'],
          ['Shares knowledge actively', 'Acquires and shares knowledge; contributes to codification efforts; participates in knowledge-sharing.'],
          ['Proposal development', 'Targets supporting on 4 proposals.']
        ]
      },
      thought: {
        headline: "You drive issue identification and structure problems.",
        desc: "Drive issue identification and problem structuring on aspects of problem-solving, execute analytical tasks efficiently and accurately, demonstrate emerging conceptual thinking, and apply frameworks effectively.",
        indicators: [
          ['Drives issue identification', 'Takes the lead on aspects of problem-solving in client issues and proposals.'],
          ['Structures parts of proposals', 'Demonstrates a foundational understanding of effective structuring and story-lining.'],
          ['Executes analytical tasks', 'Performs analytical work efficiently, effectively, and accurately.'],
          ['Emerging conceptual thinking', 'Develops creative insights and contributes structured thinking to problems.'],
          ['Pragmatic team problem-solving', 'Participates in team problem solving with a focus on pragmatic solutions for the client.'],
          ['Applies frameworks', 'Uses appropriate frameworks and tools to perform assigned work.']
        ]
      },
      people: {
        headline: "You support training, coaching, and team development.",
        desc: "Collaborate effectively, contribute to team energy and dynamics, support training and coaching of others, and provide constructive upward feedback.",
        indicators: [
          ['Collaborates effectively', 'Builds strong relationships and works selflessly with colleagues.'],
          ['Contributes to team energy', 'Positively contributes to team dynamics and shows concern for peers and clients.'],
          ['Supports training and coaching', 'Aids others in their development; identifies areas of self-improvement.'],
          ['Provides upward feedback', 'Asks for feedback from leadership and provides constructive upward feedback.']
        ]
      }
    },

    'associate': {
      label: 'Associate',
      client: {
        headline: "You're moving from contributor to leader of client moments.",
        desc: "As an Associate, you're expected to take the lead in cultivating junior client relationships, establish collaborative coaching relationships with junior clients, and communicate compellingly in written and verbal forms. You should produce near-client-ready documents with limited support, lead development of presentation decks with confidence, and consistently meet all commitments with a growing capacity to contribute to proposals.",
        indicators: [
          ['Takes a lead in cultivating junior client relationships', 'Establishes collaborative coaching relationships with junior clients, providing guidance and support.'],
          ["Exhibits a solid understanding of the client's context", 'Translates context into actionable solutions within proposals.'],
          ['Communicates in a clear, compelling, and convincing manner', 'Both in written and verbal forms, effectively employing top-down communication techniques.'],
          ['Develops near-client-ready documents', 'Showcases growing proficiency in communication and document preparation, requiring limited support from the BD manager.'],
          ['Leads development of presentation decks', 'Shows good understanding of creating effective presentations with ability to present it internally.'],
          ['Consistently delivers proposals', "Efficiently meets all deadlines and commitments, ensuring the TAM's work provides value to clients/stakeholders."]
        ]
      },
      firm: {
        headline: "You start acting like an owner, not just a contributor.",
        desc: "At Associate level, you should identify areas of improvement in TAM's operations and actively contribute to firm initiatives. You demonstrate a growing sense of ownership, take responsibility for tasks, proactively seek opportunities to enhance value, and participate in knowledge codification and sharing efforts within the team.",
        indicators: [
          ['Contributes to firm initiatives', "Identifies areas of improvement and actively works on initiatives designed to enhance TAM's capabilities."],
          ['Demonstrates ownership', 'Takes responsibility for tasks with a growing sense of accountability; proactively seeks opportunities to add value.'],
          ['Shares knowledge', 'Actively acquires and shares knowledge with the team. Contributes to codification of knowledge and participates in knowledge-sharing.'],
          ['Supports business development', 'Identifies opportunities during engagements to support BD; helps on proposal development when needed.']
        ]
      },
      thought: {
        headline: "You drive issue identification and bring structured, client-ready thinking.",
        desc: "As an Associate, you should drive issue identification and problem structuring, take the lead on aspects of problem-solving in proposals, independently structure standard proposals with only limited guidance, demonstrate competence and attention to detail in complex analytical tasks, and actively contribute clear, reasonable, and actionable solutions to team problem-solving.",
        indicators: [
          ['Drives issue identification and problem structuring', 'Takes the lead on aspects of problem-solving in proposals and client issues.'],
          ['Independently structures standard proposals', 'Shows growing proficiency; requires only limited guidance from managers.'],
          ['Demonstrates analytical competence', 'Clear thinking and attention to detail in complex analytical tasks.'],
          ['Contributes actionable solutions', 'Drives clear, reasonable, actionable solutions for clients and stakeholders.'],
          ['Integrates thinking for team problem-solving', "Brings knowledge and integrated thinking to the team's problem-solving efforts."],
          ['Applies frameworks effectively', 'Actively seeks and adapts relevant frameworks and tools to enhance problem-solving.']
        ]
      },
      people: {
        headline: "You start leading collaboration, not just participating in it.",
        desc: "At Associate level, you lead and facilitate collaboration among team members, manage small groups of junior colleagues to deliver specific tasks, support training and coaching through onboarding, identify areas of improvement in yourself and others, and deliver regular constructive feedback — both upward and downward.",
        indicators: [
          ['Leads and facilitates collaboration', 'Demonstrates a proactive approach to team cohesion and problem-solving through collaboration.'],
          ['Manages small groups of juniors', 'Able to manage a small group of junior colleagues to deliver a specific task.'],
          ['Supports training and coaching', 'Through onboarding and leading others to aid in their development.'],
          ['Self-awareness about development', "Identifies areas of improvement in one's self."],
          ['Delivers constructive feedback', 'Asks for feedback from leadership and provides constructive upward feedback. Helps colleagues grow through regular constructive feedback.'],
          ['Positive team dynamics', 'Contributes to team energy and demonstrates genuine concern for peers and clients.']
        ]
      }
    },

    'sr-associate': {
      label: 'Sr Associate',
      client: {
        headline: "You lead client relationships and run client meetings with confidence.",
        desc: "Take a lead in cultivating client relationships and lasting connections, create client-ready documents independently, demonstrate strong meeting facilitation and presentation skills, and consistently deliver on proposals with growing capacity to contribute meaningfully.",
        indicators: [
          ['Cultivates lasting client relationships', 'Maintains connections after proposals are completed and develops collaborative, lasting relationships.'],
          ['Translates context into solutions', "Exhibits solid understanding of the client's context and translates it into actionable solutions."],
          ['Communicates compellingly', 'Effectively employs top-down communication techniques both in written and verbal forms.'],
          ['Creates client-ready documents independently', 'Displays high level of competence in crafting clear and effective communication materials.'],
          ['Demonstrates meeting facilitation skills', 'Runs meetings effectively and engages clients through compelling presentations.'],
          ['Works independently and reliably', 'Consistently delivers on commitments in a reliable and trustworthy manner.']
        ]
      },
      firm: {
        headline: "You lead knowledge sharing and codification efforts.",
        desc: "Identify areas of improvement and contribute to firm initiatives. Demonstrate deep understanding of knowledge and service lines. Actively lead knowledge-sharing initiatives and take charge of codification, fostering a culture of continuous learning.",
        indicators: [
          ['Contributes to firm initiatives', 'Identifies improvement areas and actively works on initiatives to enhance TAM operations.'],
          ['Owns work outcomes', 'Takes responsibility for tasks; proactively seeks opportunities to enhance value.'],
          ['Leads knowledge sharing', 'Demonstrates deep understanding of service lines; actively leads knowledge-sharing within the team.'],
          ['Codifies knowledge', 'Takes charge of knowledge codification efforts; fosters a culture of continuous learning.']
        ]
      },
      thought: {
        headline: "You lead problem-solving efforts within proposals.",
        desc: "Take charge of issue identification and problem structuring, effectively lead problem-solving efforts within proposals, structure technical and financial proposals with limited guidance, and demonstrate competence and attention to detail in complex analytical tasks.",
        indicators: [
          ['Leads problem-solving in proposals', 'Effectively leads problem-solving efforts within for the proposals.'],
          ['Structures technical and financial proposals', 'Shows growing proficiency in structuring with only limited guidance from managers.'],
          ['Detail-oriented analytical work', 'Clear thinking and attention to detail in complex analytical tasks.'],
          ['Drives actionable solutions', 'Actively contributes to driving clear, reasonable, and actionable solutions for clients.'],
          ['Integrates thinking for team', "Brings integrated thinking to the team's problem-solving efforts."],
          ['Adapts frameworks effectively', 'Actively seeks and adapts relevant frameworks and tools to enhance problem-solving.']
        ]
      },
      people: {
        headline: "You train and coach others to grow.",
        desc: "Lead and facilitate collaboration, contribute positively to team dynamics, train and coach others while contributing to their growth and skill enhancement, and provide regular constructive feedback that helps colleagues develop.",
        indicators: [
          ['Leads collaboration', 'Demonstrates a proactive approach to team cohesion and problem-solving through effective collaboration.'],
          ['Contributes to team dynamics', 'Positively contributes to team energy and demonstrates concern for peers and clients.'],
          ['Trains and coaches others', 'Actively contributes to the growth and skill enhancement of colleagues.'],
          ['Delivers regular constructive feedback', 'Helps colleagues grow by delivering regular constructive feedback.']
        ]
      }
    },

    'manager': {
      label: 'Manager',
      client: {
        headline: "You become a trusted advisor and shape client expectations.",
        desc: "Take a lead in cultivating senior client relationships, develop comprehensive understanding of the 'big picture' in client context, anticipate and address client requirements proactively, communicate compellingly in critical situations using top-down techniques, and present effectively to high-level executives.",
        indicators: [
          ['Builds strong client relationships', 'Develops trusted advisor status by consistently delivering value and insight; maintains regular professional communication.'],
          ['Manages client expectations', 'Sets realistic timelines; proactively addresses scope changes, delays, or risks with transparency.'],
          ['Communicates with clarity and influence', 'Leads high-stakes meetings with confidence; translates complex information into business-friendly terms.'],
          ['Anticipates client needs', 'Identifies unstated client needs through careful listening and business insight; suggests forward-looking solutions.'],
          ['Facilitates cross-team communication', 'Resolves misunderstandings or tension between stakeholders diplomatically; guides teams.'],
          ['Maintains professionalism under pressure', 'Handles difficult feedback or conflicts with composure; protects firm credibility.']
        ]
      },
      firm: {
        headline: "You instill ownership in your team and lead knowledge codification.",
        desc: "Identify areas of improvement and contribute to firm initiatives, lead by example by instilling a culture of ownership within the team, take full ownership of proposals, demonstrate deep understanding of knowledge areas, and lead knowledge codification across the firm.",
        indicators: [
          ['Contributes to firm initiatives', 'Identifies improvement areas and actively contributes to initiatives that enhance TAM operations.'],
          ['Leads by example on ownership', 'Instills a culture of ownership within the team; takes full ownership of proposals.'],
          ['Fosters team accountability', 'Ensures the team collectively takes ownership of TAM successes.'],
          ['Leads knowledge sharing', 'Deep understanding of knowledge areas and service lines; actively leads knowledge-sharing within the team.'],
          ['Codifies knowledge', 'Takes charge of knowledge codification efforts and fosters a culture of continuous learning.'],
          ['Proposal development', 'Targets supporting on 5 proposals.']
        ]
      },
      thought: {
        headline: "You lead complex problem-solving and integrate thinking across functions.",
        desc: "Take charge of issue identification, lead the structuring of proposals, develop clear and actionable solutions based on analysis, foster inclusive and creative problem-solving within the team, and integrate thinking across industries, functions, and frameworks.",
        indicators: [
          ['Leads complex structured analysis', 'Designs and oversees structured problem-solving frameworks and analysis models.'],
          ['Synthesizes data into insights', 'Translates quantitative and qualitative data into meaningful business insights.'],
          ['Ensures analytical rigor across team', 'Reviews and challenges team analyses to confirm accuracy, logic, and assumptions; coaches on tools.'],
          ['Makes data-driven recommendations', 'Uses insights to support recommendations that are compelling and feasible; quantifies impact.'],
          ['Identifies patterns and root causes', 'Goes beyond symptoms to find underlying issues; spots trends across projects, teams, or industries.'],
          ['Balances detail with big-picture', 'Knows when to dive deep and when to zoom out; simplifies complex analytics into high-level takeaways.']
        ]
      },
      people: {
        headline: "You manage and coach a team of TAMers actively.",
        desc: "Foster collaboration within the team, create effective plans and manage team members and resources appropriately, train and coach others to aid in their development, and ask for feedback while delivering constructive upward and downward feedback.",
        indicators: [
          ['Fosters collaboration', 'Proactively encourages and guides team members to work cohesively and leverage diverse strengths.'],
          ['Manages people and resources', 'Creates effective plans and manages team and other internal resources appropriately.'],
          ['Recognizes team efforts', 'Recognizes teams for their efforts and manages upward intelligently.'],
          ['Trains, coaches, and leads', 'Actively contributes to the growth and skill enhancement of colleagues.'],
          ['Provides constructive feedback', 'Asks for feedback and helps colleagues grow by delivering regular constructive feedback.'],
          ['PHC / coaching cadence', 'Targets PHC score of 3 or below 90% of the time, with 4 sessions per team member per year.']
        ]
      }
    },

    'sr-manager': {
      label: 'Sr Manager',
      client: {
        headline: "You build long-lasting business relationships with senior clients.",
        desc: "Build long-lasting business relationships with clients that serve TAM's immediate and long-term goals, shape and execute the strategic vision of client relationships, and lead high-stakes communication with high-level executives.",
        indicators: [
          ['Builds long-lasting business relationships', "Plays a key role in enhancing TAM's strategic partnerships."],
          ['Shapes client relationship vision', 'Drives business growth and long-term connections through strategic vision.'],
          ['Demonstrates big-picture understanding', 'Leads discussions on future client needs and proactively addresses requirements.'],
          ['Communicates compellingly to executives', 'Showcases mastery of top-down communication and synthesizes effectively rather than just summarizing.'],
          ['Tailors documents for senior clients', 'Demonstrates advanced ability to communicate with high-level executives.'],
          ['Manages procurement and senior clients', 'Negotiates effectively while delivering value through proposals and ensuring commitments are met.']
        ]
      },
      firm: {
        headline: "You lead firm initiatives and develop TAM's expertise.",
        desc: "Lead and manage firm initiatives that drive the development and enhancement of TAM's capabilities, lead by example to instill ownership culture, lead knowledge areas across TAM, and codify knowledge in projects and firm-wide initiatives.",
        indicators: [
          ['Leads and manages firm initiatives', "Drives the development and enhancement of TAM's capabilities."],
          ['Instills ownership culture', 'Leads by example; fosters responsibility among team members and ensures collective ownership.'],
          ['Leads knowledge areas across TAM', 'Plays a pivotal role in developing and disseminating expertise throughout TAM.'],
          ['Codifies knowledge firm-wide', 'Takes the lead in codifying knowledge within projects and firm-wide initiatives.']
        ]
      },
      thought: {
        headline: "You apply advanced problem-solving to complex challenges.",
        desc: "Approach problem-solving with rigor, offer innovative and insightful solutions to complex challenges, lead by example in advanced techniques, and integrate thinking across industries, functions, and frameworks.",
        indicators: [
          ['Approaches problems with rigor', 'Offers innovative and insightful solutions to complex challenges.'],
          ['Leads structuring of proposals', 'Provides guidance and actively shapes the approach.'],
          ['Develops actionable solutions', 'Solutions are clear, reasonable, and based on analysis.'],
          ['Fosters inclusive problem-solving', 'Actively encourages and implements innovative solutions and ideas within the team.'],
          ['Guides knowledge integration', "Takes a leadership role in guiding integrated thinking within the team's problem-solving."],
          ['Integrates thinking across functions', 'Generates innovative solutions; promotes resourcefulness within the team.']
        ]
      },
      people: {
        headline: "You drive a culture of collaboration and develop high-performing teams.",
        desc: "Lead the team in driving collaborative and inclusive culture, create inclusive environments for all colleagues, develop and recognize high-performing juniors, and provide regular constructive feedback at scale.",
        indicators: [
          ['Drives collaborative culture', 'Proactively encourages cohesion and leverages diverse strengths to deliver exceptional results.'],
          ['Creates inclusive environments', 'Develops, inspires, and recognizes juniors; builds high-performing teams.'],
          ['Trains, coaches, and leads', 'Actively contributes to the growth and skill enhancement of colleagues.'],
          ['Provides constructive feedback at scale', 'Asks for and provides upward feedback; helps colleagues grow through regular constructive feedback.']
        ]
      }
    },

    'director': {
      label: 'Director',
      client: {
        headline: "You cultivate strategic trust with senior client stakeholders.",
        desc: "Build long-lasting business relationships, shape and execute the strategic vision of client relationships, apply in-depth understanding of the client's industry to shape solutions, manage external communications and set high standards for clarity and effectiveness, and develop sustainable solutions that consider future implications.",
        indicators: [
          ['Cultivates strategic trust', 'Develops trusted partner status with VP/SVP-level contacts; portfolio-level understanding of business.'],
          ['Shapes client expectations at portfolio level', 'Negotiates multi-project timelines; balances competing demands across client teams/functions.'],
          ['Leads strategic client dialogues', 'Orchestrates outcome-focused discussions; coaches managers on executive presence.'],
          ['Drives expansion opportunities', 'Spots white space; connects client needs with cross-practice offerings; positions firm as indispensable partner.'],
          ['Optimizes client engagement models', 'Designs account-specific communication rhythms and governance.'],
          ['Safeguards strategic client health', 'Monitors relationship metrics; intervenes in high-risk situations before escalation to Partners.']
        ]
      },
      firm: {
        headline: "You exhibit exemplary ownership at organizational level.",
        desc: "Lead and manage firm initiatives, exhibit exemplary ownership behavior extended to organizational levels, demonstrate strong accountability for TAM's growth, and lead knowledge areas while codifying knowledge across firm-wide initiatives.",
        indicators: [
          ['Leads firm initiatives', "Drives the development and enhancement of TAM's capabilities."],
          ['Exemplary organizational ownership', 'Demonstrates strong accountability for TAM growth; fosters culture of shared responsibility.'],
          ['Leads knowledge areas firm-wide', 'Plays a pivotal role in developing and disseminating expertise.'],
          ['Codifies knowledge in firm-wide initiatives', 'Leads codification within projects and firm-wide initiatives.']
        ]
      },
      thought: {
        headline: "You architect strategic analysis and shape executive decisions.",
        desc: "Architect strategic analysis frameworks, synthesize insights for executive decision-making, elevate analytical capability at scale, drive data-informed strategy, anticipate systemic trends, and balance depth with organizational impact.",
        indicators: [
          ['Architects strategic analysis frameworks', 'Designs cross-functional or enterprise-level analytical approaches.'],
          ['Synthesizes for executive decisions', 'Translates complex data into executive-ready narratives tied to outcomes (revenue, risk, growth).'],
          ['Elevates analytical capability at scale', 'Institutionalizes best practices, tools, and standards across teams; coaches managers.'],
          ['Drives data-informed strategy', 'Uses analytics to shape business unit or practice strategy; influences C-suite/Partner decisions.'],
          ['Anticipates systemic trends', 'Diagnoses enterprise-wide or industry-level root causes; flags emerging risks/opportunities.'],
          ['Balances depth with organizational impact', 'Aligns analysis with firm strategic priorities; simplifies into actionable executive mandates.']
        ]
      },
      people: {
        headline: "You sponsor a diverse range of colleagues and build high-performing teams.",
        desc: "Foster cross-team collaboration, develop and inspire high-performing teams, sponsor career development of a diverse range of colleagues, and provide constructive feedback that drives growth at all levels.",
        indicators: [
          ['Fosters collaboration', 'Proactively encourages cohesion across the team and with other departments.'],
          ['Builds high-performing teams', 'Develops, inspires, and recognizes juniors; creates inclusive environments.'],
          ['Coaches and challenges others', 'Strengths-based approach; sponsors a diverse range of colleagues for career development.'],
          ['Provides constructive feedback', 'Asks for feedback; helps colleagues grow through regular constructive feedback.']
        ]
      }
    },

    'sr-director': {
      label: 'Sr Director',
      client: {
        headline: "You lead the firm's strategic client portfolio and shape long-term partnerships.",
        desc: "At Sr Director level, you build long-lasting business relationships at the highest level, shape strategic vision across the portfolio, drive thought leadership for clients, and ensure communication efforts build TAM's reputation as a trusted advisor.",
        indicators: [
          ['Leads strategic client portfolio', 'Builds and maintains strong relationships with key executive stakeholders across the portfolio.'],
          ['Shapes long-term vision', 'Drives strategic vision of client relationships; positions firm for sustained partnership.'],
          ['Drives thought leadership', 'Provides strategic guidance to clients; uses expertise to position firm as trusted advisor.'],
          ['Develops communication plans', 'Supports business objectives; builds firm reputation through executive-level communication.'],
          ['Mentors communication professionals', 'Develops senior communication capabilities across the team.']
        ]
      },
      firm: {
        headline: "You shape TAM's organizational direction and culture.",
        desc: "Lead and manage firm initiatives at the highest level, exhibit exemplary ownership extended across the organization, lead and codify knowledge areas firm-wide, and shape TAM's overall strategic direction.",
        indicators: [
          ['Leads firm at organizational level', "Drives development and enhancement of TAM's capabilities firm-wide."],
          ['Sets organizational ownership tone', 'Models accountability for TAM growth; fosters culture of shared responsibility.'],
          ['Leads knowledge areas firm-wide', 'Plays a pivotal role in developing and disseminating expertise across TAM.'],
          ['Shapes firm strategic direction', 'Codifies knowledge within firm-wide initiatives; influences strategic priorities.']
        ]
      },
      thought: {
        headline: "You define analytical strategy at the firm level.",
        desc: "Define analytical strategy at the firm level, drive data-informed strategy across the organization, anticipate systemic trends and root causes, and shape the firm's intellectual property and service offerings.",
        indicators: [
          ['Defines analytical strategy', 'Sets the firm-wide approach to analysis and frameworks.'],
          ['Drives data-informed strategy', 'Influences C-suite and Partner-level decisions with evidence-based scenarios.'],
          ['Anticipates systemic trends', 'Diagnoses industry-level root causes; refines firm IP and service offerings.'],
          ['Shapes IP and offerings', 'Identifies patterns across engagements to evolve firm strategy.']
        ]
      },
      people: {
        headline: "You shape the firm's people strategy and culture.",
        desc: "Build the firm's leadership pipeline, shape culture of collaboration and inclusion, sponsor a diverse range of leaders, and ensure constructive feedback drives growth at every level.",
        indicators: [
          ['Builds leadership pipeline', 'Develops and inspires senior leaders across the firm.'],
          ['Shapes culture firm-wide', 'Models inclusive environment; builds high-performing teams across departments.'],
          ['Sponsors diverse leaders', 'Strengths-based approach; supports career development at the most senior level.'],
          ['Drives feedback culture', 'Models constructive feedback; helps senior colleagues grow through regular dialogue.']
        ]
      }
    }
  };

  const ALL_FRAMEWORKS = {
    advisory: ADVISORY_FRAMEWORK,
    bd: null,       // not yet defined
    digital: null,
    support: null
  };

  const DEPT_LABELS = {
    advisory: 'Advisory',
    bd: 'Business Development',
    digital: 'Digital',
    support: 'Support'
  };

  // ============ GATE LOGIC ============
  let currentDept = null;
  let currentLevel = null;

  // Block scrolling and hide workbook until gate cleared
  document.body.classList.add('gate-active');

  function onDeptChange() {
    const dept = document.getElementById('gateDept').value;
    const levelSel = document.getElementById('gateLevel');
    const status = document.getElementById('gateStatus');
    const enterBtn = document.getElementById('gateEnter');
    enterBtn.disabled = true;

    if (!dept) {
      levelSel.disabled = true;
      levelSel.innerHTML = '<option value="">— Pick department first —</option>';
      status.textContent = '';
      return;
    }

    if (dept !== 'advisory') {
      // Other depts not yet built — show coming-soon
      levelSel.disabled = true;
      levelSel.innerHTML = '<option value="">— Coming soon —</option>';
      status.className = 'gate-status muted';
      status.textContent = `${DEPT_LABELS[dept]} framework is coming in a future release. Choose Advisory to continue.`;
      return;
    }

    // Populate Advisory levels
    const fw = ALL_FRAMEWORKS.advisory;
    levelSel.disabled = false;
    levelSel.innerHTML = '<option value="">— Select your level —</option>' +
      Object.keys(fw).map(key => `<option value="${key}">${fw[key].label}</option>`).join('');
    status.className = 'gate-status muted';
    status.textContent = 'Now choose your level.';

    levelSel.onchange = () => {
      enterBtn.disabled = !levelSel.value;
      if (levelSel.value) {
        status.className = 'gate-status';
        status.textContent = `Ready: Advisory · ${fw[levelSel.value].label}`;
      }
    };
  }

  function enterWorkbook() {
    const dept = document.getElementById('gateDept').value;
    const level = document.getElementById('gateLevel').value;
    if (!dept || !level) return;

    currentDept = dept;
    currentLevel = level;

    // Apply selection
    applySelection(dept, level);

    // Hide gate
    document.getElementById('gate').classList.add('hidden');
    document.body.classList.remove('gate-active');
  }

  function reopenGate(e) {
    if (e) e.preventDefault();
    document.getElementById('gate').classList.remove('hidden');
    document.body.classList.add('gate-active');
    // Pre-fill current selection
    if (currentDept) {
      document.getElementById('gateDept').value = currentDept;
      onDeptChange();
      if (currentLevel) {
        document.getElementById('gateLevel').value = currentLevel;
        const status = document.getElementById('gateStatus');
        const fw = ALL_FRAMEWORKS.advisory;
        status.className = 'gate-status';
        status.textContent = `Ready: Advisory · ${fw[currentLevel].label}`;
        document.getElementById('gateEnter').disabled = false;
      }
    }
    window.scrollTo(0, 0);
  }

  function applySelection(dept, levelKey) {
    const fw = ALL_FRAMEWORKS[dept];
    if (!fw || !fw[levelKey]) return;
    const levelLabel = fw[levelKey].label;
    const deptLabel = DEPT_LABELS[dept];

    // Update title-side and intro
    const ctxDeptLevel = document.getElementById('ctxDeptLevel');
    const ctxDeptName = document.getElementById('ctxDeptName');
    if (ctxDeptLevel) ctxDeptLevel.textContent = `${deptLabel} · ${levelLabel} Level`;
    if (ctxDeptName) ctxDeptName.textContent = deptLabel;

    // Update document title
    document.title = `TAM Self-Assessment — ${deptLabel} · ${levelLabel}`;

    // Update each framework card
    ['client', 'firm', 'thought', 'people'].forEach(dim => {
      const card = document.querySelector(`.framework-card[data-fw="${dim}"]`);
      if (!card || !fw[levelKey][dim]) return;
      const data = fw[levelKey][dim];
      const indicatorsHtml = data.indicators.map(([title, desc]) => `<li><strong>${title}</strong>${desc}</li>`).join('');
      card.innerHTML = `
        <div class="framework-label">What's expected at ${levelLabel} level</div>
        <div class="framework-title">${data.headline}</div>
        <div class="framework-desc">${data.desc}</div>
        <details class="framework-indicators">
          <summary>See the detailed behaviors expected</summary>
          <ul class="indicator-list">${indicatorsHtml}</ul>
        </details>
      `;
    });

    // Update footer
    const footer = document.querySelector('footer > div:first-child');
    if (footer) footer.textContent = `TAM · Self-Assessment Workbook · ${deptLabel} — ${levelLabel}`;
  }

  // ============ ENTRY MANAGEMENT ============
  const dimensions = {
    client: { placeholder: { title: 'e.g., "Client Relationship Management on Policy Lab"', context: 'Which project or engagement? Which client?', action: 'What did you actually do?', outcome: 'What was the outcome? (Quantify if possible.)' } },
    firm: { placeholder: { title: 'e.g., "Led XYZ squad initiative"', context: 'Which squad, initiative, or BD effort?', action: 'What did you do specifically?', outcome: 'What was the result? Who benefited?' } },
    thought: { placeholder: { title: 'e.g., "Structured analytical approach for ABC project"', context: 'What was the problem? What was hard about it?', action: 'What was your analytical or conceptual contribution?', outcome: 'What did it unlock? (Deliverable, insight, client decision.)' } },
    people: { placeholder: { title: 'e.g., "Coached junior Analyst on XYZ track"', context: 'Who did you work with? What was the context?', action: 'How did you collaborate, coach, or give feedback?', outcome: 'What changed for them or the team?' } }
  };

  function addEntry(dim) {
    const container = document.getElementById('entries' + dim.charAt(0).toUpperCase() + dim.slice(1));
    const entries = container.querySelectorAll('.entry');
    const idx = entries.length + 1;
    const ph = dimensions[dim].placeholder;

    const entry = document.createElement('div');
    entry.className = 'entry';
    entry.innerHTML = `
      <div class="entry-header">
        <span class="entry-num">Accomplishment ${String(idx).padStart(2, '0')}</span>
        <button class="remove-btn" title="Remove" onclick="removeEntry(this)">&times;</button>
      </div>
      <div class="field">
        <input type="text" class="entry-title" placeholder="${ph.title}" />
      </div>
      <div class="field">
        <label class="field-label">Context</label>
        <textarea class="entry-context" rows="2" placeholder="${ph.context}"></textarea>
      </div>
      <div class="field">
        <label class="field-label">What you did</label>
        <textarea class="entry-action" rows="3" placeholder="${ph.action}"></textarea>
      </div>
      <div class="field">
        <label class="field-label">Outcome & impact</label>
        <textarea class="entry-outcome" rows="2" placeholder="${ph.outcome}"></textarea>
      </div>
    `;
    container.appendChild(entry);
    renumberEntries(container);
    entry.querySelector('.entry-title').focus();
  }

  function removeEntry(btn) {
    const entry = btn.closest('.entry');
    const container = entry.parentElement;
    entry.remove();
    renumberEntries(container);
  }

  function renumberEntries(container) {
    container.querySelectorAll('.entry-num').forEach((el, i) => {
      el.textContent = `Accomplishment ${String(i + 1).padStart(2, '0')}`;
    });
  }

  // Seed one entry per dimension
  ['client', 'firm', 'thought', 'people'].forEach(addEntry);

  // ============ PROGRESS NAV ============
  const navItems = document.querySelectorAll('.prog-item');
  navItems.forEach(item => {
    item.addEventListener('click', (e) => {
      e.preventDefault();
      const target = document.getElementById(item.dataset.section);
      if (target) target.scrollIntoView({ behavior: 'smooth', block: 'start' });
    });
  });

  // Intersection observer to mark active section
  const sections = document.querySelectorAll('section.dimension, section.export');
  const obs = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        navItems.forEach(n => n.classList.remove('active'));
        const active = document.querySelector(`.prog-item[data-section="${entry.target.id}"]`);
        if (active) active.classList.add('active');
      }
    });
  }, { rootMargin: '-30% 0px -60% 0px' });
  sections.forEach(s => obs.observe(s));

  // Mark sections as 'done' based on content
  function markDone() {
    const sectionMap = {
      info: () => !!document.getElementById('empName').value && !!document.getElementById('empAssessor').value,
      client: () => hasContent('client'),
      firm: () => hasContent('firm'),
      thought: () => hasContent('thought'),
      people: () => hasContent('people'),
      values: () => {
        const vals = ['impact', 'truth', 'team', 'adapt', 'grow'];
        return vals.every(v => !!document.querySelector(`input[name="val-${v}"]:checked`));
      }
    };
    Object.keys(sectionMap).forEach(key => {
      const navEl = document.querySelector(`.prog-item[data-section="${key}"]`);
      if (navEl && sectionMap[key]()) navEl.classList.add('done');
      else if (navEl) navEl.classList.remove('done');
    });
  }

  function hasContent(dim) {
    const container = document.getElementById('entries' + dim.charAt(0).toUpperCase() + dim.slice(1));
    const entries = container.querySelectorAll('.entry');
    let hasAny = false;
    entries.forEach(e => {
      const title = e.querySelector('.entry-title').value.trim();
      const action = e.querySelector('.entry-action').value.trim();
      if (title && action) hasAny = true;
    });
    const rating = document.querySelector(`input[name="rate-${dim}"]:checked`);
    return hasAny && !!rating;
  }

  document.addEventListener('input', markDone);
  document.addEventListener('change', markDone);

  // ============ DATA COLLECTION ============
  function collectData() {
    const data = {
      department: currentDept || 'advisory',
      departmentLabel: DEPT_LABELS[currentDept] || 'Advisory',
      level: currentLevel || '',
      levelLabel: (currentDept && currentLevel && ALL_FRAMEWORKS[currentDept] && ALL_FRAMEWORKS[currentDept][currentLevel]) ? ALL_FRAMEWORKS[currentDept][currentLevel].label : '',
      name: document.getElementById('empName').value || '[Name]',
      assessor: document.getElementById('empAssessor').value || '[Assessor]',
      tenure: document.getElementById('empTenure').value || '[Tenure]',
      position: document.getElementById('empPosition').value || '[Position tenure]',
      dimensions: {},
      values: {},
      overall: document.querySelector('input[name="rate-overall"]:checked')?.value || null
    };

    ['client', 'firm', 'thought', 'people'].forEach(dim => {
      const container = document.getElementById('entries' + dim.charAt(0).toUpperCase() + dim.slice(1));
      const entries = [];
      container.querySelectorAll('.entry').forEach(e => {
        const title = e.querySelector('.entry-title').value.trim();
        const context = e.querySelector('.entry-context').value.trim();
        const action = e.querySelector('.entry-action').value.trim();
        const outcome = e.querySelector('.entry-outcome').value.trim();
        if (title || action) entries.push({ title, context, action, outcome });
      });
      data.dimensions[dim] = {
        entries,
        rating: document.querySelector(`input[name="rate-${dim}"]:checked`)?.value || null
      };
    });

    ['impact', 'truth', 'team', 'adapt', 'grow'].forEach(v => {
      data.values[v] = {
        evidence: document.querySelector(`textarea[data-value="${v}-evidence"]`)?.value.trim() || '',
        rating: document.querySelector(`input[name="val-${v}"]:checked`)?.value || null
      };
    });

    return data;
  }

  // ============ PREVIEW ============
  const dimLabels = {
    client: 'Client Leadership',
    firm: 'Firm Leadership',
    thought: 'Thought Leadership',
    people: 'People Leadership'
  };
  const valueLabels = {
    impact: 'Own Your Impact',
    truth: 'Respect the Truth',
    team: 'Win as a Team',
    adapt: 'Adapt & Innovate',
    grow: 'Grow with Wellbeing'
  };

  function generatePreview() {
    const data = collectData();
    const preview = document.getElementById('previewArea');

    let html = `
      <h2>${data.name}</h2>
      <div class="sub">Self-Assessment · ${data.departmentLabel} · ${data.levelLabel} · Assessor: ${data.assessor} · Tenure: ${data.tenure} (position: ${data.position})</div>
    `;

    ['client', 'firm', 'thought', 'people'].forEach(dim => {
      html += `<h3>${dimLabels[dim]}</h3>`;
      if (data.dimensions[dim].rating) {
        html += `<div class="rating-line">Self-rating: <strong>${data.dimensions[dim].rating}</strong></div>`;
      }
      if (data.dimensions[dim].entries.length === 0) {
        html += `<p class="empty">No accomplishments captured for this dimension.</p>`;
      } else {
        data.dimensions[dim].entries.forEach(e => {
          if (e.title) html += `<h4>${e.title}</h4>`;
          const parts = [];
          if (e.context) parts.push(e.context);
          if (e.action) parts.push(e.action);
          if (e.outcome) parts.push(e.outcome);
          if (parts.length) html += `<p>${parts.join(' ')}</p>`;
        });
      }
    });

    html += `<h3>Adhering to Values</h3>`;
    Object.keys(valueLabels).forEach(v => {
      html += `<h4>${valueLabels[v]}</h4>`;
      if (data.values[v].rating) {
        html += `<div class="rating-line">Self-rating: <strong>${data.values[v].rating}</strong></div>`;
      }
      if (data.values[v].evidence) {
        html += `<p>${data.values[v].evidence}</p>`;
      } else {
        html += `<p class="empty">No evidence captured.</p>`;
      }
    });

    if (data.overall) {
      html += `<h3>Overall Self-Rating</h3><div class="rating-line"><strong>${data.overall}</strong></div>`;
    }

    preview.innerHTML = html;
    preview.classList.add('visible');
    preview.scrollIntoView({ behavior: 'smooth', block: 'start' });
  }

  // ============ EXPORT ============
  function generatePlainText() {
    const data = collectData();
    const sep = '═'.repeat(60);
    let txt = `SELF-ASSESSMENT — ADVISORY · ASSOCIATE\n${sep}\n\n`;
    txt += `Name: ${data.name}\nAssessor: ${data.assessor}\nTenure at TAM: ${data.tenure}\nTenure in position: ${data.position}\n\n`;

    ['client', 'firm', 'thought', 'people'].forEach(dim => {
      txt += `\n${sep}\n${dimLabels[dim].toUpperCase()}\n${sep}\n`;
      if (data.dimensions[dim].rating) txt += `Self-rating: ${data.dimensions[dim].rating}\n\n`;
      data.dimensions[dim].entries.forEach(e => {
        if (e.title) txt += `\n${e.title}\n`;
        if (e.context) txt += `Context: ${e.context}\n`;
        if (e.action) txt += `What I did: ${e.action}\n`;
        if (e.outcome) txt += `Outcome: ${e.outcome}\n`;
      });
    });

    txt += `\n\n${sep}\nADHERING TO VALUES\n${sep}\n`;
    Object.keys(valueLabels).forEach(v => {
      txt += `\n${valueLabels[v]}\n`;
      if (data.values[v].rating) txt += `Self-rating: ${data.values[v].rating}\n`;
      if (data.values[v].evidence) txt += `${data.values[v].evidence}\n`;
    });

    if (data.overall) {
      txt += `\n\n${sep}\nOVERALL SELF-RATING: ${data.overall}\n${sep}\n`;
    }
    return txt;
  }

  function copyToClipboard() {
    const txt = generatePlainText();
    navigator.clipboard.writeText(txt).then(() => showToast('Copied to clipboard'));
  }

  function downloadHTML() {
    const data = collectData();
    generatePreview();
    const preview = document.getElementById('previewArea').innerHTML;
    const html = `<!DOCTYPE html>
<html><head><meta charset="UTF-8"><title>Self-Assessment — ${data.name}</title>
<style>
body { font-family: Georgia, serif; max-width: 720px; margin: 48px auto; padding: 0 32px; color: #0d0b1f; line-height: 1.6; }
h2 { font-size: 28px; margin-bottom: 4px; }
h3 { font-size: 20px; color: #3730a3; margin-top: 28px; padding-bottom: 4px; border-bottom: 1px solid #ddd; }
h4 { font-size: 15px; margin-top: 16px; margin-bottom: 4px; }
.sub { color: #666; font-size: 13px; margin-bottom: 28px; font-family: monospace; }
.rating-line { background: #f5f1e8; padding: 10px 14px; font-family: monospace; font-size: 12px; margin: 10px 0 18px; border-left: 3px solid #4f46e5; }
.empty { color: #888; font-style: italic; }
</style></head><body>${preview}</body></html>`;
    const blob = new Blob([html], { type: 'text/html' });
    const url = URL.createObjectURL(blob);
    const a = document.createElement('a');
    a.href = url;
    a.download = `self-assessment-${data.name.toLowerCase().replace(/\s+/g, '-') || 'draft'}.html`;
    a.click();
    URL.revokeObjectURL(url);
    showToast('Downloaded');
  }

  function exportPolishedPDF() {
    const data = collectData();

    // Helper to build a value rating tag
    const ratingTag = (rating) => rating ? `<span class="tag">${rating}</span>` : `<span class="tag muted">Not rated</span>`;

    // Build dimension blocks
    const dimensionBlocks = ['client', 'firm', 'thought', 'people'].map(dim => {
      const d = data.dimensions[dim];
      const entriesHtml = d.entries.length === 0
        ? `<p class="empty">No accomplishments captured.</p>`
        : d.entries.map(e => {
            const body = [e.context, e.action, e.outcome].filter(Boolean).join(' ');
            return `
              <div class="entry">
                ${e.title ? `<div class="entry-title">${escapeHtml(e.title)}</div>` : ''}
                ${body ? `<div class="entry-body">${escapeHtml(body)}</div>` : ''}
              </div>`;
          }).join('');

      return `
        <section class="dim">
          <header class="dim-header">
            <h3>${dimLabels[dim]}</h3>
            ${ratingTag(d.rating)}
          </header>
          ${entriesHtml}
        </section>`;
    }).join('');

    // Build values block
    const valuesHtml = Object.keys(valueLabels).map(v => {
      const val = data.values[v];
      return `
        <div class="value-item">
          <div class="value-row-head">
            <span class="value-name">${valueLabels[v]}</span>
            ${ratingTag(val.rating)}
          </div>
          ${val.evidence ? `<div class="value-evidence">${escapeHtml(val.evidence)}</div>` : `<div class="empty">No evidence captured.</div>`}
        </div>`;
    }).join('');

    const html = `<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Self-Assessment — ${escapeHtml(data.name)}</title>
<link href="https://fonts.googleapis.com/css2?family=Fraunces:ital,wght@0,500;0,600;1,400&family=Inter+Tight:wght@400;500;600&family=JetBrains+Mono:wght@400;500&display=swap" rel="stylesheet">
<style>
  @page { size: A4 landscape; margin: 12mm 14mm; }
  * { box-sizing: border-box; margin: 0; padding: 0; }
  html, body {
    font-family: 'Inter Tight', sans-serif;
    color: #0d0b1f;
    font-size: 10.5pt;
    line-height: 1.45;
    background: #fff;
  }

  /* MASTHEAD */
  .masthead {
    display: flex;
    justify-content: space-between;
    align-items: flex-end;
    padding-bottom: 10px;
    border-bottom: 2px solid #1e1b4b;
    margin-bottom: 14px;
  }
  .brand {
    font-family: 'Fraunces', serif;
    font-weight: 600;
    font-size: 22pt;
    letter-spacing: -0.02em;
    display: flex;
    align-items: center;
    gap: 8px;
    color: #1e1b4b;
  }
  .brand .diamond {
    width: 11px; height: 11px;
    background: #4f46e5;
    transform: rotate(45deg);
    display: inline-block;
  }
  .doc-meta {
    text-align: right;
    font-family: 'JetBrains Mono', monospace;
    font-size: 8pt;
    color: #6b6783;
    letter-spacing: 0.04em;
    line-height: 1.5;
  }
  .doc-meta strong { color: #0d0b1f; font-weight: 500; }

  /* HEADER STRIP */
  .person {
    display: grid;
    grid-template-columns: 1.2fr 1fr 1fr 1fr;
    gap: 18px;
    padding: 10px 0 14px;
    margin-bottom: 14px;
    border-bottom: 1px solid rgba(13,11,31,0.12);
  }
  .person .field-label {
    font-family: 'JetBrains Mono', monospace;
    font-size: 7pt;
    text-transform: uppercase;
    letter-spacing: 0.1em;
    color: #6b6783;
    margin-bottom: 2px;
  }
  .person .field-value {
    font-family: 'Fraunces', serif;
    font-size: 13pt;
    font-weight: 500;
    color: #0d0b1f;
    line-height: 1.15;
  }

  /* OVERALL */
  .overall {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 14px;
    background: linear-gradient(90deg, #1e1b4b 0%, #3730a3 100%);
    color: #f5f1e8;
    margin-bottom: 14px;
    border-radius: 2px;
  }
  .overall-label {
    font-family: 'JetBrains Mono', monospace;
    font-size: 8pt;
    text-transform: uppercase;
    letter-spacing: 0.15em;
    color: #fbbf24;
  }
  .overall-value {
    font-family: 'Fraunces', serif;
    font-size: 16pt;
    font-weight: 500;
    color: #fff;
  }

  /* TWO COLUMN BODY */
  .body {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 16px;
    align-items: start;
  }

  .col h2 {
    font-family: 'Fraunces', serif;
    font-weight: 500;
    font-size: 12pt;
    color: #1e1b4b;
    text-transform: uppercase;
    letter-spacing: 0.06em;
    margin-bottom: 8px;
    padding-bottom: 4px;
    border-bottom: 1px solid #1e1b4b;
  }

  /* DIMENSIONS */
  section.dim {
    margin-bottom: 10px;
    padding: 8px 10px;
    background: #faf7f0;
    border-left: 2px solid #4f46e5;
    page-break-inside: avoid;
  }
  .dim-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 6px;
  }
  .dim-header h3 {
    font-family: 'Fraunces', serif;
    font-weight: 500;
    font-size: 11pt;
    color: #0d0b1f;
  }

  .tag {
    font-family: 'JetBrains Mono', monospace;
    font-size: 7.5pt;
    text-transform: uppercase;
    letter-spacing: 0.06em;
    padding: 3px 8px;
    background: #1e1b4b;
    color: #fbbf24;
    border-radius: 100px;
    white-space: nowrap;
  }
  .tag.muted {
    background: rgba(13,11,31,0.08);
    color: #6b6783;
  }

  .entry {
    margin-top: 5px;
    padding-top: 5px;
    border-top: 1px dotted rgba(13,11,31,0.15);
  }
  .entry:first-of-type {
    margin-top: 0;
    padding-top: 0;
    border-top: none;
  }
  .entry-title {
    font-weight: 600;
    font-size: 10pt;
    color: #0d0b1f;
    margin-bottom: 1px;
    line-height: 1.25;
  }
  .entry-body {
    font-size: 9.5pt;
    color: #2a2640;
    line-height: 1.4;
  }

  /* VALUES */
  .values {
    display: flex;
    flex-direction: column;
    gap: 6px;
  }
  .value-item {
    padding: 6px 10px;
    background: #faf7f0;
    border-left: 2px solid #f59e0b;
    page-break-inside: avoid;
  }
  .value-row-head {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 3px;
  }
  .value-name {
    font-family: 'Fraunces', serif;
    font-weight: 500;
    font-size: 10.5pt;
    color: #0d0b1f;
  }
  .value-evidence {
    font-size: 9pt;
    color: #2a2640;
    line-height: 1.4;
  }
  .empty {
    font-size: 9pt;
    font-style: italic;
    color: #6b6783;
  }

  /* FOOTER */
  .footer {
    margin-top: 18px;
    padding-top: 10px;
    border-top: 1px solid rgba(13,11,31,0.12);
    display: flex;
    justify-content: space-between;
    font-family: 'JetBrains Mono', monospace;
    font-size: 7.5pt;
    color: #6b6783;
    letter-spacing: 0.04em;
  }

  @media print {
    .body { page-break-inside: avoid; }
  }
</style>
</head>
<body>
  <header class="masthead">
    <div class="brand"><span class="diamond"></span>TAM</div>
    <div class="doc-meta">
      <strong>Self-Assessment · Mid-Year 2026</strong><br>
      ${escapeHtml(data.departmentLabel)} · ${escapeHtml(data.levelLabel)} Level
    </div>
  </header>

  <div class="person">
    <div>
      <div class="field-label">Name</div>
      <div class="field-value">${escapeHtml(data.name)}</div>
    </div>
    <div>
      <div class="field-label">Assessor</div>
      <div class="field-value">${escapeHtml(data.assessor)}</div>
    </div>
    <div>
      <div class="field-label">Tenure at TAM</div>
      <div class="field-value">${escapeHtml(data.tenure)}</div>
    </div>
    <div>
      <div class="field-label">Tenure in Position</div>
      <div class="field-value">${escapeHtml(data.position)}</div>
    </div>
  </div>

  ${data.overall ? `
  <div class="overall">
    <span class="overall-label">Overall Self-Rating</span>
    <span class="overall-value">${escapeHtml(data.overall)}</span>
  </div>` : ''}

  <div class="body">
    <div class="col">
      <h2>Competency Dimensions</h2>
      ${dimensionBlocks}
    </div>
    <div class="col">
      <h2>Adhering to Values</h2>
      <div class="values">${valuesHtml}</div>
    </div>
  </div>

  <div class="footer">
    <span>TAM · Self-Assessment · ${new Date().toLocaleDateString('en-US', { month: 'long', year: 'numeric' })}</span>
    <span>Confidential — for performance review use</span>
  </div>

  <scr` + `ipt>
    window.addEventListener('load', () => {
      setTimeout(() => window.print(), 400);
    });
  <\/script>
</body>
</html>`;

    const w = window.open('', '_blank');
    if (!w) {
      showToast('Pop-up blocked — please allow pop-ups');
      return;
    }
    w.document.write(html);
    w.document.close();
    showToast('Opening polished PDF...');
  }

  // Simple HTML escape helper
  function escapeHtml(str) {
    if (str === null || str === undefined) return '';
    return String(str)
      .replace(/&/g, '&amp;')
      .replace(/</g, '&lt;')
      .replace(/>/g, '&gt;')
      .replace(/"/g, '&quot;')
      .replace(/'/g, '&#039;');
  }

  // ============ STORAGE & SUBMIT ============
  // Use window.storage if available (artifact env), fall back to in-memory
  const STORAGE_KEY = 'tam:self-assessments';
  const memoryStore = { items: [] };

  async function loadAll() {
    try {
      if (window.storage && typeof window.storage.get === 'function') {
        const r = await window.storage.get(STORAGE_KEY);
        return r && r.value ? JSON.parse(r.value) : [];
      }
    } catch (e) {
      // key doesn't exist or other error — fall through
    }
    return memoryStore.items;
  }

  async function saveAll(items) {
    if (window.storage && typeof window.storage.set === 'function') {
      try {
        await window.storage.set(STORAGE_KEY, JSON.stringify(items));
        return true;
      } catch (e) {
        console.error('Storage save failed:', e);
      }
    }
    memoryStore.items = items;
    return true;
  }

  async function submitAssessment() {
    const data = collectData();
    if (!data.name || data.name === '[Name]') {
      showToast('Please enter your name first');
      return;
    }
    const record = {
      id: 'sa_' + Date.now() + '_' + Math.random().toString(36).slice(2, 8),
      savedAt: new Date().toISOString(),
      ...data
    };
    const items = await loadAll();
    items.push(record);
    await saveAll(items);
    showToast('Self-assessment saved');
  }

  // ============ ADMIN ============
  const ADMIN_PASS = 'tam2025'; // change this to whatever you like
  let adminUnlocked = false;

  function openAdmin(e) {
    if (e) e.preventDefault();
    document.getElementById('adminOverlay').classList.add('show');
    if (adminUnlocked) {
      document.getElementById('adminLogin').style.display = 'none';
      document.getElementById('adminBody').style.display = 'flex';
      refreshAdmin();
    } else {
      document.getElementById('adminLogin').style.display = 'block';
      document.getElementById('adminBody').style.display = 'none';
      setTimeout(() => document.getElementById('adminPass').focus(), 100);
    }
  }

  function closeAdmin() {
    document.getElementById('adminOverlay').classList.remove('show');
  }

  function checkAdminPass() {
    const val = document.getElementById('adminPass').value;
    if (val === ADMIN_PASS) {
      adminUnlocked = true;
      document.getElementById('adminPass').value = '';
      document.getElementById('adminLogin').style.display = 'none';
      document.getElementById('adminBody').style.display = 'flex';
      refreshAdmin();
    } else {
      showToast('Incorrect passcode');
      document.getElementById('adminPass').value = '';
    }
  }

  async function refreshAdmin() {
    const items = await loadAll();
    const tbody = document.getElementById('adminTbody');
    const empty = document.getElementById('adminEmpty');
    const stats = document.getElementById('adminStats');
    const table = document.getElementById('adminTable');

    stats.textContent = `${items.length} self-assessment${items.length === 1 ? '' : 's'} saved`;

    if (items.length === 0) {
      table.style.display = 'none';
      empty.style.display = 'block';
      tbody.innerHTML = '';
      return;
    }
    table.style.display = 'table';
    empty.style.display = 'none';

    tbody.innerHTML = items.map(item => {
      const date = new Date(item.savedAt);
      const dateStr = date.toLocaleDateString('en-GB', { day: '2-digit', month: 'short', year: 'numeric' });
      const overall = item.overall || null;
      const ratingHtml = overall
        ? `<span class="rating-pill">${escapeHtml(overall)}</span>`
        : `<span class="rating-pill muted">Not rated</span>`;
      return `
        <tr data-id="${item.id}">
          <td class="name">${escapeHtml(item.name || '—')}</td>
          <td>${escapeHtml(item.departmentLabel || 'Advisory')}</td>
          <td>${escapeHtml(item.levelLabel || '—')}</td>
          <td>${escapeHtml(item.assessor || '—')}</td>
          <td>${ratingHtml}</td>
          <td>${dateStr}</td>
          <td class="t-right">
            <button class="row-action" onclick="viewAssessment('${item.id}')">View</button>
            <button class="row-action danger" onclick="deleteAssessment('${item.id}')">Delete</button>
          </td>
        </tr>`;
    }).join('');
  }

  async function viewAssessment(id) {
    const items = await loadAll();
    const item = items.find(i => i.id === id);
    if (!item) return;
    // Inject this record's data into the preview area in a new window
    const valLabels = { impact: 'Own Your Impact', truth: 'Respect the Truth', team: 'Win as a Team', adapt: 'Adapt & Innovate', grow: 'Grow with Wellbeing' };
    const dimLbls = { client: 'Client Leadership', firm: 'Firm Leadership', thought: 'Thought Leadership', people: 'People Leadership' };

    let body = `<h2>${escapeHtml(item.name)}</h2>
      <div class="sub">Self-Assessment · ${escapeHtml(item.departmentLabel || 'Advisory')} · ${escapeHtml(item.levelLabel || '')} · Assessor: ${escapeHtml(item.assessor)} · Saved: ${new Date(item.savedAt).toLocaleString()}</div>`;

    ['client','firm','thought','people'].forEach(dim => {
      const d = item.dimensions && item.dimensions[dim];
      if (!d) return;
      body += `<h3>${dimLbls[dim]}</h3>`;
      if (d.rating) body += `<div class="rating-line">Self-rating: <strong>${escapeHtml(d.rating)}</strong></div>`;
      if (!d.entries || d.entries.length === 0) {
        body += `<p class="empty">No accomplishments captured.</p>`;
      } else {
        d.entries.forEach(e => {
          if (e.title) body += `<h4>${escapeHtml(e.title)}</h4>`;
          const parts = [e.context, e.action, e.outcome].filter(Boolean).map(escapeHtml);
          if (parts.length) body += `<p>${parts.join(' ')}</p>`;
        });
      }
    });

    body += `<h3>Adhering to Values</h3>`;
    Object.keys(valLabels).forEach(v => {
      const val = item.values && item.values[v];
      if (!val) return;
      body += `<h4>${valLabels[v]}</h4>`;
      if (val.rating) body += `<div class="rating-line">Self-rating: <strong>${escapeHtml(val.rating)}</strong></div>`;
      if (val.evidence) body += `<p>${escapeHtml(val.evidence)}</p>`;
    });
    if (item.overall) body += `<h3>Overall Self-Rating</h3><div class="rating-line"><strong>${escapeHtml(item.overall)}</strong></div>`;

    const win = window.open('', '_blank');
    if (!win) { showToast('Pop-up blocked'); return; }
    win.document.write(`<!DOCTYPE html><html><head><meta charset="UTF-8"><title>${escapeHtml(item.name)}</title>
<style>body{font-family:Georgia,serif;max-width:760px;margin:48px auto;padding:0 32px;color:#0d0b1f;line-height:1.6}h2{font-size:28px;margin-bottom:4px}h3{font-size:20px;color:#3730a3;margin-top:28px;padding-bottom:4px;border-bottom:1px solid #ddd}h4{font-size:15px;margin-top:16px;margin-bottom:4px}.sub{color:#666;font-size:13px;margin-bottom:28px;font-family:monospace}.rating-line{background:#f5f1e8;padding:10px 14px;font-family:monospace;font-size:12px;margin:10px 0 18px;border-left:3px solid #4f46e5}.empty{color:#888;font-style:italic}</style>
</head><body>${body}</body></html>`);
    win.document.close();
  }

  async function deleteAssessment(id) {
    if (!confirm('Delete this self-assessment? This cannot be undone.')) return;
    const items = await loadAll();
    const filtered = items.filter(i => i.id !== id);
    await saveAll(filtered);
    showToast('Deleted');
    refreshAdmin();
  }

  async function deleteAllAssessments() {
    if (!confirm('Delete ALL saved self-assessments? This cannot be undone.')) return;
    if (!confirm('Are you absolutely sure? This will remove every record.')) return;
    await saveAll([]);
    showToast('All assessments deleted');
    refreshAdmin();
  }

  // ============ EXCEL/CSV EXPORT ============
  async function exportAllExcel() {
    const items = await loadAll();
    if (items.length === 0) {
      showToast('Nothing to export');
      return;
    }

    // Flatten each record into one row, with separate columns for each field
    const headers = [
      'Name', 'Department', 'Level', 'Assessor', 'Tenure at TAM', 'Tenure in Position', 'Saved At',
      'Overall Rating',
      'Client Leadership Rating', 'Client Leadership Accomplishments',
      'Firm Leadership Rating', 'Firm Leadership Accomplishments',
      'Thought Leadership Rating', 'Thought Leadership Accomplishments',
      'People Leadership Rating', 'People Leadership Accomplishments',
      'Own Your Impact Rating', 'Own Your Impact Evidence',
      'Respect the Truth Rating', 'Respect the Truth Evidence',
      'Win as a Team Rating', 'Win as a Team Evidence',
      'Adapt & Innovate Rating', 'Adapt & Innovate Evidence',
      'Grow with Wellbeing Rating', 'Grow with Wellbeing Evidence'
    ];

    const formatEntries = (entries) => {
      if (!entries || entries.length === 0) return '';
      return entries.map((e, i) => {
        const lines = [];
        if (e.title) lines.push(`[${i + 1}] ${e.title}`);
        if (e.context) lines.push(`Context: ${e.context}`);
        if (e.action) lines.push(`Did: ${e.action}`);
        if (e.outcome) lines.push(`Outcome: ${e.outcome}`);
        return lines.join('\n');
      }).join('\n\n');
    };

    const rows = items.map(item => {
      const dims = item.dimensions || {};
      const vals = item.values || {};
      return [
        item.name || '',
        item.departmentLabel || 'Advisory',
        item.levelLabel || '',
        item.assessor || '',
        item.tenure || '',
        item.position || '',
        new Date(item.savedAt).toLocaleString(),
        item.overall || '',
        (dims.client && dims.client.rating) || '',
        formatEntries(dims.client && dims.client.entries),
        (dims.firm && dims.firm.rating) || '',
        formatEntries(dims.firm && dims.firm.entries),
        (dims.thought && dims.thought.rating) || '',
        formatEntries(dims.thought && dims.thought.entries),
        (dims.people && dims.people.rating) || '',
        formatEntries(dims.people && dims.people.entries),
        (vals.impact && vals.impact.rating) || '',
        (vals.impact && vals.impact.evidence) || '',
        (vals.truth && vals.truth.rating) || '',
        (vals.truth && vals.truth.evidence) || '',
        (vals.team && vals.team.rating) || '',
        (vals.team && vals.team.evidence) || '',
        (vals.adapt && vals.adapt.rating) || '',
        (vals.adapt && vals.adapt.evidence) || '',
        (vals.grow && vals.grow.rating) || '',
        (vals.grow && vals.grow.evidence) || ''
      ];
    });

    // CSV escape: wrap fields in quotes, double up internal quotes
    const csvEscape = (v) => {
      const s = String(v == null ? '' : v);
      return '"' + s.replace(/"/g, '""') + '"';
    };
    const csvLines = [headers.map(csvEscape).join(',')];
    rows.forEach(row => csvLines.push(row.map(csvEscape).join(',')));
    // BOM for Excel UTF-8 compatibility
    const csv = '\uFEFF' + csvLines.join('\r\n');

    const blob = new Blob([csv], { type: 'text/csv;charset=utf-8;' });
    const url = URL.createObjectURL(blob);
    const a = document.createElement('a');
    const stamp = new Date().toISOString().slice(0, 10);
    a.href = url;
    a.download = `tam-self-assessments-${stamp}.csv`;
    a.click();
    URL.revokeObjectURL(url);
    showToast(`Exported ${items.length} record${items.length === 1 ? '' : 's'}`);
  }

  // Close admin on Escape
  document.addEventListener('keydown', (e) => {
    if (e.key === 'Escape') {
      const overlay = document.getElementById('adminOverlay');
      if (overlay && overlay.classList.contains('show')) closeAdmin();
    }
  });

  function showToast(msg) {
    const t = document.getElementById('toast');
    t.textContent = msg;
    t.classList.add('show');
    setTimeout(() => t.classList.remove('show'), 2200);
  }
</script>

</body>
</html>
