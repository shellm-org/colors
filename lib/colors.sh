## \brief Colors for your scripts.

if [[ ( -t 1 && "$1" != "never" ) || "$1" == "always" ]]; then
  colors() {
    [ $# -eq 0 ] && return 0

    local E='e'
    local ESC='\e['
    local F=""
    while [ $# -ne 0 ]; do
      case $1 in
        # Foreground
        d|default) F=$F\;39 ;;
        k|black) F=$F\;30 ;;
        r|red) F=$F\;31 ;;
        g|green) F=$F\;32 ;;
        y|yellow) F=$F\;33 ;;
        b|blue) F=$F\;34 ;;
        m|magenta) F=$F\;35 ;;
        c|cyan) F=$F\;36 ;;
        w|white) F=$F\;37 ;;
        rgb) F="$F;38;2;$2;$3;$4"; shift 3 ;;
        256)
          F="$F;38;5"
          case $2 in
            16|000000|\#000000) F=$F\;16 ;;
            17|00005f|\#00005f) F=$F\;17 ;;
            18|000087|\#000087) F=$F\;18 ;;
            19|0000af|\#0000af) F=$F\;19 ;;
            20|0000d7|\#0000d7) F=$F\;20 ;;
            21|0000ff|\#0000ff) F=$F\;21 ;;
            22|005f00|\#005f00) F=$F\;22 ;;
            23|005f5f|\#005f5f) F=$F\;23 ;;
            24|005f87|\#005f87) F=$F\;24 ;;
            25|005faf|\#005faf) F=$F\;25 ;;
            26|005fd7|\#005fd7) F=$F\;26 ;;
            27|005fff|\#005fff) F=$F\;27 ;;
            28|008700|\#008700) F=$F\;28 ;;
            29|00875f|\#00875f) F=$F\;29 ;;
            30|008787|\#008787) F=$F\;30 ;;
            31|0087af|\#0087af) F=$F\;31 ;;
            32|0087d7|\#0087d7) F=$F\;32 ;;
            33|0087ff|\#0087ff) F=$F\;33 ;;
            34|00af00|\#00af00) F=$F\;34 ;;
            35|00af5f|\#00af5f) F=$F\;35 ;;
            36|00af87|\#00af87) F=$F\;36 ;;
            37|00afaf|\#00afaf) F=$F\;37 ;;
            38|00afd7|\#00afd7) F=$F\;38 ;;
            39|00afff|\#00afff) F=$F\;39 ;;
            40|00d700|\#00d700) F=$F\;40 ;;
            41|00d75f|\#00d75f) F=$F\;41 ;;
            42|00d787|\#00d787) F=$F\;42 ;;
            43|00d7af|\#00d7af) F=$F\;43 ;;
            44|00d7d7|\#00d7d7) F=$F\;44 ;;
            45|00d7ff|\#00d7ff) F=$F\;45 ;;
            46|00ff00|\#00ff00) F=$F\;46 ;;
            47|00ff5f|\#00ff5f) F=$F\;47 ;;
            48|00ff87|\#00ff87) F=$F\;48 ;;
            49|00ffaf|\#00ffaf) F=$F\;49 ;;
            50|00ffd7|\#00ffd7) F=$F\;50 ;;
            51|00ffff|\#00ffff) F=$F\;51 ;;
            52|5f0000|\#5f0000) F=$F\;52 ;;
            53|5f005f|\#5f005f) F=$F\;53 ;;
            54|5f0087|\#5f0087) F=$F\;54 ;;
            55|5f00af|\#5f00af) F=$F\;55 ;;
            56|5f00d7|\#5f00d7) F=$F\;56 ;;
            57|5f00ff|\#5f00ff) F=$F\;57 ;;
            58|5f5f00|\#5f5f00) F=$F\;58 ;;
            59|5f5f5f|\#5f5f5f) F=$F\;59 ;;
            60|5f5f87|\#5f5f87) F=$F\;60 ;;
            61|5f5faf|\#5f5faf) F=$F\;61 ;;
            62|5f5fd7|\#5f5fd7) F=$F\;62 ;;
            63|5f5fff|\#5f5fff) F=$F\;63 ;;
            64|5f8700|\#5f8700) F=$F\;64 ;;
            65|5f875f|\#5f875f) F=$F\;65 ;;
            66|5f8787|\#5f8787) F=$F\;66 ;;
            67|5f87af|\#5f87af) F=$F\;67 ;;
            68|5f87d7|\#5f87d7) F=$F\;68 ;;
            69|5f87ff|\#5f87ff) F=$F\;69 ;;
            70|5faf00|\#5faf00) F=$F\;70 ;;
            71|5faf5f|\#5faf5f) F=$F\;71 ;;
            72|5faf87|\#5faf87) F=$F\;72 ;;
            73|5fafaf|\#5fafaf) F=$F\;73 ;;
            74|5fafd7|\#5fafd7) F=$F\;74 ;;
            75|5fafff|\#5fafff) F=$F\;75 ;;
            76|5fd700|\#5fd700) F=$F\;76 ;;
            77|5fd75f|\#5fd75f) F=$F\;77 ;;
            78|5fd787|\#5fd787) F=$F\;78 ;;
            79|5fd7af|\#5fd7af) F=$F\;79 ;;
            80|5fd7d7|\#5fd7d7) F=$F\;80 ;;
            81|5fd7ff|\#5fd7ff) F=$F\;81 ;;
            82|5fff00|\#5fff00) F=$F\;82 ;;
            83|5fff5f|\#5fff5f) F=$F\;83 ;;
            84|5fff87|\#5fff87) F=$F\;84 ;;
            85|5fffaf|\#5fffaf) F=$F\;85 ;;
            86|5fffd7|\#5fffd7) F=$F\;86 ;;
            87|5fffff|\#5fffff) F=$F\;87 ;;
            88|870000|\#870000) F=$F\;88 ;;
            89|87005f|\#87005f) F=$F\;89 ;;
            90|870087|\#870087) F=$F\;90 ;;
            91|8700af|\#8700af) F=$F\;91 ;;
            92|8700d7|\#8700d7) F=$F\;92 ;;
            93|8700ff|\#8700ff) F=$F\;93 ;;
            94|875f00|\#875f00) F=$F\;94 ;;
            95|875f5f|\#875f5f) F=$F\;95 ;;
            96|875f87|\#875f87) F=$F\;96 ;;
            97|875faf|\#875faf) F=$F\;97 ;;
            98|875fd7|\#875fd7) F=$F\;98 ;;
            99|875fff|\#875fff) F=$F\;99 ;;
            100|878700|\#878700) F=$F\;100 ;;
            101|87875f|\#87875f) F=$F\;101 ;;
            102|878787|\#878787) F=$F\;102 ;;
            103|8787af|\#8787af) F=$F\;103 ;;
            104|8787d7|\#8787d7) F=$F\;104 ;;
            105|8787ff|\#8787ff) F=$F\;105 ;;
            106|87af00|\#87af00) F=$F\;106 ;;
            107|87af5f|\#87af5f) F=$F\;107 ;;
            108|87af87|\#87af87) F=$F\;108 ;;
            109|87afaf|\#87afaf) F=$F\;109 ;;
            110|87afd7|\#87afd7) F=$F\;110 ;;
            111|87afff|\#87afff) F=$F\;111 ;;
            112|87d700|\#87d700) F=$F\;112 ;;
            113|87d75f|\#87d75f) F=$F\;113 ;;
            114|87d787|\#87d787) F=$F\;114 ;;
            115|87d7af|\#87d7af) F=$F\;115 ;;
            116|87d7d7|\#87d7d7) F=$F\;116 ;;
            117|87d7ff|\#87d7ff) F=$F\;117 ;;
            118|87ff00|\#87ff00) F=$F\;118 ;;
            119|87ff5f|\#87ff5f) F=$F\;119 ;;
            120|87ff87|\#87ff87) F=$F\;120 ;;
            121|87ffaf|\#87ffaf) F=$F\;121 ;;
            122|87ffd7|\#87ffd7) F=$F\;122 ;;
            123|87ffff|\#87ffff) F=$F\;123 ;;
            124|af0000|\#af0000) F=$F\;124 ;;
            125|af005f|\#af005f) F=$F\;125 ;;
            126|af0087|\#af0087) F=$F\;126 ;;
            127|af00af|\#af00af) F=$F\;127 ;;
            128|af00d7|\#af00d7) F=$F\;128 ;;
            129|af00ff|\#af00ff) F=$F\;129 ;;
            130|af5f00|\#af5f00) F=$F\;130 ;;
            131|af5f5f|\#af5f5f) F=$F\;131 ;;
            132|af5f87|\#af5f87) F=$F\;132 ;;
            133|af5faf|\#af5faf) F=$F\;133 ;;
            134|af5fd7|\#af5fd7) F=$F\;134 ;;
            135|af5fff|\#af5fff) F=$F\;135 ;;
            136|af8700|\#af8700) F=$F\;136 ;;
            137|af875f|\#af875f) F=$F\;137 ;;
            138|af8787|\#af8787) F=$F\;138 ;;
            139|af87af|\#af87af) F=$F\;139 ;;
            140|af87d7|\#af87d7) F=$F\;140 ;;
            141|af87ff|\#af87ff) F=$F\;141 ;;
            142|afaf00|\#afaf00) F=$F\;142 ;;
            143|afaf5f|\#afaf5f) F=$F\;143 ;;
            144|afaf87|\#afaf87) F=$F\;144 ;;
            145|afafaf|\#afafaf) F=$F\;145 ;;
            146|afafd7|\#afafd7) F=$F\;146 ;;
            147|afafff|\#afafff) F=$F\;147 ;;
            148|afd700|\#afd700) F=$F\;148 ;;
            149|afd75f|\#afd75f) F=$F\;149 ;;
            150|afd787|\#afd787) F=$F\;150 ;;
            151|afd7af|\#afd7af) F=$F\;151 ;;
            152|afd7d7|\#afd7d7) F=$F\;152 ;;
            153|afd7ff|\#afd7ff) F=$F\;153 ;;
            154|afff00|\#afff00) F=$F\;154 ;;
            155|afff5f|\#afff5f) F=$F\;155 ;;
            156|afff87|\#afff87) F=$F\;156 ;;
            157|afffaf|\#afffaf) F=$F\;157 ;;
            158|afffd7|\#afffd7) F=$F\;158 ;;
            159|afffff|\#afffff) F=$F\;159 ;;
            160|d70000|\#d70000) F=$F\;160 ;;
            161|d7005f|\#d7005f) F=$F\;161 ;;
            162|d70087|\#d70087) F=$F\;162 ;;
            163|d700af|\#d700af) F=$F\;163 ;;
            164|d700d7|\#d700d7) F=$F\;164 ;;
            165|d700ff|\#d700ff) F=$F\;165 ;;
            166|d75f00|\#d75f00) F=$F\;166 ;;
            167|d75f5f|\#d75f5f) F=$F\;167 ;;
            168|d75f87|\#d75f87) F=$F\;168 ;;
            169|d75faf|\#d75faf) F=$F\;169 ;;
            170|d75fd7|\#d75fd7) F=$F\;170 ;;
            171|d75fff|\#d75fff) F=$F\;171 ;;
            172|d78700|\#d78700) F=$F\;172 ;;
            173|d7875f|\#d7875f) F=$F\;173 ;;
            174|d78787|\#d78787) F=$F\;174 ;;
            175|d787af|\#d787af) F=$F\;175 ;;
            176|d787d7|\#d787d7) F=$F\;176 ;;
            177|d787ff|\#d787ff) F=$F\;177 ;;
            178|d7af00|\#d7af00) F=$F\;178 ;;
            179|d7af5f|\#d7af5f) F=$F\;179 ;;
            180|d7af87|\#d7af87) F=$F\;180 ;;
            181|d7afaf|\#d7afaf) F=$F\;181 ;;
            182|d7afd7|\#d7afd7) F=$F\;182 ;;
            183|d7afff|\#d7afff) F=$F\;183 ;;
            184|d7d700|\#d7d700) F=$F\;184 ;;
            185|d7d75f|\#d7d75f) F=$F\;185 ;;
            186|d7d787|\#d7d787) F=$F\;186 ;;
            187|d7d7af|\#d7d7af) F=$F\;187 ;;
            188|d7d7d7|\#d7d7d7) F=$F\;188 ;;
            189|d7d7ff|\#d7d7ff) F=$F\;189 ;;
            190|d7ff00|\#d7ff00) F=$F\;190 ;;
            191|d7ff5f|\#d7ff5f) F=$F\;191 ;;
            192|d7ff87|\#d7ff87) F=$F\;192 ;;
            193|d7ffaf|\#d7ffaf) F=$F\;193 ;;
            194|d7ffd7|\#d7ffd7) F=$F\;194 ;;
            195|d7ffff|\#d7ffff) F=$F\;195 ;;
            196|ff0000|\#ff0000) F=$F\;196 ;;
            197|ff005f|\#ff005f) F=$F\;197 ;;
            198|ff0087|\#ff0087) F=$F\;198 ;;
            199|ff00af|\#ff00af) F=$F\;199 ;;
            200|ff00d7|\#ff00d7) F=$F\;200 ;;
            201|ff00ff|\#ff00ff) F=$F\;201 ;;
            202|ff5f00|\#ff5f00) F=$F\;202 ;;
            203|ff5f5f|\#ff5f5f) F=$F\;203 ;;
            204|ff5f87|\#ff5f87) F=$F\;204 ;;
            205|ff5faf|\#ff5faf) F=$F\;205 ;;
            206|ff5fd7|\#ff5fd7) F=$F\;206 ;;
            207|ff5fff|\#ff5fff) F=$F\;207 ;;
            208|ff8700|\#ff8700) F=$F\;208 ;;
            209|ff875f|\#ff875f) F=$F\;209 ;;
            210|ff8787|\#ff8787) F=$F\;210 ;;
            211|ff87af|\#ff87af) F=$F\;211 ;;
            212|ff87d7|\#ff87d7) F=$F\;212 ;;
            213|ff87ff|\#ff87ff) F=$F\;213 ;;
            214|ffaf00|\#ffaf00) F=$F\;214 ;;
            215|ffaf5f|\#ffaf5f) F=$F\;215 ;;
            216|ffaf87|\#ffaf87) F=$F\;216 ;;
            217|ffafaf|\#ffafaf) F=$F\;217 ;;
            218|ffafd7|\#ffafd7) F=$F\;218 ;;
            219|ffafff|\#ffafff) F=$F\;219 ;;
            220|ffd700|\#ffd700) F=$F\;220 ;;
            221|ffd75f|\#ffd75f) F=$F\;221 ;;
            222|ffd787|\#ffd787) F=$F\;222 ;;
            223|ffd7af|\#ffd7af) F=$F\;223 ;;
            224|ffd7d7|\#ffd7d7) F=$F\;224 ;;
            225|ffd7ff|\#ffd7ff) F=$F\;225 ;;
            226|ffff00|\#ffff00) F=$F\;226 ;;
            227|ffff5f|\#ffff5f) F=$F\;227 ;;
            228|ffff87|\#ffff87) F=$F\;228 ;;
            229|ffffaf|\#ffffaf) F=$F\;229 ;;
            230|ffffd7|\#ffffd7) F=$F\;230 ;;
            231|ffffff|\#ffffff) F=$F\;231 ;;
            232|080808|\#080808) F=$F\;232 ;;
            233|121212|\#121212) F=$F\;233 ;;
            234|1c1c1c|\#1c1c1c) F=$F\;234 ;;
            235|262626|\#262626) F=$F\;235 ;;
            236|303030|\#303030) F=$F\;236 ;;
            237|3a3a3a|\#3a3a3a) F=$F\;237 ;;
            238|444444|\#444444) F=$F\;238 ;;
            239|4e4e4e|\#4e4e4e) F=$F\;239 ;;
            240|585858|\#585858) F=$F\;240 ;;
            241|626262|\#626262) F=$F\;241 ;;
            242|6c6c6c|\#6c6c6c) F=$F\;242 ;;
            243|767676|\#767676) F=$F\;243 ;;
            244|808080|\#808080) F=$F\;244 ;;
            245|8a8a8a|\#8a8a8a) F=$F\;245 ;;
            246|949494|\#949494) F=$F\;246 ;;
            247|9e9e9e|\#9e9e9e) F=$F\;247 ;;
            248|a8a8a8|\#a8a8a8) F=$F\;248 ;;
            249|b2b2b2|\#b2b2b2) F=$F\;249 ;;
            250|bcbcbc|\#bcbcbc) F=$F\;250 ;;
            251|c6c6c6|\#c6c6c6) F=$F\;251 ;;
            252|d0d0d0|\#d0d0d0) F=$F\;252 ;;
            253|dadada|\#dadada) F=$F\;253 ;;
            254|e4e4e4|\#e4e4e4) F=$F\;254 ;;
            255|eeeeee|\#eeeeee) F=$F\;255 ;;
          esac
          shift
        ;;

        # Foreground extended
        ik|intenseBlack) F=$F\;90 ;;
        ir|intenseRed) F=$F\;91 ;;
        ig|intenseGreen) F=$F\;92 ;;
        iy|intenseYellow) F=$F\;93 ;;
        ib|intenseBlue) F=$F\;94 ;;
        im|intenseMagenta) F=$F\;95 ;;
        ic|intenseCyan) F=$F\;96 ;;
        iw|intenseWhite) F=$F\;97 ;;

        # Background
        od|onDefault) F=$F\;49 ;;
        ok|onBlack) F=$F\;40 ;;
        or|onRed) F=$F\;41 ;;
        og|onGreen) F=$F\;42 ;;
        oy|onYellow) F=$F\;43 ;;
        ob|onBlue) F=$F\;44 ;;
        om|onMagenta) F=$F\;45 ;;
        oc|onCyan) F=$F\;46 ;;
        ow|onWhite) F=$F\;47 ;;
        orgb|onRGB) F="$F;48;2;$2;$3;$4"; shift 3 ;;
        o256|on256)
          F="$F;48;5"
          case $2 in
            16|000000|\#000000) F=$F\;16 ;;
            17|00005f|\#00005f) F=$F\;17 ;;
            18|000087|\#000087) F=$F\;18 ;;
            19|0000af|\#0000af) F=$F\;19 ;;
            20|0000d7|\#0000d7) F=$F\;20 ;;
            21|0000ff|\#0000ff) F=$F\;21 ;;
            22|005f00|\#005f00) F=$F\;22 ;;
            23|005f5f|\#005f5f) F=$F\;23 ;;
            24|005f87|\#005f87) F=$F\;24 ;;
            25|005faf|\#005faf) F=$F\;25 ;;
            26|005fd7|\#005fd7) F=$F\;26 ;;
            27|005fff|\#005fff) F=$F\;27 ;;
            28|008700|\#008700) F=$F\;28 ;;
            29|00875f|\#00875f) F=$F\;29 ;;
            30|008787|\#008787) F=$F\;30 ;;
            31|0087af|\#0087af) F=$F\;31 ;;
            32|0087d7|\#0087d7) F=$F\;32 ;;
            33|0087ff|\#0087ff) F=$F\;33 ;;
            34|00af00|\#00af00) F=$F\;34 ;;
            35|00af5f|\#00af5f) F=$F\;35 ;;
            36|00af87|\#00af87) F=$F\;36 ;;
            37|00afaf|\#00afaf) F=$F\;37 ;;
            38|00afd7|\#00afd7) F=$F\;38 ;;
            39|00afff|\#00afff) F=$F\;39 ;;
            40|00d700|\#00d700) F=$F\;40 ;;
            41|00d75f|\#00d75f) F=$F\;41 ;;
            42|00d787|\#00d787) F=$F\;42 ;;
            43|00d7af|\#00d7af) F=$F\;43 ;;
            44|00d7d7|\#00d7d7) F=$F\;44 ;;
            45|00d7ff|\#00d7ff) F=$F\;45 ;;
            46|00ff00|\#00ff00) F=$F\;46 ;;
            47|00ff5f|\#00ff5f) F=$F\;47 ;;
            48|00ff87|\#00ff87) F=$F\;48 ;;
            49|00ffaf|\#00ffaf) F=$F\;49 ;;
            50|00ffd7|\#00ffd7) F=$F\;50 ;;
            51|00ffff|\#00ffff) F=$F\;51 ;;
            52|5f0000|\#5f0000) F=$F\;52 ;;
            53|5f005f|\#5f005f) F=$F\;53 ;;
            54|5f0087|\#5f0087) F=$F\;54 ;;
            55|5f00af|\#5f00af) F=$F\;55 ;;
            56|5f00d7|\#5f00d7) F=$F\;56 ;;
            57|5f00ff|\#5f00ff) F=$F\;57 ;;
            58|5f5f00|\#5f5f00) F=$F\;58 ;;
            59|5f5f5f|\#5f5f5f) F=$F\;59 ;;
            60|5f5f87|\#5f5f87) F=$F\;60 ;;
            61|5f5faf|\#5f5faf) F=$F\;61 ;;
            62|5f5fd7|\#5f5fd7) F=$F\;62 ;;
            63|5f5fff|\#5f5fff) F=$F\;63 ;;
            64|5f8700|\#5f8700) F=$F\;64 ;;
            65|5f875f|\#5f875f) F=$F\;65 ;;
            66|5f8787|\#5f8787) F=$F\;66 ;;
            67|5f87af|\#5f87af) F=$F\;67 ;;
            68|5f87d7|\#5f87d7) F=$F\;68 ;;
            69|5f87ff|\#5f87ff) F=$F\;69 ;;
            70|5faf00|\#5faf00) F=$F\;70 ;;
            71|5faf5f|\#5faf5f) F=$F\;71 ;;
            72|5faf87|\#5faf87) F=$F\;72 ;;
            73|5fafaf|\#5fafaf) F=$F\;73 ;;
            74|5fafd7|\#5fafd7) F=$F\;74 ;;
            75|5fafff|\#5fafff) F=$F\;75 ;;
            76|5fd700|\#5fd700) F=$F\;76 ;;
            77|5fd75f|\#5fd75f) F=$F\;77 ;;
            78|5fd787|\#5fd787) F=$F\;78 ;;
            79|5fd7af|\#5fd7af) F=$F\;79 ;;
            80|5fd7d7|\#5fd7d7) F=$F\;80 ;;
            81|5fd7ff|\#5fd7ff) F=$F\;81 ;;
            82|5fff00|\#5fff00) F=$F\;82 ;;
            83|5fff5f|\#5fff5f) F=$F\;83 ;;
            84|5fff87|\#5fff87) F=$F\;84 ;;
            85|5fffaf|\#5fffaf) F=$F\;85 ;;
            86|5fffd7|\#5fffd7) F=$F\;86 ;;
            87|5fffff|\#5fffff) F=$F\;87 ;;
            88|870000|\#870000) F=$F\;88 ;;
            89|87005f|\#87005f) F=$F\;89 ;;
            90|870087|\#870087) F=$F\;90 ;;
            91|8700af|\#8700af) F=$F\;91 ;;
            92|8700d7|\#8700d7) F=$F\;92 ;;
            93|8700ff|\#8700ff) F=$F\;93 ;;
            94|875f00|\#875f00) F=$F\;94 ;;
            95|875f5f|\#875f5f) F=$F\;95 ;;
            96|875f87|\#875f87) F=$F\;96 ;;
            97|875faf|\#875faf) F=$F\;97 ;;
            98|875fd7|\#875fd7) F=$F\;98 ;;
            99|875fff|\#875fff) F=$F\;99 ;;
            100|878700|\#878700) F=$F\;100 ;;
            101|87875f|\#87875f) F=$F\;101 ;;
            102|878787|\#878787) F=$F\;102 ;;
            103|8787af|\#8787af) F=$F\;103 ;;
            104|8787d7|\#8787d7) F=$F\;104 ;;
            105|8787ff|\#8787ff) F=$F\;105 ;;
            106|87af00|\#87af00) F=$F\;106 ;;
            107|87af5f|\#87af5f) F=$F\;107 ;;
            108|87af87|\#87af87) F=$F\;108 ;;
            109|87afaf|\#87afaf) F=$F\;109 ;;
            110|87afd7|\#87afd7) F=$F\;110 ;;
            111|87afff|\#87afff) F=$F\;111 ;;
            112|87d700|\#87d700) F=$F\;112 ;;
            113|87d75f|\#87d75f) F=$F\;113 ;;
            114|87d787|\#87d787) F=$F\;114 ;;
            115|87d7af|\#87d7af) F=$F\;115 ;;
            116|87d7d7|\#87d7d7) F=$F\;116 ;;
            117|87d7ff|\#87d7ff) F=$F\;117 ;;
            118|87ff00|\#87ff00) F=$F\;118 ;;
            119|87ff5f|\#87ff5f) F=$F\;119 ;;
            120|87ff87|\#87ff87) F=$F\;120 ;;
            121|87ffaf|\#87ffaf) F=$F\;121 ;;
            122|87ffd7|\#87ffd7) F=$F\;122 ;;
            123|87ffff|\#87ffff) F=$F\;123 ;;
            124|af0000|\#af0000) F=$F\;124 ;;
            125|af005f|\#af005f) F=$F\;125 ;;
            126|af0087|\#af0087) F=$F\;126 ;;
            127|af00af|\#af00af) F=$F\;127 ;;
            128|af00d7|\#af00d7) F=$F\;128 ;;
            129|af00ff|\#af00ff) F=$F\;129 ;;
            130|af5f00|\#af5f00) F=$F\;130 ;;
            131|af5f5f|\#af5f5f) F=$F\;131 ;;
            132|af5f87|\#af5f87) F=$F\;132 ;;
            133|af5faf|\#af5faf) F=$F\;133 ;;
            134|af5fd7|\#af5fd7) F=$F\;134 ;;
            135|af5fff|\#af5fff) F=$F\;135 ;;
            136|af8700|\#af8700) F=$F\;136 ;;
            137|af875f|\#af875f) F=$F\;137 ;;
            138|af8787|\#af8787) F=$F\;138 ;;
            139|af87af|\#af87af) F=$F\;139 ;;
            140|af87d7|\#af87d7) F=$F\;140 ;;
            141|af87ff|\#af87ff) F=$F\;141 ;;
            142|afaf00|\#afaf00) F=$F\;142 ;;
            143|afaf5f|\#afaf5f) F=$F\;143 ;;
            144|afaf87|\#afaf87) F=$F\;144 ;;
            145|afafaf|\#afafaf) F=$F\;145 ;;
            146|afafd7|\#afafd7) F=$F\;146 ;;
            147|afafff|\#afafff) F=$F\;147 ;;
            148|afd700|\#afd700) F=$F\;148 ;;
            149|afd75f|\#afd75f) F=$F\;149 ;;
            150|afd787|\#afd787) F=$F\;150 ;;
            151|afd7af|\#afd7af) F=$F\;151 ;;
            152|afd7d7|\#afd7d7) F=$F\;152 ;;
            153|afd7ff|\#afd7ff) F=$F\;153 ;;
            154|afff00|\#afff00) F=$F\;154 ;;
            155|afff5f|\#afff5f) F=$F\;155 ;;
            156|afff87|\#afff87) F=$F\;156 ;;
            157|afffaf|\#afffaf) F=$F\;157 ;;
            158|afffd7|\#afffd7) F=$F\;158 ;;
            159|afffff|\#afffff) F=$F\;159 ;;
            160|d70000|\#d70000) F=$F\;160 ;;
            161|d7005f|\#d7005f) F=$F\;161 ;;
            162|d70087|\#d70087) F=$F\;162 ;;
            163|d700af|\#d700af) F=$F\;163 ;;
            164|d700d7|\#d700d7) F=$F\;164 ;;
            165|d700ff|\#d700ff) F=$F\;165 ;;
            166|d75f00|\#d75f00) F=$F\;166 ;;
            167|d75f5f|\#d75f5f) F=$F\;167 ;;
            168|d75f87|\#d75f87) F=$F\;168 ;;
            169|d75faf|\#d75faf) F=$F\;169 ;;
            170|d75fd7|\#d75fd7) F=$F\;170 ;;
            171|d75fff|\#d75fff) F=$F\;171 ;;
            172|d78700|\#d78700) F=$F\;172 ;;
            173|d7875f|\#d7875f) F=$F\;173 ;;
            174|d78787|\#d78787) F=$F\;174 ;;
            175|d787af|\#d787af) F=$F\;175 ;;
            176|d787d7|\#d787d7) F=$F\;176 ;;
            177|d787ff|\#d787ff) F=$F\;177 ;;
            178|d7af00|\#d7af00) F=$F\;178 ;;
            179|d7af5f|\#d7af5f) F=$F\;179 ;;
            180|d7af87|\#d7af87) F=$F\;180 ;;
            181|d7afaf|\#d7afaf) F=$F\;181 ;;
            182|d7afd7|\#d7afd7) F=$F\;182 ;;
            183|d7afff|\#d7afff) F=$F\;183 ;;
            184|d7d700|\#d7d700) F=$F\;184 ;;
            185|d7d75f|\#d7d75f) F=$F\;185 ;;
            186|d7d787|\#d7d787) F=$F\;186 ;;
            187|d7d7af|\#d7d7af) F=$F\;187 ;;
            188|d7d7d7|\#d7d7d7) F=$F\;188 ;;
            189|d7d7ff|\#d7d7ff) F=$F\;189 ;;
            190|d7ff00|\#d7ff00) F=$F\;190 ;;
            191|d7ff5f|\#d7ff5f) F=$F\;191 ;;
            192|d7ff87|\#d7ff87) F=$F\;192 ;;
            193|d7ffaf|\#d7ffaf) F=$F\;193 ;;
            194|d7ffd7|\#d7ffd7) F=$F\;194 ;;
            195|d7ffff|\#d7ffff) F=$F\;195 ;;
            196|ff0000|\#ff0000) F=$F\;196 ;;
            197|ff005f|\#ff005f) F=$F\;197 ;;
            198|ff0087|\#ff0087) F=$F\;198 ;;
            199|ff00af|\#ff00af) F=$F\;199 ;;
            200|ff00d7|\#ff00d7) F=$F\;200 ;;
            201|ff00ff|\#ff00ff) F=$F\;201 ;;
            202|ff5f00|\#ff5f00) F=$F\;202 ;;
            203|ff5f5f|\#ff5f5f) F=$F\;203 ;;
            204|ff5f87|\#ff5f87) F=$F\;204 ;;
            205|ff5faf|\#ff5faf) F=$F\;205 ;;
            206|ff5fd7|\#ff5fd7) F=$F\;206 ;;
            207|ff5fff|\#ff5fff) F=$F\;207 ;;
            208|ff8700|\#ff8700) F=$F\;208 ;;
            209|ff875f|\#ff875f) F=$F\;209 ;;
            210|ff8787|\#ff8787) F=$F\;210 ;;
            211|ff87af|\#ff87af) F=$F\;211 ;;
            212|ff87d7|\#ff87d7) F=$F\;212 ;;
            213|ff87ff|\#ff87ff) F=$F\;213 ;;
            214|ffaf00|\#ffaf00) F=$F\;214 ;;
            215|ffaf5f|\#ffaf5f) F=$F\;215 ;;
            216|ffaf87|\#ffaf87) F=$F\;216 ;;
            217|ffafaf|\#ffafaf) F=$F\;217 ;;
            218|ffafd7|\#ffafd7) F=$F\;218 ;;
            219|ffafff|\#ffafff) F=$F\;219 ;;
            220|ffd700|\#ffd700) F=$F\;220 ;;
            221|ffd75f|\#ffd75f) F=$F\;221 ;;
            222|ffd787|\#ffd787) F=$F\;222 ;;
            223|ffd7af|\#ffd7af) F=$F\;223 ;;
            224|ffd7d7|\#ffd7d7) F=$F\;224 ;;
            225|ffd7ff|\#ffd7ff) F=$F\;225 ;;
            226|ffff00|\#ffff00) F=$F\;226 ;;
            227|ffff5f|\#ffff5f) F=$F\;227 ;;
            228|ffff87|\#ffff87) F=$F\;228 ;;
            229|ffffaf|\#ffffaf) F=$F\;229 ;;
            230|ffffd7|\#ffffd7) F=$F\;230 ;;
            231|ffffff|\#ffffff) F=$F\;231 ;;
            232|080808|\#080808) F=$F\;232 ;;
            233|121212|\#121212) F=$F\;233 ;;
            234|1c1c1c|\#1c1c1c) F=$F\;234 ;;
            235|262626|\#262626) F=$F\;235 ;;
            236|303030|\#303030) F=$F\;236 ;;
            237|3a3a3a|\#3a3a3a) F=$F\;237 ;;
            238|444444|\#444444) F=$F\;238 ;;
            239|4e4e4e|\#4e4e4e) F=$F\;239 ;;
            240|585858|\#585858) F=$F\;240 ;;
            241|626262|\#626262) F=$F\;241 ;;
            242|6c6c6c|\#6c6c6c) F=$F\;242 ;;
            243|767676|\#767676) F=$F\;243 ;;
            244|808080|\#808080) F=$F\;244 ;;
            245|8a8a8a|\#8a8a8a) F=$F\;245 ;;
            246|949494|\#949494) F=$F\;246 ;;
            247|9e9e9e|\#9e9e9e) F=$F\;247 ;;
            248|a8a8a8|\#a8a8a8) F=$F\;248 ;;
            249|b2b2b2|\#b2b2b2) F=$F\;249 ;;
            250|bcbcbc|\#bcbcbc) F=$F\;250 ;;
            251|c6c6c6|\#c6c6c6) F=$F\;251 ;;
            252|d0d0d0|\#d0d0d0) F=$F\;252 ;;
            253|dadada|\#dadada) F=$F\;253 ;;
            254|e4e4e4|\#e4e4e4) F=$F\;254 ;;
            255|eeeeee|\#eeeeee) F=$F\;255 ;;
          esac
          shift
        ;;

        # Background extended
        oik|onIntenseBlack) F=$F\;100 ;;
        oir|onIntenseRed) F=$F\;101 ;;
        oig|onIntenseGreen) F=$F\;102 ;;
        oiy|onIntenseYellow) F=$F\;103 ;;
        oib|onIntenseBlue) F=$F\;104 ;;
        oim|onIntenseMagenta) F=$F\;105 ;;
        oic|onIntenseCyan) F=$F\;106 ;;
        oiw|onIntenseWhite) F=$F\;107 ;;

        # Style
        B|bold) F=$F\;1 ;;
        F|faint) F=$F\;2 ;;
        I|italic) F=$F\;3 ;;
        U|underline) F=$F\;4 ;;
        K|slowBlink) F=$F\;5 ;;
        KK|rapidBlink) F=$F\;6 ;;
        R|reverse) F=$F\;7 ;;
        H|hidden) F=$F\;8 ;;
        S|strike) F=$F\;9 ;;

        # Reset style
        ra|RA|reset|resetAll) F=$F\;0 ;;
        rb|RB|resetBold) F=$F\;21 ;;
        rf|RD|resetFaint) F=$F\;22 ;;
        ri|RI|resetItalic) F=$F\;23 ;;
        ru|RU|resetUnderline) F=$F\;24 ;;
        rk|RK|resetBlink) F=$F\;25 ;;
        rr|RR|resetReverse) F=$F\;27 ;;
        rh|RH|resetHidden) F=$F\;28 ;;
        rs|RS|resetStrike) F=$F\;29 ;;

        # Font
        fd|fontDefault) F=$F\;10 ;;
        fa1|fontAlternate1) F=$F\;11 ;;
        fa2|fontAlternate2) F=$F\;12 ;;
        fa3|fontAlternate3) F=$F\;13 ;;
        fa4|fontAlternate4) F=$F\;14 ;;
        fa5|fontAlternate5) F=$F\;15 ;;
        fa6|fontAlternate6) F=$F\;16 ;;
        fa7|fontAlternate7) F=$F\;17 ;;
        fa8|fontAlternate8) F=$F\;18 ;;
        fa9|fontAlternate9) F=$F\;19 ;;
        ffk|fontFraktur) F=$F\;20 ;;
        ffd|fontFramed) F=$F\;51 ;;
        fe|fontEncircled) F=$F\;52 ;;
        fo|fontOverlined) F=$F\;53 ;;
        rfe|resetFontEncircled) F=$F\;54 ;;
        rfo|resetFontOverlined) F=$F\;55 ;;

        # Ideograms
        idu|ideogramUnderline) F=$F\;60 ;;
        iddu|ideogramDoubleUnderline) F=$F\;61 ;;
        ido|ideogramOverline) F=$F\;62 ;;
        iddo|ideogramDoubleOverline) F=$F\;63 ;;
        ids|ideogramStress) F=$F\;64 ;;
        idr|resetIdeogramAttributes) F=$F\;65 ;;

        # Extra
        dr|dryrun) E='' ;;
      esac
      shift
    done
    # F="${F#;}"
    echo -n${E} "${ESC}${F}m"
  }
else
  colors() { return 1; }
fi