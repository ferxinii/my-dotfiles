return {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here
    vim.g.tex_flavor='latex'
--    vim.g.vimtex_view_method='zathura'
    vim.g.vimtex_view_method='skim'
--    vim.g.vimtex_view_zathura_options='-reuse-instance'
    vim.g.vimtex_quickfix_mode=0
    -- vim.g.Tex_CompileRule_pdf = 'mkdir -p build && pdflatex -output-directory=build -interaction=nonstopmode $* && mv build/$*.pdf .'
    vim.g.vimtex_compiler_latexmk={aux_dir='./aux',out_dir='./out'}
    vim.g.tex_flavor='latex'
    vim.g.conceallevel=1
    vim.g.tex_conceal='abdmg'
    -- vim.g.Tex_BibtexFlavor = 'biber'

    -- vim.env.TEXINPUTS = "./aux//:" .. (vim.env.TEXINPUTS or "")
    --let g:vimtex_view_method='zathura'
    --let g:vimtex_quickfix_mode=0
  end
}

