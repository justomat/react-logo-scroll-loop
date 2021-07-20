open Belt

let logos =
  Array.range(1, 7)
  ->Array.map(Int.toString)
  ->Array.map(i => `https://s3-us-west-2.amazonaws.com/s.cdpn.io/557257/${i}.png`)

let style = ReactDOM.Style.make(~display="flex", ~background="#e3e3e3", ~height="100vh", ())

@react.component
let make = () => {
  <div style>
    <Slider height="100" width="250">
      {logos->Array.map(src => <Slider.Image src />)->React.array}
    </Slider>
  </div>
}
