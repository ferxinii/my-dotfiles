local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
    s("ui", {
        t("\\mathrm{i}"),
    }),
    s("not", {
        t("\\not"),
    }),
    s("circ", {
        t("\\circ"),
    }),
    s("pi", {
        t("\\pi"),
    }),
    s("xi", {
        t("\\xi"),
    }),
    s("tau", {
        t("\\tau"),
    }),
    s("rho", {
        t("\\rho"),
    }),
    s("nabla", {
        t("\\nabla"),
    }),
    s("colon", {
        t("\\colon")
    }),
    s("cdot", {
        t("\\cdot")
    }),
    s("partial", {
        t("\\partial")
    }),
    s("Omega", {
        t("\\Omega")
    }),
    s("mu", {
        t("\\mu")
    }),
    s("eta", {
        t("\\eta")
    }),
    s("phi", {
        t("\\phi")
    }),
    s("varphi", {
        t("\\varphi")
    }),
    s("theta", {
        t("\\theta")
    }),
    s("delta", {
        t("\\delta")
    }),
    s("alpha", {
        t("\\alpha")
    }),
    s("beta", {
        t("\\beta")
    }),
    s("sigma", {
        t("\\sigma")
    }),
    s("lambda", {
        t("\\lambda")
    }),
    s("gamma", {
        t("\\gamma")
    }),
    s("bar", {
        t("\\bar")
    }),
    s("approx", {
        t("\\approx")
    }),
    s("hat", {
        t("\\hat")
    }),
    s("left", {
        t("\\left")
    }),
    s("right", {
        t("\\right")
    }),
    s("times", {
        t("\\times")
    }),
    s("in", {
        t("\\in")
    }),
    s("cup", {
        t("\\cup")
    }),
    s("cap", {
        t("\\cap")
    }),
    s("bigcup", {
        t("\\bigcup")
    }),
    s("bigcap", {
        t("\\bigcap")
    }),
    s("emptyset", {
        t("\\emptyset")
    }),
    s("setminus", {
        t("\\setminus")
    }),
    s("leq", {
        t("\\leq")
    }),
    s("geq", {
        t("\\geq")
    }),
    s("neq", {
        t("\\neq")
    }),
    s("vareps", {
        t("\\varepsilon")
    }),
    s("varepsilon", {
        t("\\varepsilon")
    }),
    s("item", {
        t("\\item")
    }),
    s("forall", {
        t("\\forall")
    }),
    s("int", {
        t("\\int")
    }),
    s("sum", {
        t("\\sum")
    }),
    s("mid", {
        t("\\mid")
    }),
    s("langle", {
        t("\\langle")
    }),
    s("rangle", {
        t("\\rangle")
    }),
    s("iff", {
        t("\\iff")
    }),
    s("subset", {
        t("\\subset")
    }),
    s("exists", {
        t("\\exists")
    }),
    s("Rn", {
        t("\\mathbb{R}^n")
    }),
    s("mani", {
        t("\\mathcal{M}")
    }),
    s("Rightarrow", {
        t("\\Rightarrow")
    }),
    s("Leftarrow", {
        t("\\Leftarrow")
    }),
    s("norm", {
        t("\\|"),
        i(1), -- Insert node for math content
        t("\\|"),
        i(0), -- Final cursor position
    }),
    s("si", {
        t("\\si{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    s("num", {
        t("\\num{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    s("label", {
        t("\\label{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    s("ref", {
        t("\\ref{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    s("cite", {
        t("\\cite{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    -- section 
    s("sec", {
        t("\\section{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    s("sec*", {
        t("\\section*{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    -- subsection 
    s("ssec", {
        t("\\subsection{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    s("ssec*", {
        t("\\subsection*{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    s("sssec", {
        t("\\subsubsection{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    s("sssec*", {
        t("\\subsubsection*{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    s("text", {
        t("\\text{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    s("emph", {
        t("\\emph{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    -- \textit
    s("it", {
        t("\\textit{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    s("sc", {
        t("\\textsc{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    -- \textbf
    s("bf", {
        t("\\textbf{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    -- bm 
    s("bm", {
        t("\\bm{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    -- mathbb 
    s("mbb", {
        t("\\mathbb{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    s("mbf", {
        t("\\mathbf{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    -- mathcal
    s("mcal", {
        t("\\mathcal{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    -- mathrm
    s("mrm", {
        t("\\mathrm{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    s("mfr", {
        t("\\mathfrak{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    s("tilde", {
        t("\\tilde{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    -- inlinemath
    s({trig = "im", dscr = "Inline math mode, $ $" }, {
        t("$"),
        i(1), -- Insert node for math content
        t("$"),
        i(0), -- Final cursor position
    }),
    -- display math
    s({trig = "dm", dscr = "Display math mode, \\[  \\]"}, {
        t({"\\[", ""}),
        i(1), -- Insert node for math content
        t({"", ".\\]"}),
        i(0), -- Final cursor position
    }),
    --figure
    s("fig", {
        t({"\\begin{figure*}[h!]", "    \\centering", ""}), -- New lines in an array
        t({"    \\includegraphics[width=0.99\\linewidth]{"}),
        i(1), -- Insert node for the first image name
        t({"}", "    \\caption{"}), 
        i(2), -- Insert node for the overall caption
        t({"}", "    \\label{"}),
        i(3), -- Insert node for the overall label
        t({"}", "\\end{figure*}"}), -- New lines in an array
    }),
    --subfigure
    s("sfig", {
        t({"\\begin{figure*}[h!]", "    \\centering", ""}), -- Begin figure environment
        t({"    \\begin{subfigure}{0.45\\textwidth}", "        \\includegraphics[width=0.99\\linewidth]{"}),
        i(1), -- Insert node for the first image name
        t({"}", "    \\end{subfigure}%", ""}),
        t({"    \\begin{subfigure}{0.45\\textwidth}", "        \\includegraphics[width=0.99\\linewidth]{"}),
        i(2), -- Insert node for the second image name
        t({"}", "    \\end{subfigure}", ""}),
        t("    \\caption{"), 
        i(3), -- Insert node for the overall caption
        t({"}", "    \\label{"}),
        i(4), -- Insert node for the overall label
        t({"}", "\\end{figure*}"})
    }),
    -- \frac
    s({trig="ff", dscr="\\frac{}{}"},
      fmt(
        "\\frac{<>}{<>}",
        {
          i(1),
          i(2)
        },
        {delimiters = "<>"} -- manually specifying angle bracket delimiters
      )
    ),
    s({trig="binom", dscr="\\binom{}{}"},
      fmt(
        "\\binom{<>}{<>}",
        {
          i(1),
          i(2)
        },
        {delimiters = "<>"} -- manually specifying angle bracket delimiters
      )
    ),

    -- cos
    s({trig = "cos", dscr = "\\cos{ }" }, {
        t("\\cos{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    -- sin
    s({trig = "sin", dscr = "\\sin{ }" }, {
        t("\\sin{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    -- log
    s({trig = "log", dscr = "\\log{ }" }, {
        t("\\log{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
    s({trig="itemize", dscr="itemize environment"},
      fmta(
         [[
           \begin{itemize}
               <>
           \end{itemize}
         ]],
         { i(1) }
      )
    ),
    s({trig="frame", dscr="Frame environment"},
      fmta(
         [[
           \begin{frame}\frametitle{<>}\framesubtitle{<>}
               <>
           \end{frame}
         ]],
         { i(1), i(2), i(3)}
      )
    ),
    s({trig="def", dscr="definition environment"},
      fmta(
         [[
           \begin{definition}
               <>
           \end{definition}
         ]],
         { i(1) }
      )
    ),
    s({trig="thm", dscr="theorem environment"},
      fmta(
         [[
           \begin{theorem}
               <>
           \end{theorem}
         ]],
         { i(1) }
      )
    ),
    s({trig="proof", dscr="proof environment"},
      fmta(
         [[
           \begin{proof}
               <>
           \end{proof}
         ]],
         { i(1) }
      )
    ),
    s({trig="prop", dscr="proposition environment"},
      fmta(
         [[
           \begin{proposition}
               <>
           \end{proposition}
         ]],
         { i(1) }
      )
    ),
    -- Equation
    s({trig="eq", dscr="Equation* environment"},
      fmta(
         [[
           \begin{equation*}
               <>
           \end{equation*}
         ]],
         { i(1) }
      )
    ),
    -- Code for environment snippet in the above GIF
    s({trig="env", dscr="General environment"},
      fmta(
        [[
          \begin{<>}
              <>
          \end{<>}
        ]],
        {
          i(1),
          i(2),
          rep(1),  -- this node repeats insert node i(1)
        }
      )
    ),
    -- bmatrix
    s({trig="bmat", dscr="bmatrix environment"},
      fmta(
         [[
           \begin{bmatrix}
               <>
           \end{bmatrix}
         ]],
         { i(1) }
      )
    ),
    -- pmatrix
    s({trig="pmat", dscr="pmatrix environment"},
      fmta(
         [[
           \begin{pmatrix}
               <>
           \end{pmatrix}
         ]],
         { i(1) }
      )
    ),
    -- vec
    s({trig = "vec", dscr = "\\vec{ }" }, {
        t("\\vec{"),
        i(1), -- Insert node for math content
        t("}"),
        i(0), -- Final cursor position
    }),
}
