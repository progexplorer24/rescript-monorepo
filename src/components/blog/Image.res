@react.component
let make = (
  ~src: string,
  ~alt: string,
  ~width: option<int>=?,
  ~height: option<int>=?,
  ~layout: option<string>=?,
  ~objectFit: option<string>=?,
  ~className="",
) =>
  <Next.Image src alt ?width ?height ?layout ?objectFit className={Tailwind.merge(. [className])} />
