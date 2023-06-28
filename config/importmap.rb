# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "sortablejs", to: "https://cdn.jsdelivr.net/npm/sortablejs@1.15.0/modular/sortable.esm.js"
pin "react", to: "https://ga.jspm.io/npm:react@18.2.0/index.js"
pin "react-dom", to: "https://ga.jspm.io/npm:react-dom@18.2.0/index.js"
pin "scheduler", to: "https://ga.jspm.io/npm:scheduler@0.23.0/index.js"
pin_all_from "app/javascript/custom", under: "custom"
