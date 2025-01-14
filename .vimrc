" 기본 설정
set number          " 행 번호 표시
set relativenumber  " 상대 행 번호 표시
set tabstop=4       " 탭 크기를 4로 설정
set shiftwidth=4    " 들여쓰기 크기를 4로 설정
set expandtab       " 탭을 스페이스로 변환
" set autoindent      " 자동 들여쓰기
set smartindent	    " 프로그래밍 파일에서 지능적인 들여쓰기
syntax on           " 구문 강조 활성화
set background=dark " 배경 색상 설정 (dark 또는 light)
set hlsearch        " 검색 결과 강조
set incsearch       " 검색 중에 실시간으로 결과 표시
set ignorecase      " 검색 시 대소문자 무시
set cursorline      " 현재 커서가 위치한 줄 강조
set showmatch       " 일치하는 괄호 강조
set wildmenu        " 명령어 자동 완성 메뉴 활성화
set scrolloff=8     " 커서 위아래 최소 8줄 여백 유지
set clipboard=unnamedplus " 시스템 클립보드 사용
set splitright      " 수직 분할 시 새 창을 오른쪽에 열기
set splitbelow      " 수평 분할 시 새 창을 아래에 열기

" 자동 괄호 닫기
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

" 플러그인 매니저 예시 (Vim-Plug)
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" 단축키 매핑 예제
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-p> :Files<CR>

" coc.nvim 기본 설정
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
" Enter 키가 자동 완성 팝업에서 작동하도록 설정
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

" 자동 완성 팝업 메뉴 표시 시간 설정
set updatetime=300

" 디버그 정보 확인 (필요시)
nmap <silent> <leader>a :CocList diagnostics<CR>
