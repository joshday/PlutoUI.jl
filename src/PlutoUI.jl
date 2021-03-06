module PlutoUI

import Base: show, get
import Markdown: htmlesc, withtag

const PKG_ROOT_DIR = normpath(joinpath(@__DIR__, ".."))

include("./Builtins.jl")
include("./Clock.jl")
include("./Resource.jl")
include("./Terminal.jl")
include("./TableOfContents.jl")
include("./RangeSlider.jl")
include("./DisplayTricks.jl")

module ScrubbableNotebook
    include("./Scrubbable.jl")
end
import .ScrubbableNotebook: Scrubbable
export Scrubbable

end
