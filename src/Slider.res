open Belt

let style = ReactDOM.Style.make

%%raw(`import './Slider.scss';`)

module Gradient = {
  type props = {"style": ReactDOM.Style.t}
  @obj external makeProps: (~style: ReactDOM.Style.t, unit) => props = ""
  @module("./Gradient") external make: props => React.element = "Gradient"
}

@react.component
let make = (~children, ~width, ~height, ~duration=10) => {
  <div
    style={style(
      ~background="white",
      ~boxShadow="0 10px 20px -5px rgba(0, 0, 0, 0.125)",
      ~margin="auto",
      ~overflow="hidden",
      ~position="relative",
      ~height,
      (),
    )}>
    <Gradient style={style(~right="0", ~top="0", ~transform="rotateZ(180deg)", ())} />
    <div
      style={style(
        ~display="flex",
        ~animation=`scroll ${duration->Int.toString}s linear infinite`,
        (),
      )}>
      {
        open React
        
        [children, children]
        ->Array.map(Children.toArray)
        ->Array.reduce([], Array.concat)
        ->Array.map(child =>
          child->cloneElement({
            "width": width,
            "height": height,
          })
        )
        ->React.array
      }
    </div>
    <Gradient style={style(~left="0", ~top="0", ())} />
  </div>
}

module Image = {
  @react.component
  let make = (~src, ~width="", ~height="") => <img src width height alt="" />
}
