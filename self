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
    background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 200 200' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='n'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.85' numOctaves='2' stitchTiles='stitch'/%3E%3CfeColorMatrix values='0 0 0 0 0.05 0 0 0 0 0.04 0 0 0 0 0.12 0 0 0 0.08 0'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23n)'/%3E%3C/svg%3E");
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
      <div class="meta-pill">End-of-Year · Cycle 2025</div>
    </div>

    <div class="title-block">
      <h1 class="title">Your <em>growth</em><br>starts with your story.</h1>
      <div class="title-side">
        <strong>Self-Assessment Workbook</strong><br>
        Advisory · Associate Level<br>
        — <br>
        Built to help you capture<br>
        what you've accomplished<br>
        with clarity and evidence.
      </div>
    </div>

    <p class="intro">
      Your self-assessment is the foundation of a useful conversation about your growth. This workbook walks you through all <em>five dimensions</em> of how TAM evaluates performance, with the Advisory framework for your level surfaced inline. Fill in what you've actually done, with specific examples. Your assessor will use this alongside feedback from your exposure list and your KPIs to write your growth report.
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

    <div class="framework-card">
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

    <div class="framework-card">
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

    <div class="framework-card">
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

    <div class="framework-card">
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
              <th>Assessor</th>
              <th>Tenure</th>
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
      <div class="sub">Self-Assessment · Advisory · Associate · Assessor: ${data.assessor} · Tenure: ${data.tenure} (position: ${data.position})</div>
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
      <strong>Self-Assessment · End-of-Year 2025</strong><br>
      Advisory · Associate Level
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
          <td>${escapeHtml(item.assessor || '—')}</td>
          <td>${escapeHtml(item.tenure || '—')}</td>
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
      <div class="sub">Self-Assessment · Advisory · Associate · Assessor: ${escapeHtml(item.assessor)} · Saved: ${new Date(item.savedAt).toLocaleString()}</div>`;

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
      'Name', 'Assessor', 'Tenure at TAM', 'Tenure in Position', 'Saved At',
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
