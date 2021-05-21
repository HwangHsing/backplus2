
" Taglist
set mouse=a                            "这个设置是必须的，这样才能点击标签
let Tlist_Ctags_Cmd = 'ctags'           "设置ctags命令的路径
let Tlist_Show_One_File = 1             "不同时显示多个文件的tag
let Tlist_Exit_OnlyWindow = 1           "如果taglist是当前最后一个窗口则退出vim
let Tlist_Use_Right_Window = 0          "设置窗口位置为右边（默认在左>边）
let Tlist_WinWidth = 30
let Tlist_Sort_Type='name'              "设置Tlist的排序方式为按名称排序，默认为按出现顺序
let Tlist_Use_SingleClick=1             "设置单击一次tag即跳转到定义，默认为双击
"let Tlist_Auto_Open = 1                "设置开启vim自动打开Tlist
"let Tlist_Close_On_Select = 1          "设置在选择tag后自动关闭Tlist}
let Tlist_Process_File_Always=1         "在不显示Tlist的时候仍然解析tags
nnoremap tl :Tlist<CR>


